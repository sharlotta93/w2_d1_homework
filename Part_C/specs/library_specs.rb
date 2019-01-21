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
end

def test_get_the_book
  assert_equal()
end





end
