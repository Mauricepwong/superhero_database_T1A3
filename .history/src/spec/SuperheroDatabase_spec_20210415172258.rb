require "./SuperheroDatabase"

RSpec.describe Superhero do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :identity }
    it { is_expected.to respond_to :superpower }

    describe "name" do
        subject { Superhero.new.name }
        it { is_expected.not_to be_nil }
    end    
end


#     it "should respond to name" do
#         expect{subject}.to  respond_to :name
#     end
# end