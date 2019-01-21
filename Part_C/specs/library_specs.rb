require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

def setup
  @books = [
    {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "21/2/19"
      }
    },
    {
      title: "lord_of_the_flies",
      rental_details: {
       student_name: "Tony",
       date: "05/3/19"
      }
    },
    {
      title: "devil_wears_prada",
      rental_details: {
       student_name: "Jack",
       date: "01/4/19"
      }
    }
  ]

  @my_library = Library.new(@books)
end

def test_get_the_book
  result = @my_library.books
  assert_equal(3, result.length)
end

def test_return_book_information
   book_to_test = {
    title: "devil_wears_prada",
    rental_details: {
     student_name: "Jack",
     date: "01/4/19"
    }
  }

  result = @my_library.return_book_information("devil_wears_prada")
  assert_equal(book_to_test, result)
end

def test_return_rental_info

  book_to_test = {
    student_name: "Jack",
    date: "01/4/19"
   }

  result = @my_library.return_rental_info("devil_wears_prada")
  assert_equal(book_to_test, result)
end

def test_add_new_book
  @my_library.add_new_book("Jackie")
  assert_equal(4, @books.length)
end

end
