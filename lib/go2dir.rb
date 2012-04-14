require 'json'
require 'go2dir/version'
require 'go2dir/storage'

module Go2dir
  class << self

	  def execute(*args)
	  	return help if args.empty?
	  	return get_path(args[0]) if args.length == 1
	  	return set_shortcut(args[0], args[1]) if args.length == 2
	  end

	  def get_path(shortcut)
	  	shortcuts = Go2dir::Storage.load
	  	if shortcuts.has_key?(shortcut)
	  		puts "cd #{shortcuts[shortcut]}"
	  	else
	  		puts "echo 'This shortcut is not defined!'"
	  	end
	  end

	  def set_shortcut(shortcut, path)
	  	shortcuts = Go2dir::Storage.load
	  	shortcuts[shortcut] = path
	    Go2dir::Storage.save(shortcuts)
	    puts "echo 'Shortcut saved sucessfully!'"
	  end

	  def help
      puts "echo 'To add or edit a shortcut:';"
			puts "echo '\ $ gt <shortcut> <path>';"
			puts "echo 'To use shortcut:';"
			puts "echo '\ $ gt <shortcut>';"
	  end

	end
end
