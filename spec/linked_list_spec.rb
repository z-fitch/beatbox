require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    it "exists" do
        node = Node.new("plop")
        list = LinkedList.new
        
        expect(list).to be_instance_of(LinkedList)
        expect(list.head).to eq(nil)
        
    end


end