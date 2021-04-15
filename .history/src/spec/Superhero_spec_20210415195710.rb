require "./Superhero"

RSpec.describe Superhero do
    subject {(Superhero.new "batman", "bruce wayne", ["gadgets","batmobile"])}

    it "When creating an Superhero instance it should not be nil" do
        expect(subject).not_to be_nil
    end

    it "Should be assigned on initialisation" do
        expect(subject.id).not_to be_nil
        expect(subject.name).to eq "batman"
        expect(subject.identity).to eq "bruce wayne"
        expect(subject.superpowers).to eq(["gadgets","batmobile"])
    end


    # describe "#name" do
    #     subject {(Superhero.new "batman", "bruce wayne", ["gadgets","batmobile"])}

    #     it "should not be nil" do
    #         expect(subject).not_to be_nil
    #     end
        
    #     it "should be assigned on initilasation if provided" do
    #         expect(subject).to eq "batman"
    #     end
    # end
end

#     context "When testing the Superhero class" do

#         it "Create an instance when we call the say_hello method" do 
#             superhero = Superhero.new 
#             message = hw.say_hello 
#             expect(message).to eq "Hello World!"
#         end 
#     end
# end



    # Setup conditions
    # Expected end state
    # Actual end state
    #
    # Example
    # Create Superhero
    #
    # Conditions (initial)
    # User enters ideal input
    # User enters name, secret identity, superpowers (2)
    # Database is empty
    #
    # Expectations
    # Count = 1
    # Can do this using list_all or count methods on SuperheroDatabase
    # Could also check values of superhero saved correctly using find_superhero
    # 
    # Assert expectations = actual
