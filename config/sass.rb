require 'sass/plugin/rack'

Sass::Plugin.options[:css_location] = 'public/stylesheets/'
Sass::Plugin.options[:template_location] = 'public/sass/'

if (ENV['RACK_ENV'] == 'development')
  Sass::Plugin.options[:line_comments] = true
  Sass::Plugin.options[:style] = :expanded # :expanded :compressed :compact
else
  Sass::Plugin.options[:style] = :compressed # :expanded :compressed :compact
end

use Sass::Plugin::Rack
