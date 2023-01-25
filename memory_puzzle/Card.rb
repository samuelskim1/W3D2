class Card
    
    attr_reader :face_val, :face_up

    def initialize(face_val, face_up)
        @face_val = face_val
        @face_up = false
    
    end

    def hide
        #if up? = true, change to false
        if @face_up 
            @face_up = false 
        end

    end

    def reveal
        #if up? = false, change to true
        if !@face_up 
            @face = true 
        end
    end

    def to_s
        #either going to show face_value or a empty string
        if @face_up == true
            @face_val
        else
            return "_"
        end
    end

    def ==(other_card)
        self.face_val == other_card.face_val
        #something that checks if the the value of this card is the same as another flipped card
    end

end
