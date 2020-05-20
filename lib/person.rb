class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
  :weight, :handed, :complexion, :t_shirt_size,
  :wrist_size, :glove_size, :pant_length, :pant_width
  #your code here

  def initialize(hash_of_args)
    # we have to iterate over the hash in order to apply the send method to each of them
    # apply the send method to the instance that is calling this initialize method
    # the first argument from send is a method that you want to apply, and the second argument is the value you want to assign
    hash_of_args.each { |key, value| self.send(("#{key}="), value) }
  end
end
