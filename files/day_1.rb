class Object

  def self.metaclass
    class << self
      self
    end
  end

end


module App

  class << self
    attr_accessor :description
  end

end

class Person
end

def new_class
  Class.new(Person)
end

Awesome = new_class

def new_method(object)
  def object.hello
    "Hello from #{self.class.name} instance"
  end
end
