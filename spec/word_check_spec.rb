require('rspec')
require('word_check')

describe('String#word_check') do
  it("returns how many times a specified word is represented in a sentence") do
    expect(("coding").word_check("coding")).to(eq(1))
  end
  it("returns how many times a specified word is represented in a sentence") do
    expect(("coding").word_check("i love coding coding coding")).to(eq(3))
  end
  it("returns how many times a specified word is represented in a sentence") do
    expect(("Coding").word_check("i love coding coding coding.")).to(eq(3))
  end
end
