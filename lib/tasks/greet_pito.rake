namespace :pito do
  desc "Tell Pito you are glad to see him"
  task greet: :environment do
    puts "Hi There Pito!"
  end

  desc "Start a conversation with Pito"
  task meet: [:greet] do
    puts "Let's talk!"
  end
end