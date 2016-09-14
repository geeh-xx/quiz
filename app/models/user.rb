class User < ActiveRecord::Base
  enum role: [:normal_user, :admin]

  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable

  include DeviseTokenAuth::Concerns::User

  has_one :perfil
  has_many :exams

end
