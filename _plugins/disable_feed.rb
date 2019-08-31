Jekyll::Hooks.register :site, :after_init do |site|
  site.generators.reject!{ |g| JekyllFeed::Generator === g }
end
