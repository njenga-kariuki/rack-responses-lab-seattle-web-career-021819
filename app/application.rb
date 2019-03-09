class Application

  def call(env)
    resp = Rack::Response.new

    # time_check = Time.new(12,0,0)
    current_time = Time.now
    if current_time.hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"

    end
    resp.finish
  end
end
