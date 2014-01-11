class UsersController < ApplicationController
  def index
    @users_by_grade = User.all.group_by(&:grade)
    @user_count_by_grade = User.group(:grade).count
    @active_user_count = @user_count_by_grade.inject(0) do |sum, (grade, count)|
      (1..4).include?(grade.to_i) ? sum + count : sum
    end
  end
end
