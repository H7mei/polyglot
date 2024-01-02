/* 

asyc & defer Execution Order


*/

// The best order to use is:

'<script async src="async2.js"></script>'; // loads in 50ms

'<script async defer="asyncdefer1.js"></script>'; // loads in 60ms

'<script async src="async1.js"></script>'; // loads in 70ms

'<script defer src="defer1.js"></script>'; // loads in 80ms

'<script defer src="defer2.js"></script>'; // loads in 90ms

// ####

'<script src="..."></script>'; // basic script tag

/* 

Network:
           -> Fetch Script

Main Thread:
Parse HTML ->           -> Execute script -> Parse HTML


this is blocking time the, they wait for the script to be fetched
 and executed before parsing the HTML below it.

*/

'<script async src="..."></script>'; // async script tag

/*

Network:
            -> Fetch Script

Main Thread:
Parse HTML -> Parse HTML -> Execute script

the script is fetched asynchronously, so the browser can continue parsing the HTML

*/

'<script defer src="..."></script>'; // defer script tag

/*

Network:
    -> Fetch Script

Main Thread:
Parse HTML -> Execute script

the script is fetched asynchronously, the script is executed after the HTML is parsed
  
  */
