require 'rails_helper'

describe 'Owner' do
  before do
    @owner = Owner.create(name: "Sam")
  end

  it 'has a name' do
    expect(Owner.where(name: "Sam").first).to eq(@owner)
  end

end

describe 'Owner' do
  before do
    @owner = Owner.create(name: "Joe")
  end

  it 'has a name' do
    expect{@owner.destroy}.to change {Owner.count}
  end

end
