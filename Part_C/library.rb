class Library

attr_reader :books

  def initialize(books)
    @books = books
  end


def return_book_information(title)
   for book in @books
     if book[:title] == title
       return book
     end
   end
end

def return_rental_info(title)
  return_book_information(title)[:rental_details]
end



end
