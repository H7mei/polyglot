// caching the app shell
self.addEventListener('install', async (event) => {
    const assets = [
        '/',
        'styles.css',
        '/scripts/API.js',
        '/scripts/app.js',
        '/scripts/Menu.js',
        '/scripts/Order.js',
        '/scripts/Router.js',
        '/images/logo.svg',
        '/images/icons/icon.png',
        'https://cdn.jsdelivr.net/npm/idb@7/build/umd.js',
        'https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;700&display=swap',
        'https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0',
        'https://fonts.gstatic.com/s/opensans/v34/memvYaGs126MiZpBA-UvWbX2vVnXBbObj2OVTS-mu0SC55I.woff2',
        'https://fonts.gstatic.com/s/materialsymbolsoutlined/v68/kJF1BvYX7BgnkSrUwT8OhrdQw4oELdPIeeII9v6oDMzByHX9rA6RzaxHMPdY43zj-jCxv3fzvRNU22ZXGJpEpjC_1n-q_4MrImHCIJIZrDCvHOejbd5zrDAt.woff2'
    ]
    const cache = await caches.open('cm-assets')
    cache.addAll(assets)
})

const type = 'network' // 'cache' or 'network

if (type === 'cache') {
    // CACHE FIRST
    self.addEventListener('fetch', (event) => {
        event.respondWith(
            (async () => {
                try {
                    const cachedResponse = await caches.match(event.request)

                    if (cachedResponse) {
                        return cachedResponse
                    } else {
                        // get all responses from all caches
                        const response = await fetch(event.request)
                        const cache = await caches.open('cm-response')
                        cache.put(event.request, response.clone())
                        return response
                    }
                } catch (error) {
                    // Handle fetch errors here
                    console.error('Fetch error:', error)
                }
            })()
        )
    })
} else if (type === 'network') {
    // NETWORK FIRST
    self.addEventListener('fetch', async (event) => {
        event.respondWith(
            (async () => {
                try {
                    const fetchResponse = await fetch(event.request)
                    // update cache
                    // const cache = await caches.open('cm-response')
                    // cache.put(event.request, fetchResponse.clone())
                    return fetchResponse
                } catch (e) {
                    const cachedResponse = await caches.match(event.request)
                    if (cachedResponse) return cachedResponse
                }
            })()
        )
    })
}
