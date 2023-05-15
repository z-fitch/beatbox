

class LinkedList
    attr_reader :head
    
    def initialize()
        @head = nil
    end


def append(data)
    if @head == nil
        @head = Node.new(data)
    else
        current_node = @head
        new_node = Node.new(data)
        while current_node.next_node != nil
            current_node = current_node.next_node
        end
        current_node.next_node = new_node
    end
end

def count
    counter = 0
    current_node = @head
    until current_node == nil
    current_node = current_node.next_node
    counter += 1
    end
    counter
    
    
    
    
    # if @head == nil
    #     counter = 0
    # else
    #     counter = 1
    #     until @head.next_node == nil
    #     counter += 1
    #     end
    #     counter
    # end
end



def to_string
    current_node = @head
    bb = []
        until current_node == nil
            bb << current_node.data
            current_node = current_node.next_node
        end
    bb.join(" ")
end

end


