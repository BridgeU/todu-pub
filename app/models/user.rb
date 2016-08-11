class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Also :recoverable and :trackable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  has_many :todo_lists
end
