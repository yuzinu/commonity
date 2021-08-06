# frozen_string_literal: true
class CreateChannels < ActiveRecord::Migration[6.1]
  def change
    create_table :channels do |t|
      t.string :name, null: false
      t.references :server, null: false

      t.timestamps
    end
  end
end
