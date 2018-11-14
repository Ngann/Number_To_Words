class Fixnum
  def num_length()
    positions = []
    length = Math.log10(self).to_i+1

    if length == 1
      position = "ones"
    elsif length == 2
      position = "tens"
    elsif length == 3
      position = "hundreds"
    elsif length == 4
      position = "thousands"
    end
    positions.push(position)
  end
end
#   def num_to_string()
#     num_array = self.
#   # def num_to_array()
#   #   num_array = Array.new(self) {|i| i+1}
#   #   num_array.each do |number|
#   #     if position
#   #
#   # end
# end

class String
  def num_to_words
    ones = ["one","two","three","four"]
    tens = ["ten", "eleven", "twelve", "thirteen"]
    positions = []
    array = self.split("")
    length = array.length
    array.each do |i|
      if length == 1
        position = "ones"
      elsif length == 2
        position = "tens"
      elsif length == 3
        "hundreds"
      elsif length == 4
        position = "thousands"
      end
      positions.push([i])
    end
    positions
  end

  def replace_words
    ones = ["one","two","three","four"]
    tens = ["ten", "eleven", "twelve", "thirteen"]
    new_array = []
    array = self.split("")
    array.each do |i|
      if i == "1"
        i = ones(i)
      elsif i =="2"
        i = tens(i)
      end
      new_array.push(i)
    end
    new_array
  end
end
