require 'faker'


Book.delete_all
Category.delete_all
Author.delete_all
User.delete_all



#! Generating 2 Books per Author
10.times{
name = Faker::Name.name
book1 = Faker::Book.title
book2 = Faker::Book.title
genre = Faker::Book.genre

book11 = Book.create(title: book1) 
book22 = Book.create(title: book2) 
author = Author.create(author: name ) 
category = Category.create(name: genre)
category.books << book11
category.books << book22
author.books << book11
author.books << book22
}


# # #! Generating 10 Users 
10.times {
name = Faker::Name.name
User.create(name: name)
}

p "Created #{Book.count} books, #{Author.count} authors, #{User.count} users, #{Category.count} categories"