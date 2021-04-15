require "./SuperheroDatabase"

RSpec.describe SuperheroDatabase do
    
    it "should be an array" do
        subject {SuperheroDatabase.list_all}
        
        expect(subject).to be_kind_of(Array)
        expect(subject).not_to be_nil
    end


end


# end


#     it "should respond to name" do
#         expect{subject}.to  respond_to :name
#     end
# end