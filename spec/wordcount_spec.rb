require('rspec')
require('./lib/wordcount')

describe('#String.exists_number_of_times_in()') do
  #single word test
  it("returns a one-count when passed an equal word") do
    expect(("a_string").exists_number_of_times_in("a_string")).to(eq(1))
  end

  #two word test
  it("returns a two-count when passed the same word twice") do
    expect(("a_string").exists_number_of_times_in("a_string a_string")).to(eq(2))
  end

  #multi-word test with punctuation characters (e.g. commas)
  it("returns the expected count when passed a parameter string where matching words may have punctuation") do
    expect(("a_string").exists_number_of_times_in("a_string, a_string, - my kingdom for a_string!")).to(eq(3))
  end

  #multi-word test with case insensitivity
  it("returns the expected count when passed a parameter string where matching words include mixed case") do
    expect(("a_string").exists_number_of_times_in("A_string, a_string, - my kingdom for A_STRING!")).to(eq(3))
  end

end
