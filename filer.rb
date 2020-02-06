# Membuat file di Ruby

File.open('file_saya.txt', 'w') do |f|
    f.write 'Saya sedang belajar Ruby'
    f.write "\n"
    f.write 'Ruby adalah bahasa yang keren'
end

# Bentuk kedua
puts "===================="

File.open('file_saya2.txt', 'w') do |f|
    f.puts 'Saya sedang belajar Ruby'
    f.puts 'Ruby adalah bahasa yang keren'
end