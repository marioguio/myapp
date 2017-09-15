require "pg"

def exit_if_not(expected, current)
  puts "Expected: #{expected}"
  puts "Current: #{current}"
  exit(1) if expected != current
end

sleep 4
postgres_username = "mario"
postgres_password = "mario"
test = PG.connect("mario", 5432, "mario", "mario", "mario", postgres_username, postgres_password)
puts test.exec("SELECT version();").first["version"]
