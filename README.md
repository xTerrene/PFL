# Welcome to PFL

PFL, meaning **P**layer **F**rom **L**ist. PFL is a simple and easy module script that allows for the easy grabbing of a player from a newlined list of player names.

---
    local var = loadstring(game:HttpGet("https://raw.githubusercontent.com/EarthToAccess/PFL/main/playerfromlist.lua"))()
---

## What is PFL?

Earth needed an easy way to get a plaintext list of players and return whether someone in that list is in the server. Thus, PFL was born. No more do you need to memorize various `for` loops and constantly type the same thing out. Just use this module script, and you're well on your way!

## How do I use PFL?

<sup>This section is not comprehensive and may be updated as time goes on, with more enhanced features and functionality.</sup>

PFL was designed to be as simple and easy as possible. As such, all you need are two things; to know how you're getting your list, and to know what you what as an output.

Once you know both of those things, add the above loadstring variable into your script and use `var:findp()` to get to work.

### Arguments

#### The string input

Your first argument will be the list of players, which will be separated by newlines<sup>[as of 1.1]</sup>; for example:

    0xEARTH
    TestDummy123
    LuaIsGOAT

Read and/or get this file however you have the ability to. For executors, a simple Pastebin using a second loadstring can suffice, for example:

    local players = loadstring(game:HttpGet(https://raw.githubusercontent.com/EarthToAccess/PFL/main/examplelist.lua))()

    var:findp(players,3)

It's best to use your executor's `readfile` equivalent, however, as it's more reliable than using a loadstring in any case:

    var:findp(readfile("players.txt"),3)

#### The data type

Your second argument is the output you want; what do you want PFL to return?

1) **String**  
    Now, why you'd want to get a list of strings only to get returned a list of strings is beyond us, but we've decided to make it possible anyway. It could potentially be used to output in one easy string all the found players, maybe to show friends in a server.
2) **Table**  
    Returns a table of all the found players. Very useful for iterating through found players, if you expect to have multiple at once.
3) **Single Player**  
    Arguably the most useful of the three, this returns a string with the first player it found's name. Useful if you expect only to find one, or if you don't care what it finds so long as it finds *something*.

Keep in mind that anything else other than one, two, or three will default to three. This does technically mean that `var:findp(list,3)` and `var:findp(list)` are the same.

### Return values

What PFL returns is entirely dependant on the argument you supplied (see above). PFL will *not* output anything to the console; to check if you've successfully found something by outputting it, wrap it in a `print` statement:

    print(var:findp(list))

Otherwise, PFL can be used in variables itself or as arguments to other functions without hassle or workaround.

## Disclaimer

Due to the nature of how scripting itself works, neither Earth nor the PFL team will accept any responsibility should you find yourself banned from any Roblox game or Roblox itself. ***User discretion is advised.***

## Changelog

<sup>Entries in this changelog are denoted by using asterisks (*) for changes, greater-thans (>) for notes, pluses (+) for additions, and dashes (-) for removals.</sup>

### Latest - v1.1

- [\*] Fixed an issue with outputting a list of strings in which it never got your input list to start.  

### Previous

#### v1.0

- [\+] Welcome to PFL!
