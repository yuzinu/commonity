# frozen_string_literal: true
class CreateServers < ActiveRecord::Migration[6.1]
  def change
    create_table :servers do |t|
      t.string :name, null: false
      t.references :owner, null: false

      t.timestamps
    end
  end
end
