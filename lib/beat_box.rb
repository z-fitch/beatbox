class BeatBox
    attr_reader :list
    
    def initialize()
        @list = LinkedList.new
    end


def append(data)
    split_data = data.split 
    split_data.map do |string|
        @list.append(string)
    end
    data
end

def count
    @list.count
end

def play
    beats = @list.to_string
    puts `say -r 100 -v boing "#{beats}"`
    beats

end

end
