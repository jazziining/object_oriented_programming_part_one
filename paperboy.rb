class Paperboy
  @@min = 50
  attr_reader :earnings
  def initialize (name , experience , earnings)
    @name = name
    @experience = experience #the number of papers they've delivered
    @earnings = earnings
    @total_paid = 0
  end
  def quota
    q = 0.5 * @experience + @@min
  end
  def deliver(start_address , end_address)
    total_house = (end_address - start_address).to_f
    based_paid = 0.25 * total_house
    extra = total_house - quota
      if extra >= 0
        @total_paid = based_paid + extra * 0.5
      else
        @total_paid = based_paid - 2
      end
    @experience = @experience  + total_house
  end
  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@total_paid}"
  end
end

billy=Paperboy.new("Billy" , 50 , 60)
billy.deliver(50 , 60)
billy.report
