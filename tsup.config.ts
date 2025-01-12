import {defineConfig} from "tsup";

export default defineConfig({
    entry: ['src/index.js'],
    format: ['esm', 'cjs'],
    outDir: 'dist',
    target: ['es2022', 'node18'],
    dts: true,
    clean: true,
    minify: true,
    sourcemap: true
})