class SupportMailbox < ApplicationMailbox
  def process
    puts 'START SupportMailbox#process'
    puts "FROM: #{mail.from_address}"
    puts "Subject: #{mail.subject}"
    puts "Body: #{mail.body}"
    puts 'END SupportMailbox#process'
  end
end
