require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'rack/perftools_profiler'

configure :profiling do
  use ::Rack::PerftoolsProfiler, :default_printer => 'gif'
end

get '/' do

  "Hello world!"
  
end

