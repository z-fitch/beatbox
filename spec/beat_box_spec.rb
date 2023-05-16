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
    
    describe '#append' do
        it "appends more than one node" do
            @bb.append("deep doo ditt")
         

            expect(@bb.list.head.data).to eq("deep")
            expect(@bb.list.head.next_node.data).to eq("doo")
        end
    end
    
    describe '#count' do
        it "counts the nodes" do
            @bb.append("deep doo ditt")
            @bb.append("woo hoo shu")

            expect(@bb.count).to eq(6)

        end
    end

    describe '#play' do
        it "plays the beat" do
            @bb.append("deep doo ditt woo hoo shu")
            @bb.play

            expect(@bb.list.count).to eq(6)
            expect(@bb.play).to eq("deep doo ditt woo hoo shu")
            
        end
    end
end