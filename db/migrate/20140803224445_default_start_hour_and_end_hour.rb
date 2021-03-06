class DefaultStartHourAndEndHour < ActiveRecord::Migration[4.2]
  def up
    change_column_default :submissions, :start_hour, 0
    change_column_null :submissions, :start_hour, false, 0
    change_column_default :submissions, :end_hour, 0
    change_column_null :submissions, :end_hour, false, 0
  end

  def down
    change_column_null :submissions, :start_hour, true
    change_column_null :submissions, :end_hour, true
  end
end
