require './lib/fizzbuzz'

describe 'fizzbuzz' do

    
    [1,2,4].each do |element| 
        it "returns #{element} when given #{element}" do
        expect(fizzbuzz(element)).to eq element
        end
    end

    it 'returns "fizz" when passed 3' do
        expect(fizzbuzz(3)).to eq 'fizz'
    end

    it 'returns "buzz" when passed 5'do
        expect(fizzbuzz(5)).to eq 'buzz'
    end

    it 'returns "fizzbuzz" when passed a multiple of 3 and 5' do 
        expect(fizzbuzz(15)).to eq 'fizzbuzz'
    end
end

describe "fizzbuzz printing" do

let(:expected) {["1","2","fizz","4","buzz","fizz","7","8","fizz","buzz","11","fizz","13","14","fizzbuzz","16","17","fizz","19","buzz"].join("\n")}

    it "Puts'ed number 1-20 to output each on a new line" do
        expect{complete_fizz}.to output(/#{expected}/).to_stdout
    end

end

