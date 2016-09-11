$:.unshift File.expand_path('../', __FILE__)
require 'rubygems'
require 'sinatra'
require './app/init'

require 'sass/plugin/rack'
Sass::Plugin.options[:style] = :expanded # :expanded :compressed :compact
Sass::Plugin.options[:css_location] = 'public/stylesheets/'
Sass::Plugin.options[:template_location] = 'public/sass/'
Sass::Plugin.options[:debug_info] = false
use Sass::Plugin::Rack

run SinatraTests::App
