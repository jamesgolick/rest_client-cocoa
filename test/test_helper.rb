require 'test/unit'
require 'rubygems'
require 'context'
require 'zebra'
require 'osx/cocoa'
require 'open-uri'

OSX.require_framework File.expand_path(File.dirname(__FILE__) + "/../build/Release/RestClient.framework")
OSX::ns_import :RestClient

class Test::Unit::TestCase
  before(:all) do
    `xcodebuild`
  end
end
