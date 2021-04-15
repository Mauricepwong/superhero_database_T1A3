require "./Superhero"

RSpec.describe Superhero do
    it "New superhero instance has a class of Superhero" do
        expect(Superhero.new.name="").to raise_error
    end
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
