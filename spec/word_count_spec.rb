require('rspec')
require('pry')
require('./lib/word_count')

describe('String#word_count') do
  it('returns the number of a word count as the user input the word') do
    expect("peck".word_count("peck")).to(eq(1))
  end
  it() do
    expect("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?".word_count("peck")).to(eq(2))
  end
end
