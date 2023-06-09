

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

def prepend(data)
    current_node = Node.new(data)
    current_node.next_node = @head
    @head = current_node
end

def count
    counter = 0
    current_node = @head
    until current_node == nil
        current_node = current_node.next_node
        counter += 1
    end
    counter
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

def insert(position, data)
    current_node = @head
    (position - 1).times do
        current_node = current_node.next_node
    end
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node 
    current_node.next_node = new_node 
end

def find(position, amount)
    string = to_string
    full_string = string.split[position, amount].join(" ")
end

def includes?(data)
    string = to_string
    full_string = string.include?(data)
end

def pop 
    if @head == nil
        nil
    else
        current_node = @head
        until current_node.next_node.next_node == nil
            current_node = current_node.next_node
        end
        last_node = current_node.next_node
        current_node.next_node = nil
    end
    last_node
end

end


