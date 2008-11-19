module Jekyll
  
  class Server
    def start(dir)
      dir_handler = Mongrel::DirHandler.new(File.dirname(__FILE__))
      h = Mongrel::HttpServer.new('0.0.0.0', 4000)
      h.register("/", Mongrel::DirHandler.new(dir))
      h.run.join
    end 
  end
  
end