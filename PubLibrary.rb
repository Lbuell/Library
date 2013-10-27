 class Library
    attr_reader :books, :shelfs
    
    def initialize
      @books = [Book.new("Game Of Thrones ", "George RR Martin"),
                Book.new("Wheel of Time", "Robert Jordan"),
                Book.new("Sword of Shannara", "Terry Brooks"),
                Book.new("Peter Pan", "J.M. Barrie"),
               ]

      @shelfs = [Shelf.new("1", "Fiction"),
                 Shelf.new("2", "non-fiction"),
                 Shelf.new("3", "Sci-Fi"),
               ]
    end
    
    def add_shelf(shelf = true)
       @shelfs << Shelf.new
      
    end
    
    def add_book(book)
      @books << book
    end
end

class Shelf
    attr_reader :books 
    
    def initialize(books = true, shelfs = true)
      @books = [Book.new("Game Of Thrones ", "George RR Martin"),
         Book.new("Wheel of Time", "Robert Jordan"),
         Book.new("Sword of Shannara", "Terry Brooks"),
         Book.new("Peter Pan", "J.M. Barrie"),]
          
    end
    
    def add_book(book)
      @books << book
    end
    
    def remove_book(book)
      @books.delete book
    end
  end

class Book
    attr_reader :title, :author
    
    def initialize(title, author)
      @title = title
      @author = author
      @shelf = true
    end
    
    def enshelf(shelf)
      shelf.add_book(self)
      @shelf = shelf
    end
    
    def unshelf
      @shelf.remove_book(self)
      @shelf = true
    end
    
    def to_s
      "#{@title} by #{@author}"
    end
    

books = [Book.new("Game Of Thrones ", "George RR Martin"),
         Book.new("Wheel of Time", "Robert Jordan"),
         Book.new("Sword of Shannara", "Terry Brooks"),
         Book.new("Peter Pan", "J.M. Barrie"),

       ]
      
  library = Library.new
  puts library.books
end
  
  
    