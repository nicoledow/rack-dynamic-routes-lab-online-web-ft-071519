class Application 
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new
    
    if req.path.match(/items/)
      requested_item = req.path.split("/items/").last
      if Item.all.find {|i| i.name == requested_item}
        obj = Item.all.find {|i| i.name == requested_item}
        resp.write "#{obj.price}"
      else
        resp.write "We don't have that item"
      end
    else
      resp.write "Item not found"
      resp.status = 404
    end
    
  end
  
  
end