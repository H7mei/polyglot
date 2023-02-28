// Abstract Operations (aka coercions)

// ToPrimitive()

// ToString(x)
/* 
null = "null"
undefined = "undefined"
true = "true"
false = "false"
3.0922 = "3.0922"
0 = "0"
-0 = "0"

[] = ""
[1,2,3] = "1,2,3"
[null.undefined] = ","
[[],[],[]] = ",,"
[,,,,] = ",,,"

{} = "[object Object]"
{a:2} = "[object Object]"
{toString:function(){return "hi"}} = "hi"
*/

// ToNumber(x)
/* 
"" = 0
"0" = 0
"-0" = -0
" 009" = 9
"3.922" = 3.922
"0." = 0
".0" = 0
"." = NaN
"0xaf" = 175

false = 0
true = 1
null = 0
undefined = NaN

[""] = 0
["0"] = 0
["-0"] = -0
[null] = 0
[undefined] = 0
[1,2,3] = NaN
[[[[]]]] = 0

{} = NaN
{valueOf(){return 3}} = 3
*/

// ToBoolean(x)
/* 
Falsy
0, -0, null, "", undefined, NaN, false,

Truthy
"he", 32, true, [1.3], {a:1}, function(){}, [], {}
*/
