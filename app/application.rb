class Application

  def call(env)
    resp = Rack::Response.new
    #rack response goes in first...
num_1 = Kernel.rand(1..2)
num_2 = Kernel.rand(1..2)
num_3 = Kernel.rand(1..2)
    #followed by your variables...
    if num_1 ==num_2 && num_2 == num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
#then you insert your logic and text
    resp.finish
  end

end
