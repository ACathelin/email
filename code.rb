re 'ffaker'
number = 500000
emails = []
number.times do
  emails << FFaker::Internet.email
  end
  puts "Emails: #{emails.size}"
  puts "Unique emails: #{emails.uniq.size}"
  puts "Emails repeated: #{number - emails.uniq.size}"
  puts emails.uniq.to_s
  open('emails.txt', 'w') { |f|
    f << emails.uniq.to_s
	}

