# Go2dir

Are you trying to become a bash ninja? Then, stop typing over and over again the same paths to the same directories! 
go2dir lets you create shortcuts for your most used paths and change lightning fast your current directory. 

## Installation

*Important:* when calling this gem from your cli, it executes in a different process, so running it alone won't take any effect on your current location. For this to work, you need to let your bash evaluate the output commands. I wrote the code myself and use it everyday, but I advise you to check out the code first and make sure you're comfortable with this. 

After that, you can install it by running:

    $ gem install go2dir

next you *must* add this function to your .bashrc:

	function gt() { eval $(go2dir $1 $2); }

and reload your bash. 
Note: you can change <gt> for whatever command you want to use.

## Usage

To add or edit a shortcut:

	$ gt <shortcut> <path>

To use shortcut:

	$ gt <shortcut>

## Example

	$ gt projects ~/Projects/
	Shorctcut saved sucessfully!
	$ gt projects
	$ pwd
	/Users/brunohq/Projects/
	$ gt hidden-porn /Users/brunohq/really/long/path/to/your/xxx/video/collection/muhahah/
	Shorctcut saved sucessfully!
	$ gt hidden-porn
	$ pwd
	/Users/brunohq/really/long/path/to/your/xxx/video/collection/muhahah/

## Suggestions
This gem built for my personal use only, but if you feel it could be improved or if you have any suggestions, holla at me. 

With love, 
[@brunohq](http://twitter.com/brunohq)