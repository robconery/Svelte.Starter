import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
	plugins: [sveltekit()],
	server: {
		port: 4444,
        proxy: {
            '/api': 'http://localhost:8000',
        },		
	}
});
