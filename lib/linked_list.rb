

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
        until current_node.next_node == nil
            current_node = current_node.next_node
            current_node.next_node = Node.new(data)
        end
    end
end

def count
    count = 0
    if @head == nil
        count = 0
    else
        count = 1
        until @head.next_node == nil
        count += 1
        end
        count
    end
end

#IS AN INFINITE LOOP CTL Z TO STOP

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


