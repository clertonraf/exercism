class HighScores

    def initialize(scores = [])
        @scores = scores
    end

    def scores
        @scores
    end

    def latest
        @scores[-1]
    end

    def personal_best
        @scores.sort.reverse[0]
    end

    def personal_top_three
        @scores.sort.reverse[0...3]
    end

    def latest_is_personal_best?
        latest == personal_best
    end
end
