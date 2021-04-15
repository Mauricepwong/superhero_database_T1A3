require "./SuperheroDatabase"

RSpec.describe SuperheroDatabase do
    subject {SuperheroDatabase.list_all}

    it "should be an array" do
        expect(subject).to be_kind_of(Array)
    end

    it "should load a yml file" do
        file = mock('file')
        File.should_receive(:read)
    end
end


# end


#     it "should respond to name" do
#         expect{subject}.to  respond_to :name
#     end
# end