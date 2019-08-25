class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      requested_item = req.path.split("/items/").last
      
      if Item.all.detect {|i| i.name == requested_item}
        item = Item.all.detect {|i| i.name == requested_item}
      
    end
    
    
    
  end
  
end