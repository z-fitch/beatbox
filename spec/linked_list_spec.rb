require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    before( :each) do
        @node = Node.new("plop")
        @list = LinkedList.new
    end

    describe '#initialize' do
        it "exists" do
            
            
            expect(@list).to be_instance_of(LinkedList)
            expect(@list.head).to eq(nil)
            expect(@list.head).to eq(nil) 
            
        end
    end
    
    describe '#append' do
        it "appends the argument to data" do
            @list.append("doop")

            expect(@list.head.data).to eq("doop")
            expect(@list.head.next_node).to eq(nil) 
        end
    end

    describe '#count' do
        it "counts all data" do
            @list.append("doop") 

            expect(@list.count).to eq(1)

        end
    end

end