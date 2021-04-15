require "./SuperheroDatabase"

RSpec.describe SuperheroDatabase do
    subject {SuperheroDatabase.list_all}

    it "should be an array" do
        expect(subject).to be_kind_of(Array)
    end
end


# end


#     it "should respond to name" do
#         expect{subject}.to  respond_to :name
#     end
# end