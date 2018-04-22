class AttendanceController < ApplicationController
  def sheet
    @students = Student.all
  end

  def register
    puts params
    Presence.new(student_id: params[:student_id], hours: params[:hours], date: convert_date(params, :date)).save
    flash[:success] = 'New entry registered with success!'
  end

  def report
    @students = Student.all
  end

  private
    def convert_date(hash, date_symbol_or_string)
      attribute = date_symbol_or_string.to_s
      Date.new(hash[attribute + '(1i)'].to_i, hash[attribute + '(2i)'].to_i, hash[attribute + '(3i)'].to_i)
    end
end
