class ResistorColorDuo

    BAND_COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

    def self.value(color_list)
        return (color_list[0...2].map {|color| BAND_COLORS.find_index(color)}).join("").to_i
    end

end
