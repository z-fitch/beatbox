
require "./lib/node"


RSpec.describe Node do
    it "exists" do
        node = Node.new("plop")
        
        
        expect(node).to be_instance_of(Node)
        
    end

end
