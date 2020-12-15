class BrowseController < ApplicationController

  def browse
    @users = Account.where.not(id: current_account.id)
  end

  def approve
    account_id = params[:id]
    # User likes User
    logger.debug "User id for matching is #{account_id}"
    # Create a like for user
    new_like = Like.new(liked_account_id: account_id)
    new_like.account_id = current_account.id

    if new_like.save
      existing_like = Like.where(account_id: account_id, liked_account_id: current_account.id).count
      @they_like_us = existing_like > 0
    else
    end
  end

  def decline
  end

end
