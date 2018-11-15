class String
  def num_to_words
    ones_array = ["one","two","three","four","five", "six", "seven", "eight", "nine"]
    tens_array = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eightteen", "nineteen"]
    twenty_to_ninety = ["twenty", "thirty", "fourty","fifty","sixty","seventy", "eigthty", "ninety"]
    positions = []
    array = self.split("")
    length = array.length
    array.each do |number|
      number_one = array[0].to_i
      number_two = array[1].to_i
      number_three = array[3].to_i
      number_four = array[4].to_i
      if length <= 1
        words = ones_array[number_one-1]
      elsif (length <= 2) & (array[0] == "1")
        words = tens_array[number_two]
      elsif (length <= 2) & (array[0] != "1") & (array[1] == "0")
        words = twenty_to_ninety[number_one-2]
      elsif (length <= 2) & (array[0] != "1")
        words = twenty_to_ninety[number_one-2] + ones_array[number_two - 1]
      elsif (length <= 3) & (array[1] == "0") & (array[2] == "0")
        words = ones_array[number_one - 1] + "hundred"
      elsif length <= 3
        words = ones_array[number_one - 1] + "hundred" + twenty_to_ninety[number_one-2] + ones_array[number_two]
      # elsif length <= 4
      #   words = ones_array[number_one - 1] + "thousand" + ones_array[number_two - 1] + "hundred" + twenty_to_ninety[number_three-2] + ones_array[number_four+3]
      end
      return words
    end
  end
end
