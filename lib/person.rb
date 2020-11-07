class Person

  def initialize(attributes) # initializes an instance with an unspecified cariety of attributes
    attributes.each do |key, value| # we iterate over each key/value pair in the attributes hash
      # name of the key becomes the name of a setter/writer method and the value associated with the key 
        # is the name of the value you want to pass to that method
      
      self.class.attr_accessor(key)
      # we need to remember that attr_accessor is a class method just like attr_reader and attr_writer
      # That parsed key is something like name, age, etc. that would normally be :name, :age

      self.send(("#{key}="), value)
      # The ruby .send method then calls the method name that is the key’s name, with an argument of the value. 
        # In other words: self.send(key=, value) 
        # Is the same as: instance_of_user.key = value 
    end
  end
     
end


  # The .send method is just another way of calling a method on an object.
  # It allows us to abstract away the specific method call: 
    # sophie = User.new
    # sophie.send("#{method_name}=", value) 
  # This is exactly what's happening in our initialize method in the example above, 
    # where self refers to the User instance that is being initialized at that point in time.

  