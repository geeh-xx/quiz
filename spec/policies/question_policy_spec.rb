require 'rails_helper'

RSpec.describe QuestionPolicy do
  subject { described_class.new(user, question) }

  let(:question) { Question.create(title: "teste", a: "teste", b: "Teste", c:"tetes", d: "Teste") }


  context 'being a admin' do
    let(:user) {
      User.create(role: "admin",email: "teste@teste.com.br", password: "123456789", password_confirmation:"123456789" )
    }

    it { is_expected.to permit_action(:destroy) }
    it { is_expected.to permit_action(:create) }
    it { is_expected.to permit_action(:index) }
  end

  context 'being a normal user' do
    let(:user) {
      User.create(role: "normal_user",email: "teste@teste.com.br", password: "123456789", password_confirmation:"123456789" )
    }

    it { is_expected.to forbid_action(:destroy) }
    it { is_expected.to forbid_action(:create) }
    it { is_expected.to forbid_action(:index) }
  end

end
