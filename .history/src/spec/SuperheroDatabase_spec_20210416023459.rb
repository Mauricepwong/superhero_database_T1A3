require "./SuperheroDatabase"
require "./menumethods"

RSpec.describe SuperheroDatabase do
    subject { SuperheroDatabase.list_all }

    it "should be an array" do
        expect(subject).to be_kind_of(Array)
        expect(subject).not_to be_nil
    end

    subject { SuperheroDatabase.delete_superhero_by_id}

    it "should remove the entry at index postion"
        superheroes = [["batman", "bruce", "batcar"]]
        subject.remove_entry
    
end


# end


#     it "should respond to name" do
#         expect{subject}.to  respond_to :name
#     end
# end