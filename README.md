<h1 align="left">The Room Inspector 1.0</h1>
<p align="right">Get data about a different room.</p>
<p align="center"><a href="">Download .yymps</a></p>

&nbsp;

A tiny 'run-once' object that visits every room and produces a JSON file filled with room data you can add to your project.

Since GameMaker Studio is currently short of functions such as `room_get_width()` or `room_get_height()`, it can be difficult to get information about a room you are not currently in. This inspector will collect that data for you, as well as anything else about a room that you specify.

Handy for projects that make extensive use of GameMaker's Room Editor.

#Example Project

The project folder includes an example for a 'Map Viewer', which shows an in-game visual of every room in the game, showing the size, name, and location of objects placed within the room. 

<p align="center"><img src="https://raw.githubusercontent.com/heygleeson/TheRoomInspector/master/example.png" style="display:block; margin:auto;"></p>

&nbsp;

Included in this tool are the scripts `snap_to_json` and `snap_from_json` from Juju Adam's <a href="">SNAP</a>. Thanks Juju ♥