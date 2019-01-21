require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Abi", "E28")
  end

  def test_name
    assert_equal("Abi", @student.name())
  end

  def test_cohort_number
    assert_equal("E28", @student.cohort_number())
  end

  def test_set_name
    @student.name = 'Bobby'
    assert_equal('Bobby', @student.name())
  end

  def test_change_cohort_number
    @student.cohort_number = 'G12'
    assert_equal('G12', @student.cohort_number())
  end


end
