require "./SuperheroDatabase"

RSpec.describe SuperheroDatabase do
    subject {SuperheroDatabase.list_all}

    it "should be an array" do
        expect(subject).to be_kind_of(Array)
        expect(subject).not_to be_nil
    end

    it "should create a file and write the superheroes array " do
        subject {SuperheroDatabase.save_to_yaml}
        file = mock('file')
        File.should_receive(:open).with("superheroes.yml", "w")
        file.should_receive(:write).with(@@superheroes)
    end
end


# end


#     it "should respond to name" do
#         expect{subject}.to  respond_to :name
#     end
# end