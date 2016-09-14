class Perfil < ActiveRecord::Base
  validates :name, :cpf ,presence: true
  belongs_to :user
end
