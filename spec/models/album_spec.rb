require 'rails_helper'

RSpec.describe Album, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
    it "is not valid without a name" do 
      album = Album.new(name: nil)
      expect(album).to_not be_valid
    end

  it "is not valid without a description" do
       album = Album.new(description: nil)
       expect(album).to_not be_valid
 end
end

describe Album do
 describe "Associations" do 
    it "belongs_to user" do
     assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end
  end
end

 



