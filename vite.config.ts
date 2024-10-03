import react from '@vitejs/plugin-react-swc'
import autoprefixer from "autoprefixer";
import path from "path";
import { defineConfig } from 'vite'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      "@scssprefix": path.resolve(__dirname, "src", "shared", "scss", "prefix"),
    }
  },
  css: {
    preprocessorOptions: {
      scss: {
        additionalData: `@use "@scssprefix" as *;\n`,
      }
    },
    postcss: {
      plugins: [autoprefixer],
    }
  }
});