class Immortal
    attr_accessor :name, :desc
    
    @@all =[]
    
    def initialize(name = nil, desc = nil)
      @name = name
      @desc = desc
      @@all << self
    end
    
    def self.all 
      @@all
    end
end
