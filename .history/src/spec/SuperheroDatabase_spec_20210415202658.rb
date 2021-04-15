require "./SuperheroDatabase"

RSpec.describe SuperheroDatabase do
    it { is_expected.to respond_to load_database }
end


#     it "should respond to name" do
#         expect{subject}.to  respond_to :name
#     end
# end