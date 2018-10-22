class Schedule
  attr_writer :schedule

  def schedule
    @schedule ||=::Schedule.new
  end

  def scheduled?(schedulable, start_date, end_date)
    puts "This #{schedulable.class}" +
         "is not scheduled\n" +
         " between #{start_date} and #{end_date}"
    false
  end
end
