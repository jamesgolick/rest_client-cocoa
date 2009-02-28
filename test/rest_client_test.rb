require File.dirname(__FILE__) + '/test_helper'

class RestClientTest < Test::Unit::TestCase
  describe "RestClient getWithString" do
    setup do
      url            = "http://github.com/api/v1/xml/caged/gitnub/commits/master"
      @expected_body = URI.parse(url).read
      @body          = ""
      @finished      = false

      OSX::RestClient.alloc.initWithString_delegate(url, delegate)
    end

    expect { assert_equal @expected_body, @body }
  end

  context "methodWithNoReturn" do
    it "should not return stuff" do
      assert_nil OSX::RestClient.methodWithNoReturn
    end
  end
end

