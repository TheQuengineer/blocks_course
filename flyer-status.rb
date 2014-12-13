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

frequent_flyers = flyers.select { | flyer| flyer.miles_flown >= 3000 }
puts "Frequent Flyers: "
puts frequent_flyers

sporadic_flyers = flyers.reject { | flyer | flyer.miles_flown >= 3000 }
puts "Sporadic Flyers: "
puts sporadic_flyers

platinum_flyers = flyers.any? { | flyer | flyer.status == :platinum }

puts "Platinum Flyers available?"
puts platinum_flyers


potential_flyers = flyers.detect { | flyer | flyer.status == :bronze }

puts "Potential Flyers"
puts potential_flyers


platinum, por_saps_in_coach = flyers.partition { | flyer | flyer.status == :platinum }

puts "Platinum flyers:"
p platinum

puts "All other poor saps."
p por_saps_in_coach


name_tag_format = flyers.map { | flyer | "#{flyer.name}(#{flyer.status.upcase})"}

puts "Name Tag Format: "
puts name_tag_format

totals_in_kms = flyers.map { |flyer| flyer.miles_flown * 1.6 }
puts "Flyer miles in kilometers"
p totals_in_kms


total_miles_flown = flyers.reduce(0) { |sum, flyer| sum + flyer.miles_flown }

puts "Total miles flown: #{total_miles_flown}"

total_kms_flown = flyers.map { |flyer| flyer.miles_flown * 1.6 }.reduce(0, :+)
puts "Total km flown: #{total_kms_flown}"
