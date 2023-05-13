

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
        while current_node.next_node != nil
            current_node = current_node.next_node
            current_node.next_node = Node.new(data)
        end
    end
end

def count

end

# def to_string

# end


end


