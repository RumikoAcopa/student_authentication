require_relative 'password'

users = [
    {username: "rumiko", password: 'password1'},
    {username: "kira", password: 'password2'},
    {username: "william", password: 'password3'},
    {username: "xavi", password: 'password4'},
  ]

  hashed_users = Password.create_secure_users(users)
  puts hashed_users