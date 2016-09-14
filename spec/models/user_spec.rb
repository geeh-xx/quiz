require 'rails_helper'

RSpec.describe User, type: :model do

    context "Validantion User" do

      it "User relations" do
        should have_many(:exams)
        should have_one(:perfil)
      end

      it "User Admin valid?" do
        user = User.new
        user.role = "admin"
        user.email = "teste@teste.com.br"
        user.password = "123456789"
        user.password_confirmation = "123456789"
        expect(user.admin?).to be_truthy
      end

      it "normal user valid?" do
        user = User.new
        user.email = "teste@teste.com.br"
        user.password = "123456789"
        user.password_confirmation = "123456789"
        expect(user.admin?).to be_falsey
      end

    end

end
