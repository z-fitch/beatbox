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
        end
    end

    describe '#insert' do
        it "inserts data anywhere" do
            @list.append("plop")
            @list.to_string
            @list.append("suu")
            @list.prepend("dop")
            @list.to_string
            @list.insert(1, "woo")


            expect(@list.to_string).to eq("dop woo plop suu")
            expect(@list.count).to eq(4)
        end
    end

    describe '#find' do
        it "find elements" do
            @list.append("deep")
            @list.append("woo")
            @list.append("shi")
            @list.append("shu")
            @list.append("blop")
            
            expect(@list.to_string).to eq("deep woo shi shu blop")
            expect(@list.find(2, 1)).to eq("shi")
            expect(@list.find(1, 3)).to eq("woo shi shu")
        end
    end

    describe '#includes?' do
        it "includes certain elements" do
            @list.append("deep")
            @list.append("woo")
            @list.append("shi")
            @list.append("shu")
            @list.append("blop")

            expect(@list.to_string).to eq("deep woo shi shu blop")
            expect(@list.includes?("deep")).to eq(true)
            expect(@list.includes?("data")).to eq(false)
        end
    end

    describe '#pop' do
        it "removes last node" do
        end
    end
end