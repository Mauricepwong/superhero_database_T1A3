require "./SuperheroDatabase"

RSpec.describe Superhero do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :identity }
end


#     it "should respond to name" do
#         expect{subject}.to  respond_to :name
#     end
# end