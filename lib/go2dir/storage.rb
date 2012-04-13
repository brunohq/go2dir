module Go2dir::Storage
  class << self
    STORAGE_FILE = "#{ENV['HOME']}/.go2dir"

    def storage_file
      STORAGE_FILE
    end

    def save(json)
  	  File.open(storage_file,"w") { |f| f << json.to_json } 
    end

    def load
      json = File.read(storage_file)
      JSON.parse(json)
    end
  end
end