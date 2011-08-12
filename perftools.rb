require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'perftools'
require 'rack/perftools_profiler'

configure do
  use ::Rack::PerftoolsProfiler, :default_printer => 'gif'
end

get '/' do
  5_000_000.times{ 1+2+3+4+5 }
  "Hello world!"
end
