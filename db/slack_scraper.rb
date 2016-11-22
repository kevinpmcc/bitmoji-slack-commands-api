
require 'capybara/dsl'
require 'selenium-webdriver'
require 'pry'

include Capybara::DSL

commands =  ['batman',
'beyonce',
'booyakasha',
'burger',
'cash',
'cat',
'champagne',
'coffee',
'coffee',
'confused',
'dance',
'dead',
'early',
'fight club',
'fu',
'game of thrones',
'grrrr',
'hawt',
'heartbreak',
'hello',
'hi',
'hilarious',
'hugs',
'hump day',
'hungover',
'i’m sick',
'key',
'kim kardashian',
'left shark',
'lol',
'love',
'magic',
'miss you',
'omfg',
'pancakes',
'pasta',
'pizza',
'poo',
'puppy',
'roses',
'sad',
'satan',
'sexy',
'sexy time',
'shit',
'shrug',
'single ladies',
'some bunny loves you',
'sports illustrated',
'success',
'superhero',
'superman',
'team',
'terminator',
'thanks',
'tired',
'toilet',
'wawawewa',
'wonder woman',
'yaaasss',
'you fuel my love',
'you go girl',
'you’re the worst']

Capybara.default_driver = :selenium


visit 'https://friendsforever-world.slack.com/'
fill_in 'email', with: 'kevinpatrickmccarthy@gmail.com'
fill_in 'password', with: 'isthisokay'
find('button.btn_large').click
find('#message-input', wait: 1500, match: :first)

commands.each { |command|
fill_in 'message-input', with: '/bitmoji ' + command
find('#message-input').native.send_keys :enter
find('.msg_inline_img_container', wait: 1500, match: :first)
sleep(5)

within all('.msg_inline_img_container').last do 
        element = find('img') 
        @command_object = BitmojiCommand.new(command: command, img_url: element[:src]) 
end

puts @command_object.command
puts @command_object.img_url

}





