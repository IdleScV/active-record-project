class CreateAuthor < ActiveRecord::Migration[5.1]
    def change
        create_table :authors do |t|
            t.string :author
        end
    end
end