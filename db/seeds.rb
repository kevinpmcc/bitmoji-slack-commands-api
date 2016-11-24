# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
require 'capybara/dsl'
require 'selenium-webdriver'

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
fill_in 'password', with: ENV['SLACK_PASSWORD']
find('button.btn_large').click
sleep(10)
commands.each { |command|
fill_in 'message-input', with: '/bitmoji ' + command
find('#message-input').native.send_keys :enter
sleep(10)

within all('.msg_inline_img_holder').last do 
        #element = find('a')
        #Command.create(name: command, img_url: element[:'data-referer-original-href']) 
end


}


