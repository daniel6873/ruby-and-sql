# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

salesperson1= Salesperson.new

salesperson1["first_name"]="John"
salesperson1["last_name"]= "Jonathon"
salesperson1["email"]="john.jonathon@email.com"
salesperson1.save

puts salesperson1.inspect

salesperson2= Salesperson.new

salesperson2["first_name"]="Jack"
salesperson2["last_name"]= "Jackson"
salesperson2["email"]="jack.jackson@email.com"
salesperson2.save

puts salesperson1.inspect


# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
puts ""
puts "-----"
puts "There are #{Salesperson.all.count} sales people in the list"

# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

jackson = Salesperson.find_by({"last_name"=>"Jackson"})
jackson["last_name"]="Jamieson"
jackson.save

puts jackson["last_name"]

# CHALLENGE:
# 5. write code to display each salesperson's full name

johnson = Salesperson.find_by({"last_name"=>"Johnson"})
puts "Salesperson 1:#{jackson[first_name]}"


# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
