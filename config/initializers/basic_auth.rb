Rails.application.config.middleware.insert_after(::Rack::Runtime, "::Rack::Auth::Basic") do |username, password|
  username == Figaro.env.basic_auth_username && password == Figaro.env.basi_auth_password
end
