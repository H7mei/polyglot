class Stack
    def initialize
        @data =[]
    end

    def push(value)
        @data << value
    end

    def pop
        @data.pop
    end

    def read
        @data.last
    end
end