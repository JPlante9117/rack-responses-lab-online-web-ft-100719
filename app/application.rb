class Application

    def call(env)
        resp = Rack::Response.new
        hour = Time.now.hour
        if hour < 12
            resp.write "Good Morning!"
        elsif hour >= 12
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end