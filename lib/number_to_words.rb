class String
  def num_to_words
    ones_array = ["one","two","three","four"]
    tens_array = ["ten", "eleven", "twelve", "thirteen"]
    positions = []
    array = self.split("")
    length = array.length
    array.each do |i|
      if length <= 1
        position = i + "ones"
      elsif length <= 2
        position = i + "tens"
      elsif length <= 3
        position = i + "hundreds"
      elsif length <= 4
        position = array[0] + "thousand" + array[1] + "hundred" + array[2] + array[3]
      end
      return position
    end
  end

  def replace_words
    ones = ["one","two","three","four"]
    tens = ["ten", "eleven", "twelve", "thirteen"]
    new_array = []
    array = self.split("")
    array.each do |i|
      if i == "1"
        number = "one"
      elsif i =="2"
        number = "ten"
      end
      new_array.push(number)
    end
    new_array
  end
end
