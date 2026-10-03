import { Hono } from 'hono';
import type { APIRoute } from 'astro';

const app = new Hono<{ Bindings: { DB: D1Database } }>().basePath('/api');

app.get('/products', async (c) => {
  const db = c.env.DB;
  const { results } = await db.prepare('SELECT * FROM products').all();
  return c.json(results);
});

// Astro delega todas las peticiones a /api/* hacia Hono
export const ALL: APIRoute = ({ request, locals }) => {
  const env = (locals as any).runtime.env;
  return app.fetch(request, env);
};