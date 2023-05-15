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
    
    describe '#to_string' do
        it "concat data to string" do
            @list.append("doop") 


            expect(@list.to_string).to eq("doop")


        end
        it "concat multiple data to string" do
            @list.append("doop") 
            expect(@list.to_string).to eq("doop")

            @list.append("deep") 

            expect(@list.count).to eq(2)
            expect(@list.to_string).to eq("doop deep")

        end
    end

    describe '#prepend' do
        it "adds data to the front" do
            @list.append("plop")
            @list.to_string
            @list.append("suu")
            @list.prepend("dop")
            @list.to_string

            expect(@list.to_string).to eq("dop plop suu")
            expect(@list.count).to eq(3)

require 'pry'; binding.pry

        end
    end

    describe '#insert' do
        xit "inserts data anywhere" do
            
        end
    end


end