class Application 
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      requested_item = req.path.split("/items/").last
      if Item.all.find {|i| i.name == requested_item}
        obj = Item.all.find {|i| i.name == requested_item}
        resp.write "#{obj.price}"
      else
        resp.write "We don't have that item"
      end
    else
      resp.status = 404
      resp.write ""
    end
    
  end
  
  
end