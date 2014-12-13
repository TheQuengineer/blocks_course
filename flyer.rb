class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)


1.upto(5) do | flyer |
  flyers << Flyer.new("Flyer #{flyer}", "#{flyer}@example.com", flyer * 1000)
end

flyers.each { | flyer | puts "#{flyer.name} - #{flyer.miles_flown} miles" }

total = 0
flyers.each do | flyer |
  total += flyer.miles_flown
end

puts "Total miles Flown: #{total}"


promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }

promotions.each { |airline, sale_amount| puts "Earn #{sale_amount}x miles by flying #{airline}"}
