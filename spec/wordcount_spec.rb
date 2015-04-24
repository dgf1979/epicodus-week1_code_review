require('rspec')
require('./lib/wordcount')

describe('#String.exists_number_of_times_in()') do
  it("returns a one-count when passed an equal word") do
    expect(("a_string").exists_number_of_times_in("a_string")).to(eq(1))
  end
end
