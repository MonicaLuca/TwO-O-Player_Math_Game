class Players 
  attr_accessor :name, :lives_count

  def initialize(name)
    @name = name
    @lives_count = 3
  end

end