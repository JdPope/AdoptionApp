require 'rails_helper'

describe 'Trainer' do
  before do
    @trainer = Trainer.create(name: "Bart")
  end

  it 'has a name' do
    expect(Trainer.where(name: "Bart").first).to eq(@trainer)
  end

end
