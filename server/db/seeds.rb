# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do
  user = User.create(username: Faker::Internet.username, email: Faker::Internet.email, password: 'Commonity_Password_!')
  2.times do
    server = user.servers.create(name: Faker::TvShows::Friends.location, owner_id: user.id)
    2.times do
      channel = server.channels.create(name: Faker::TvShows::Friends.character, server_id: server.id)
      2.times do
        channel.messages.create(body: Faker::TvShows::Friends.quote, author_id: user.id, messageable_id: channel.id, messageable_type: 'Channel')
      end
    end
  end
end