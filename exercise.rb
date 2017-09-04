# Define a method that accepts a percentage as an argument and returns a letter
# grade (A+, A, A-, B+, etc) for that percentage.
#
# Prompt your user to enter a percentage and display a message
# showing them the equivalent letter grade.

def grades_selector
grades = {
91..95=>"A+", 86..90=>"A", 81..85 =>"A-",
76..80 =>"B+", 71..75=>"B", 66..70=>"B-",
61..65=>"C+", 56..60=>"C", 51..55=>"C-",
46..50=>"D+", 41..45=>"D", 36..40=>"D-",
0..35=>"F"
}

  print "Please insert your success in percentage"
  input=gets.chomp.to_i

grades.select do |success_range,grade|
if success_range.include?(input)
  puts "Your grade is #{grade}"
elsif input > 96
  puts grades_selector
end
end
end

puts grades_selector
