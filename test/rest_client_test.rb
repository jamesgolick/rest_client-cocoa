require File.dirname(__FILE__) + '/test_helper'

class RestClientTest < Test::Unit::TestCase
  describe "RestClient getWithString" do
    setup do
      url            = "http://github.com/api/v1/xml/caged/gitnub/commits/master"
      @expected_body = URI.parse(url).read
      @body          = ""
      @finished      = false
      delegate       = Object.new do
        define_method(:didFinishLoading) do |body|
          puts 'asd'
          @body << body
          @finished = true
        end
      end

      while !@finished do
      end

      OSX::RestClient.alloc.initWithString_delegate(url, delegate)
    end

    expect { assert_equal @expected_body, @body }
  end
end

