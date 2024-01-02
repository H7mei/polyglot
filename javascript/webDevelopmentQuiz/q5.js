/* 

Resource Hints


*/

// dns-prefetch
// <link rel="dns-prefetch" href="//example.com">
// "perform domain name resolution (DNS) for the specified domain name in the background, before the user clicks on a link"

// preconnect
// <link rel="preconnect" href="https://example.com">
// "proactively perform DNS lookups, TCP handshakes, TLS negotiations, and so on, so that the network connection is already established by the time it is actually needed"

// prefetch
// <link rel="prefetch" href="https://example.com" as="image">
// "download resources that likely will be needed in the future, such as the next page the user will visit"

// preload
// <link rel="preload" href="https://example.com">
// "prioritize fetching of critical resources needed for the current navigation, such as the main CSS file for the page"

// prerender
// <link rel="prerender" href="https://example.com">
// "proactively render the specified page in the background, such that the user can navigate to this page almost instantly"

// ####

/* 

Network

DNS -> TCP -> TLS -> Request -> Response

*/
