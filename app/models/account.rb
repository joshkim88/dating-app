class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many_attached :images

  def matches
    # gathering all ids of users that we like and like us in 2 arrays.
    liked_account_ids = Like.where(account_id: self.id).map(&:liked_account_id)
    puts liked_account_ids
    likes_me_account_ids = Like.where(liked_account_id: self.id).map(&:account_id)
    puts likes_me_account_ids
    # create a new array of matching liked ids.
    matched_ids = liked_account_ids.select{|id| likes_me_account_ids.include?(id)}
    puts matched_ids
    Account.where(id: matched_ids)
  end
end
