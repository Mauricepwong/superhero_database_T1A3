require "./SuperheroDatabase"

RSpec.describe SuperheroDatabase do
    subject {SuperheroDatabase.list_all}

    it "should be an array" do
        expect(subject).to be_kind_of(Array)
        expect(subject).not_to be_nil
    end

    it "should load a file" do
        subject {SuperheroDatabase.save_to_yaml}
        mock_handle = double('file handle')
        File.should_receive(:open).with("superheroes.yml", 'w').and_yield(mock_handle)
        mock_handle.should_receive(:write).with(doc)
        subject.write_stuff(doc)
    end
end


# end


#     it "should respond to name" do
#         expect{subject}.to  respond_to :name
#     end
# end