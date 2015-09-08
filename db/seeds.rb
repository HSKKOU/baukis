table_names = %w(staff_members administrators)
table_names.each do |table_name|
  path = Rails.root.join('db', 'seeds', Rails.env, "#{table_name}.rb")
  puts "#{table_name} seed path: #{path}"
  if File.exist?(path)
    puts "Creating #{table_name}...."
    require(path)
  else
    puts "Not Found #{table_name} Table"
  end
end