###
# Compass
###
activate :livereload
activate :directory_indexes
# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
compass_config do |config|
  config.output_style = :compressed
end



###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
  activate :deploy do |deploy|
    deploy.method = :rsync
    deploy.user = "admin"
    deploy.host = "customs.frogbeats.com"
    deploy.path = "/var/www/davidannez.com/public"
    deploy.after_build = true
  end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :fonts_dir, 'fonts'

set :images_dir, 'images'

activate :blog do |blog|
  blog.layout = "blog"
end

set :markdown, :layout_engine => :haml
set :markdown_engine, :redcarpet

# Build-specific configuration
configure :build do

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end