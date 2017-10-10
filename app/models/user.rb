class User < ApplicationRecord
	include Auth
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  enum role:      {admin: 1000, member: 1}
  validates :email, :role, presence: true

  def self.search(search_name, search_email)
    if search_name
      where('LOWER(username) LIKE ? ', "%#{search_name.downcase}%")
    elsif search_email
      where('LOWER(email) LIKE ? ', "%#{search_email.downcase}%")
    else
      all
    end
  end
end
