require './romannum'

describe "Roman number conversion" do 
	it "Should return 1 if passed I" do
		expect(roman_to_decimal("I")).to eq(1)
	end
end