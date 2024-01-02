/* 

Cache Directives


*/

// Caching Directives and their definitions

// no-cache
// validates a cached response with the origin server before using it, even if the cache is fresh.

// must-revalidate
// validates a stale response with the origin server before using it.

// stale-while-revalidate
// serves stale content while validating the cached response with the origin server.

// no-store
// doesn't store any part of the response or request.

// private
// prevents caching on shred caches.

// ####

// Etag

// no-store: private data
