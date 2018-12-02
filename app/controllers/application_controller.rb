class ApplicationController < ActionController::Base
  before_action :update_status, only: :logout

  def update_status
    good_bad_comments_count = 0
    current_user.comments.each do |comment|
      good_comments_count = comment.good_comments.count
      good_bad_comments_count = good_comments_count + good_bad_comments_count
    end
    user_status_count = good_bad_comments_count.to_i + current_user.comments.count.to_i
    if user_status_count < 1
      current_user.status_id = 1
    elsif user_status_count == 1
      current_user.status_id = 2
    elsif 1 < user_status_count && user_status_count > 11
      current_user.status_id = 3
    elsif 10 < user_status_count && user_status_count < 31
      current_user_status_id = 4
    elsif 30 < user_status_count && user_status_count < 51
      current_user_status_id = 5
    elsif 50 < user_status_count && user_status_count < 101
      current_user_status_id = 6
    elsif 100 < user_status_count && user_status_count < 201
      current_user_status_id = 7
    elsif 200 < user_status_count && user_status_count < 301
      current_user_status_id = 8
    elsif 300 < user_status_count && user_status_count < 401
      current_user_status_id = 9
    elsif 400 < user_status_count && user_status_count < 500
      current_user_status_id = 10
    end
    current_user.save
  end
end
