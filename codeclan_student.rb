class Student

  attr_reader :name, :cohort_number
  attr_writer :name, :cohort_number

  def initialize(name, cohort_number)
    @name = name
    @cohort_number = cohort_number
  end

end
