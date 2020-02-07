class User < ActiveRecord::Base
    has_many :users_to_books
    has_many :books, through: :users_to_books
    
    def borrowBook(book_instance)
        UserToBook.new(:user_id => self.id, :book_id => book_instance.id)
    end

    def returnBook(book_instance)
        UserToBook.where("user_id == #{self.id} && book_instance == #{book_instance.id}")
    end
end