require_relative "Card.rb"

class Board 

    attr_reader :grid

    def initialize
        @grid = Array.new(4){Array.new(4)}
        @card = []
    end

   el =  [["E", "A", "G", "C",], ["F", "F", "E", "B",] ["A", "H", "G", "D"], ["D", "C", "B", "H"]]
   el.each do |row|
    row.shuffle  
   end

    def populate
        face_value_1 = ("A".."H").to_a
        face_value_2 = ("A".."H").to_a
        face_value_pairs = face_value_1 + face_value_2
        shuffled = face_value_pairs.shuffle

        shuffled.each do |ele|
            @grid << Card.new(ele, false)
        end

    end

       

    def render
    end

    def won?
        #
    end

    def reveal
    end

end