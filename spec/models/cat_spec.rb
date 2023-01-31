require 'rails_helper'

RSpec.describe CatBlock::Cat , type: :model do
  # it "should have name" do
  #   cat= Cat.new( name: "mibi")
  #   expect(cat.save).to be true
  # end
  it {is_expected.to validate_presence_of(:name)}
  it {is_expected.to have_one(:picture_attachment)}

end
