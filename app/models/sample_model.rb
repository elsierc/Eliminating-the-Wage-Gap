class Career_quiz
    def initialize 
        @statistics = ["teaching/education", "acting/film", "engineering", "law", "medical", "computer science", "politics", 20, 41]
    end
  
    def q1(answer)
        if answer == @statistics[0]
            "teaching"
        elsif answer == @statistics[1]
            "acting_film"
        elsif answer == @statistics[2]
            "engineering"
        elsif answer == @statistics[3]
            "law"
        elsif answer == @statistics[4]
            "medical"
        elsif answer == @statistics[5]
            "computer_engineering"
        elsif answer == @statistics[6]
            "politics"
        end
    end
  
# def q2(answer)
#   if @answer == @statistics[5]
#   end 
# end

# def q3(answer)
#   if @answer == @statistics[7]
#   end 
# end 

# def q4(answer)
#   if @answer == @statistics[8]
#   end 
# end 

def play_quiz(career)
    q1(career)
    # q2(lowest_ratio)
    # q3(wage_gap)
    # q4(pay_parity)
end 

end
