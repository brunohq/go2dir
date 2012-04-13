require 'json'
require 'go2dir/version'
require 'go2dir/storage'

module Go2dir
  class << self

	  def execute(*args)
	  	return help if args.empty?
	  	return change_dir(args[0]) if args.length == 1
	  	return add_shortcut(args[0], args[1]) if args.length == 2
	  end

	  def change_dir(shortcut)
	  	shortcuts = Go2dir::Storage.load
	  	puts shortcuts[shortcut]
	  end

	  def add_shortcut(shortcut, path)
	  	shortcuts = Go2dir::Storage.load
	  	shortcuts[shortcut] = path
	    Go2dir::Storage.save(shortcuts)
	  end

	end
end
