const CACHE_NAME = 'damas-cache-v1';
const ASSETS = [
  './VersãoContramaquinav2.html',
  './manifest.json',
  './icon.png.png',
  './audio/captura.mp3',
  './audio/click.mp3',
  './audio/distribuicao.mp3',
  './audio/drama.mp3',
  './audio/movimento.mp3',
  './audio/movimento2.mp3',
  './audio/vitoria.mp3',
  './image/Dama11.jpg',
  './image/Dama11.png'
];

self.addEventListener('install', (event) => {
  event.waitUntil(
    caches.open(CACHE_NAME).then((cache) => cache.addAll(ASSETS)).catch(() => {})
  );
});

self.addEventListener('activate', (event) => {
  event.waitUntil(
    caches.keys().then((keys) => Promise.all(keys.map((k) => (k === CACHE_NAME ? null : caches.delete(k)))))
  );
});

self.addEventListener('fetch', (event) => {
  const { request } = event;
  // Network-first para HTML; cache-first para estáticos
  if (request.mode === 'navigate' || request.headers.get('accept')?.includes('text/html')) {
    event.respondWith(
      fetch(request).then((resp) => {
        const copy = resp.clone();
        caches.open(CACHE_NAME).then((cache) => cache.put(request, copy));
        return resp;
      }).catch(() => caches.match(request))
    );
    return;
  }
  event.respondWith(
    caches.match(request).then((cached) => cached || fetch(request).then((resp) => {
      const copy = resp.clone();
      caches.open(CACHE_NAME).then((cache) => cache.put(request, copy));
      return resp;
    }).catch(() => cached))
  );
});


