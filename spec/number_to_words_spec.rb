require('number_to_words')
require('rspec')
require('pry')

describe('#number_to_words') do

 it("returns the position of the number ") do
   expect(1.num_to_words()).to(eq(["ones"]))
 end

 it("returns the position of the number ") do
   expect(12.num_to_words()).to(eq(["ones", "tens"]))
 end

end


# if the number is 38 it should return thirty-eight
# if the number is 308 it should return threehundredeight
#
# what i need to do?
# - get the inout if a number and figure out the postion is of the index
# -  therefore if the number is 38 , 3 is 0 and 8 is 1,
# - so we will have to count the total length of an array to determine if it is ones tens hundreds and thousands etc...
# - and associate the appropriate word..
# - ones is , one , two, three
# - tens ten, twelve , thirteen, thirty, fourty, etc...
# - hundreds is one + hundreds
