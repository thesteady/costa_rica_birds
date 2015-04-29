Rails.application.config.middleware.insert_after(::Rack::Runtime, "::Rack::Auth::Basic") do |username, password|
  username == ENV['USERNAME'] && password == ENV['PASSWORD']
end
