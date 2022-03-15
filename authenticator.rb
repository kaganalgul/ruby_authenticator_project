users = [
{username: "kagan", password: "password"},
{username: "kagan1", password: "password1"},
{username: "kagan2", password: "password2"},
{username: "kagan3", password: "password3"},
{username: "kagan4", password: "password4"}
]

def auth_user (username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  puts "Given informations were not correct."
end

puts "Welcome to the Authenticator"

25.times { print"*" }
puts
attemps = 1
while attemps <4
  print "Enter your username: "
  username = gets.chomp
  print "Enter your password: "
  password = gets.chomp
  authenticaton = auth_user(username, password, users)
  #puts authenticaton
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
break if input == "n"
end
