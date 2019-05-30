require 'rails_helper'

describe 'Trainer' do
  before do
    @trainer = Trainer.create(name: "Bart")
  end

  it 'has a name' do
    expect(Trainer.where(name: "Bart").first).to eq(@trainer)
  end

end

describe 'Trainer' do
  before do
    @trainer = Trainer.create(name: "Zirk")
  end

  it 'has a name' do
    expect{@trainer.destroy}.to change {Trainer.count}
  end

end
