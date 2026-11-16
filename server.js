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
  console.log(`\n🚀 BVMC Report Server running at http://localhost:${PORT}`);
  console.log(`   - Customer Portal: http://localhost:${PORT}/fleet-mission-reports/`);
  console.log(`   - Owner Dashboard: http://localhost:${PORT}/vehicle_mission_report-4.html`);
  console.log(`   - Login:           http://localhost:${PORT}/login.html\n`);
});
