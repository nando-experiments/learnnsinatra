$:.unshift File.expand_path('../', __FILE__)
require 'rubygems'
require 'sinatra'
require './app/init'
require './config/sass'

run SinatraTests::App
