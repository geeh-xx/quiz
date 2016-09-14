require 'rails_helper'

RSpec.describe ItemAnswer, type: :model do

  context "Validantion Item Answer" do
    it "Relarion Item Answer" do
      should belong_to(:exam)
      should belong_to(:answer)
    end
  end

end
