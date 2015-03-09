class Test
   def self.log str
    interval = Time.now - (@timer||Time.now)
    @timer = Time.now
    puts "#{(interval*1000).round(2).to_s.rjust(8,' ')}ms: #{str}"
  end

  def self.run
    Test.log "START"

    1000.times do
      @label = rmq(:hello_world_tag).get
    end
    Test.log "time for rmq select to get label: #{@label.text}"

    1000.times do
      @label = Store.hello_world_label
    end
    Test.log "time for class instance variable store to get label: #{@label.text}"
  end
end
