require "echo_hello_world_gem/version"

module EchoHelloWorldGem
  class Error < StandardError; end
  
  class << self
    def hello_world
      p "hello!!!!!!!!!!!!!!!!!"
    end
  end
end
