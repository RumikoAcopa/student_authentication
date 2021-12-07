#practicing class
#Use case for student class - Authentication systems in web applications 
#Done with usernames and passwords 
#Security for user information very important
#Passwords are virtually never stored in their string forms, use sessions secret, stored in gitignore file
#Hashed digests for passwords are stored in the db's.
#A popular hashing algorithm is bcrypt-uses md5 and adds a salt to it. #rubydoc.info
#Creates a hash digest of the string
require_relative "password"
class Student 
  include Password
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email,    username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end
end 

def to_s
  "First name : #{@first_name}, Last name : #{@last_name}, Username: #{@username}, email address : #{@email}"
end 


rumiko = Student.new("Rumiko", "Acopa", "rumiko1", "r.u.miko?@example.com", "password")
puts rumiko

hashed_password = rumiko.create_hash_digest(rumiko.password)

puts hashed_password


