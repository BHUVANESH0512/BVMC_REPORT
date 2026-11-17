/**
 * BVMC Report — Local Dev Server
 * Zero dependencies, built with native Node.js http and fs modules.
 * Runs instantly without binary compilation or AppLocker restrictions.
 */

import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Automatically load .env if present
const envPath = path.join(__dirname, '.env');
if (fs.existsSync(envPath)) {
  const envContent = fs.readFileSync(envPath, 'utf8');
  for (const line of envContent.split(/\r?\n/)) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith('#')) continue;
    const match = trimmed.match(/^([\w.-]+)\s*=\s*(.*)?$/);
    if (match) {
      const key = match[1];
      let value = (match[2] || '').trim();
      if ((value.startsWith('"') && value.endsWith('"')) || (value.startsWith("'") && value.endsWith("'"))) {
        value = value.slice(1, -1);
      }
      process.env[key] = value;
    }
  }
}

const PORT = process.env.PORT || 3000;

const MIME_TYPES = {
  '.html': 'text/html; charset=utf-8',
  '.js': 'application/javascript; charset=utf-8',
  '.mjs': 'application/javascript; charset=utf-8',
  '.css': 'text/css; charset=utf-8',
  '.json': 'application/json; charset=utf-8',
  '.png': 'image/png',
  '.jpg': 'image/jpeg',
  '.jpeg': 'image/jpeg',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon',
  '.sql': 'text/plain; charset=utf-8'
};

const server = http.createServer((req, res) => {
  // Normalize URL
  const parsedUrl = new URL(req.url, `http://${req.headers.host || 'localhost'}`);
  let pathname = decodeURIComponent(parsedUrl.pathname);

  // Serve dynamic /env.js for seamless local development
  if (pathname === '/env.js') {
    res.writeHead(200, {
      'Content-Type': 'application/javascript; charset=utf-8',
      'Cache-Control': 'no-cache'
    });
    const supabaseUrl = process.env.VITE_SUPABASE_URL || '';
    const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || '';
    res.end(`window.VITE_SUPABASE_URL = ${JSON.stringify(supabaseUrl)};\nwindow.VITE_SUPABASE_ANON_KEY = ${JSON.stringify(supabaseKey)};\n`);
    return;
  }

  // Friendly rewrites matching Vercel routing
  if (pathname === '/' || pathname === '/customer' || pathname === '/customer/') {
    pathname = '/fleet-mission-reports/index.html';
  } else if (pathname === '/owner' || pathname === '/admin' || pathname === '/builder') {
    pathname = '/vehicle_mission_report-4.html';
  } else if (pathname === '/login') {
    pathname = '/login.html';
  }

  // Resolve file path safely
  let filePath = path.join(__dirname, pathname);

  // If path is a directory, look for index.html
  if (fs.existsSync(filePath) && fs.statSync(filePath).isDirectory()) {
    filePath = path.join(filePath, 'index.html');
  }

  // Check if file exists
  if (!fs.existsSync(filePath) || fs.statSync(filePath).isDirectory()) {
    res.writeHead(404, { 'Content-Type': 'text/plain; charset=utf-8' });
    res.end(`404 Not Found: ${pathname}`);
    return;
  }

  const ext = path.extname(filePath).toLowerCase();
  const contentType = MIME_TYPES[ext] || 'application/octet-stream';

  res.writeHead(200, {
    'Content-Type': contentType,
    'Access-Control-Allow-Origin': '*',
    'Cache-Control': 'no-cache'
  });

  const stream = fs.createReadStream(filePath);
  stream.pipe(res);
});

server.listen(PORT, () => {
  console.log(`\n======================================================`);
  console.log(`🚀 BVMC Report Server running at http://localhost:${PORT}`);
  console.log(`======================================================`);
  console.log(`  🌐 Customer Portal: http://localhost:${PORT}/fleet-mission-reports/`);
  console.log(`  🛠️ Owner Dashboard: http://localhost:${PORT}/vehicle_mission_report-4.html`);
  console.log(`  🔐 Login Page:     http://localhost:${PORT}/login.html`);
  console.log(`------------------------------------------------------`);
  if (process.env.VITE_SUPABASE_URL && process.env.VITE_SUPABASE_URL !== 'https://your-project-ref.supabase.co') {
    console.log(`  ✓ Supabase Connected: ${process.env.VITE_SUPABASE_URL}`);
  } else {
    console.log(`  ⚠️ Supabase Not Connected: Using embedded local data.`);
    console.log(`     (Add VITE_SUPABASE_URL to .env to connect live Supabase)`);
  }
  console.log(`======================================================\n`);
});
