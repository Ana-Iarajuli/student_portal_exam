class User < ApplicationRecord
  has_many :subjects
  has_many :requests

  # validates :question, presence: true, uniqueness: false

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
