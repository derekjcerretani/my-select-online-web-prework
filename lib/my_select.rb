require 'pry'

=begin
def my_select(collection)

  collection.select { |num| num.even? }

end
=end


nums = [1, 2, 3, 4, 5]

def my_select(collection)
  i = 0
  select = []
  while i < collection.length
    if yield(collection[i])
      select << collection[i]
    end
    i += 1
  end
  select
end

my_select(nums) { |i| i.even? }
