class Library

attr_reader :books
attr_writer :books

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

def add_new_book(new_title)
  @books.push(new_title)
end

def change_details(title, student_name, date)
  book = return_book_information(title)
  book[:student_name] = student_name
  book[:date] = date
end

end
