class User
  @@users_count = 0
  def add(name)
        puts "User #{name} added!"
        @@users_count += 1
        puts @@users_count
  end
end

first_user = User.new
first_user.add("Rickison")

second_user = User.new
second_user.add("Renan")
  
