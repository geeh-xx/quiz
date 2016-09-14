require 'rails_helper'

RSpec.describe Item, type: :model do

  context "Validantion Item" do
    it "Item relations" do
      should belong_to(:question)
      should belong_to(:exam)
    end
  end

end
