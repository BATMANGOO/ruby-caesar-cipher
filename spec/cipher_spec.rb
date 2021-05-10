require_relative '../cipher'

describe '#caesar_cipher' do
  it "returns B on input of 'A' with 1 shift" do
    expect(caesar_cipher('A', 1)).to eq('B')
  end

  it "returns 'Bbb' on input of 'Aaa' with 1 shift" do
    expect(caesar_cipher('Aaa', 1)).to eq('Bbb')
  end

  it "returns 'Mjqqt, Btwqi!' on input of 'Hello, World!' with 5 shifts" do
    expect(caesar_cipher('Hello, World!', 5)).to eq('Mjqqt, Btwqi!')
  end

  it "returns 'Hello, World!' on input of 'Mjqqt, Btwqi!' with -5 shifts" do
    expect(caesar_cipher('Mjqqt, Btwqi!', -5)).to eq('Hello, World!')
  end

  it "returns 'A' on input of 'Z' with 1 shift" do
    expect(caesar_cipher('Z', 1)).to eq('A')
  end

  it "returns 'Ebiil, Tloia!' on input of 'Hello, World! with 75 shifts" do
    expect(caesar_cipher('Hello, World!', 75)).to eq('Ebiil, Tloia!')
  end

  it "returns 'Ebiil, Tloia!' on input of 'Hello, World!' with -29 shifts" do
    expect(caesar_cipher('Hello, World!', -29)).to eq('Ebiil, Tloia!')
  end
end