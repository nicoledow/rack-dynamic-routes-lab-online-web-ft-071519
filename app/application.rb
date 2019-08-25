class Application 
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new
    
    if req.path.match(/items/)
      if 
    else
      resp.write "Item not found"
      resp.status = 404
    end
    
  end
  
  
end