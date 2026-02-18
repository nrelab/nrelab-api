import express from 'express';
const app = express();
const PORT = 3000;

app.get('/health', (_req, res) => {
  res.json({ status: 'ok', service: 'nrelab-api-ts' });
});

app.listen(PORT, () => console.log(`🚀 nrelab-api-ts running on ${PORT}`));
