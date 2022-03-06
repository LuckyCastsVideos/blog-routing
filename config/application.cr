class Application
  Habitat.create do
    setting name : String
    setting support_email : Carbon::Address
  end
end

Application.configure do |settings|
  settings.name = "Blog Routing"
  settings.support_email = Carbon::Address.new(settings.name, "no-reply@blog_routing.com")
end
