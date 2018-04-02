###### CASE 1 ######

test_case_0 = 
" _  _  _  _  _  _  _  _  _ ",
"| || || || || || || || || |",
"|_||_||_||_||_||_||_||_||_|"
                           
test_case_1 =
"                           ",
"  |  |  |  |  |  |  |  |  |",
"  |  |  |  |  |  |  |  |  |"

test_case_2 =                    
" _  _  _  _  _  _  _  _  _ ",
" _| _| _| _| _| _| _| _| _|",
"|_ |_ |_ |_ |_ |_ |_ |_ |_ "
                           
test_case_3 = 
" _  _  _  _  _  _  _  _  _ ",
" _| _| _| _| _| _| _| _| _|",
" _| _| _| _| _| _| _| _| _|"
                           
test_case_4 = 
"                           ",
"|_||_||_||_||_||_||_||_||_|",
"  |  |  |  |  |  |  |  |  |"
                           
test_case_5 = 
" _  _  _  _  _  _  _  _  _ ",
"|_ |_ |_ |_ |_ |_ |_ |_ |_ ",
" _| _| _| _| _| _| _| _| _|"
                           
test_case_6 = 
" _  _  _  _  _  _  _  _  _ ",
"|_ |_ |_ |_ |_ |_ |_ |_ |_ ",
"|_||_||_||_||_||_||_||_||_|"
                           
test_case_7 = 
" _  _  _  _  _  _  _  _  _ ",
"  |  |  |  |  |  |  |  |  |",
"  |  |  |  |  |  |  |  |  |"
                           
test_case_8 = 
" _  _  _  _  _  _  _  _  _ ",
"|_||_||_||_||_||_||_||_||_|",
"|_||_||_||_||_||_||_||_||_|"
                           
test_case_9 = 
" _  _  _  _  _  _  _  _  _ ",
"|_||_||_||_||_||_||_||_||_|",
" _| _| _| _| _| _| _| _| _|"
                           
test_case_10 = 
"    _  _     _  _  _  _  _ ",
"  | _| _||_||_ |_   ||_||_|",
"  ||_  _|  | _||_|  ||_| _|"

puts ScanNumber.new(test_case_0).get_account
puts ScanNumber.new(test_case_1).get_account
puts ScanNumber.new(test_case_2).get_account
puts ScanNumber.new(test_case_3).get_account
puts ScanNumber.new(test_case_4).get_account
puts ScanNumber.new(test_case_5).get_account
puts ScanNumber.new(test_case_6).get_account
puts ScanNumber.new(test_case_7).get_account
puts ScanNumber.new(test_case_8).get_account
puts ScanNumber.new(test_case_9).get_account
puts ScanNumber.new(test_case_10).get_account


###### CASE 3 ######

case_3_input_1 =
" _  _  _  _  _  _  _  _    ",
"| || || || || || || ||_   |",
"|_||_||_||_||_||_||_| _|  |"
# => 000000051

case_3_input_2 = 
"    _  _  _  _  _  _     _ ",
"|_||_|| || ||_   |  |  | _ ",
"  | _||_||_||_|  |  |  | _|"
# => 49006771? ILL

case_3_input_3 = 
"    _  _     _  _  _  _  _ ",
"  | _| _||_| _ |_   ||_||_|",
"  ||_  _|  | _||_|  ||_| _ "
# => 1234?678? ILL

puts ScanNumber.new(case_3_input_1).get_account
puts ScanNumber.new(case_3_input_2).get_account
puts ScanNumber.new(case_3_input_3).get_account


###### CASE 4 ######

case_4_input_1 = 
"    _  _  _  _  _  _     _",
"|_||_|| || ||_   |  |  ||_",
"  | _||_||_||_|  |  |  | _|"

puts ScanNumber.new(case_4_input_1).get_account
