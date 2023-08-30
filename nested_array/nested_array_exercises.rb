#__________________________________Exercise#1__________________________________________
# return a 2d array to represent a seating chart that contains
# number_of_rows nested arrays, each with seats_per_row entries of nil to
# represent that each seat is empty.

# Example: blank_seating_chart(2, 3) should return:
# [
#   [nil, nil, nil],
#   [nil, nil, nil]
# ]

# NOTE: if one of the nested arrays is changed, the others should **not**
# change with it
def blank_seating_chart(number_of_rows, seats_per_row)
 mutable = Array.new(number_of_rows) {Array.new(seats_per_row)}
 p mutable
end
p "exercise#1"
 p blank_seating_chart(2,3)
#
#
#
#__________________________________Exercise#2__________________________________________


# take a chart (2d array)  and add seat_to_add to the end of the row that is
# at row_index index of the chart, then return the chart
array =  [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']] 
def add_seat_to_row(chart, row_index, seat_to_add)  
 chart[row_index].push(seat_to_add)
chart
end
p "exercise#2"
p add_seat_to_row(array,1,"Jakc")
#
#
#
#__________________________________Exercise#3__________________________________________

# take a chart and add row_to_add to the end of the chart,
# then return the chart.
array1 = [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']] 
def add_another_row(chart, row_to_add)
chart.push(row_to_add)
end
p add_another_row(array,['Bo',nil,'Kim'])
#
#
#
#__________________________________Exercise#4__________________________________________

# take a chart and delete the seat at seat_index of the row at row_index of
# the chart, then return the chart

# Hint: explore the ruby docs to find a method for deleting from an array!
array3 = [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']]
def delete_seat_from_row(chart, row_index, seat_index)
  chart[row_index].delete_at(seat_index)
  chart
end
delete_seat_from_row(array3, 0, 1)
#
#
#
#__________________________________Exercise#5__________________________________________

# take a chart and delete the row at row_index of the chart,
# then return the chart
array4 = [[nil, 'Bob'], ['Joe', nil], [nil, 'Bill']]
def delete_row_from_chart(chart, row_index)
  chart.delete_at(row_index)
  chart
end
 delete_row_from_chart(array4, 1 )
#
#
#
#__________________________________Exercise#6__________________________________________
# take a chart and return the number of empty (nil) seats in it
# NOTE: `chart` should **not** be mutated
array5 = [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']] 
def count_empty_seats(chart)
  count = 0
  chart.flatten.collect {|seat| count +=1 if seat.nil? }
  count
  
  
end
 p count_empty_seats(array5)
#
#
#
#__________________________________Exercise#7__________________________________________

# take an array_of_hash_objects and return the hash which has the key/value
# pair :is_my_favorite? => true. If no hash returns the value true to the key
# :is_my_favorite? it should return nil

# array_of_hash_objects will look something like this:
# [
#   { name: 'Ruby', is_my_favorite?: true },
#   { name: 'JavaScript', is_my_favorite?: false },
#   { name: 'HTML', is_my_favorite?: false }
# ]

# TIP: there will only be a maximum of one hash in the array that will
# return true to the :is_my_favorite? key

arr =    [
  { name: 'JavaScript', is_my_favorite?: false },
  { name: 'Ruby', is_my_favorite?: true },
  { name: 'HTML', is_my_favorite?: false }
]

def find_favorite(array_of_hash_objects)
  array_of_hash_objects.each do |value|
    return value if value[:is_my_favorite?] == true
  end
  nil 
end
 p find_favorite(arr)