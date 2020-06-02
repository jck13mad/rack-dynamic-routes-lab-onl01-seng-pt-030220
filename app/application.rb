class Application 
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last 
      item = @@items.find { |s| s.name == item.name }
      
      unless item == nil 
        resp.write item.price
      else
        resp.write 400
        resp.write "Item not found"
      end
    else
      resp.status 400
      resp.write 
  
  
  
  
  
  
end