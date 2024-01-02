/* 

Rendering Pipeline & Compositing


*/

// True

/* 

1. The composting process happens on the compositor thread.

*/

// False

/* 

1. The render tree contains all elements from the DOM and CSSOM combined.
2. Compositing is the process of separating layers based on z-index. which are then combined to form the final image displayed on the screen.
3. The layout process is assigns colors and images to the visual elements of the render tree.
4. Elements that are not visible on the page, for example display: hidden, are not included in the render tree.

*/

// #####

/* 

the first render is the DOM after that the CSSOM is added to the DOM to create the render tree

Render Tree -> Layout -> Paint -> Composite

*/
