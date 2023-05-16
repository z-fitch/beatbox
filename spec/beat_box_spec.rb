require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"


RSpec.describe BeatBox do
    before( :each) do
        @node = Node.new("plop")
        @list = LinkedList.new
        @bb = BeatBox.new
    end

    describe '#initialize' do
        it "exists" do
            
            expect(@bb).to be_instance_of(BeatBox)
            expect(@bb.list.head).to eq(nil)
        end
    end


end