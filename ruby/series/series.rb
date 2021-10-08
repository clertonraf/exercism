class Series
    def initialize(sequence)
        @sequence = sequence
    end

    def slices(num_slices)
        if num_slices > @sequence.length
            raise ArgumentError.new("Num of slices bigger than sequence")
        else
            slice_list = []
            @sequence.length.times do |index|
                break if index + num_slices > @sequence.length
                slice_list << @sequence[index...(index+num_slices)]
            end
            slice_list
        end
    end
end
