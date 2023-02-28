class Queue
    def initialize
        @data =[]
    end

    def push(value)
        @data << value
    end

    def pop
        @data.unshift
    end

    def read
        @data.first
    end
end