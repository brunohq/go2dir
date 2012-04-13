module Go2dir
  STORAGE_FILE = "#{ENV['HOME']}/.go2dir"

  # Public: the path to the Json file used by boom.
  #
  # Returns the String path of boom's Json representation.
  def storage_file
    STORAGE_FILE
  end
end