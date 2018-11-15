class String
  def num_to_words
    ones_array = ["one","two","three","four","five", "six", "seven", "eight", "nine"]
    tens_array = ["ten", "eleven", "twelve", "thirteen"]
    twenty_to_ninety = ["twenty", "thirty", "fourty","fifty","sixty","seventy", "eigthty", "ninety"]
    positions = []
    array = self.split("")
    length = array.length
    array.each do |number|
      if length <= 1
        number = number.to_i
        words = ones_array[number - 1]
      elsif (length <= 2) & (array[0] == "1")
        number = array[1].to_i
        words = tens_array[number]
      elsif (length <= 2) & (array[0] != "1")
        number_one = array[0].to_i
        number_two = array[1].to_i
        words = twenty_to_ninety[number_one-2] + ones_array[number_two - 1]
      elsif length <= 3
        number_one = array[0].to_i
        number_two = array[1].to_i
        number_three = array[3].to_i
        words = ones_array[number_one - 1] + "hundred" + twenty_to_ninety[number_one-2] + ones_array[number_one - 1]
      elsif length <= 4
        number_one = array[0].to_i
        number_two = array[1].to_i
        number_three = array[3].to_i
        number_four = array[4].to_i
        words = ones_array[number_one - 1] + "thousand" + ones_array[number_two - 1] + "hundred" + twenty_to_ninety[number_three-2] + ones_array[number_four - 1]
      end
      return words
    end
  end
end
