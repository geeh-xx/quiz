class Perfil < ActiveRecord::Base
  validates :name, :cpf ,:presence, presence: true
  belongs_to :user
end
