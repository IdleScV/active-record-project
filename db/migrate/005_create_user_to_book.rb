class CreateUserToBook < ActiveRecord::Migration[5.1]
    def change
        create_table :users_to_books do |t|
            t.integer :book_id
            t.integer :user_id
        end
    end
end