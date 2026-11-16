import { resolve } from 'path';
import { defineConfig } from 'vite';

export default defineConfig({
  root: '.',
  publicDir: 'static',
  build: {
    outDir: 'dist',
    emptyOutDir: true,
    rollupOptions: {
      input: {
        main: resolve(__dirname, 'index.html'),
        customer: resolve(__dirname, 'fleet-mission-reports/index.html'),
        owner: resolve(__dirname, 'vehicle_mission_report-4.html'),
        login: resolve(__dirname, 'login.html')
      }
    }
  },
  server: {
    port: 3000,
    open: true
  }
});
