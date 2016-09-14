require 'rails_helper'

RSpec.describe Perfil, type: :model do

  context "Perifl Question" do

    it "Perfil relations" do
      should belong_to(:user)
    end

    it "Perfil valid?" do

      perfil = Perfil.new
      perfil.name = "Teste"
      perfil.birth = "Xablau a"
      perfil.cpf = "Xablau b"

      expect(perfil.valid?).to be_truthy
    end

    it "Perfil invalid?" do

      perfil = Perfil.new
      perfil.name = "Teste"
      perfil.birth = "Xablau a"

      expect(perfil.valid?).to be_falsey
    end

  end

end
