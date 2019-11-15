require 'rspec'

require 'ak-nmax'

RSpec.describe Nmax do

	let (:arr) { '32, 23, 22, 55, 66, 25, 333, 123' }
	let (:n) { 5 }

	describe 'errors' do
		before :each do
			@pr = Proc.new { |bn| described_class.run bn }
		end
		it 'must return if input stream is empty' do
			
			expect(@pr.call n).to eq(3)
		end

		it 'must return if wrong or bad parameter past' do
			expect(@pr.call).to eq(2)
		end
	end

	describe 'good behavior' do
	    before do
	      stub_const('STDIN', StringIO.new(arr))
	    end

	    subject { described_class.run n }

		it 'returns array' do 
			is_expected.to be_kind_of(Array)
		end

		it 'returns integer number' do
			is_expected.to all(be_an(Integer))
		end

		it 'return n numbers' do
			expect(subject.count).to eq(n)
		end

		it 'must be equal array' do
			is_expected.to eq([333, 123, 66, 55, 32])
		end
	end
end