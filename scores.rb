scores = [83, 71, 92, 64, 98, 87, 75, 69]
low_scores = scores.reject { | score | score > 80 }
high_scores = scores.select { | score | score > 80 }
failing_scores = scores.any? { | score | score < 70 }
failing_score_number = scores.detect { | score | score < 70 }



puts "High scores are #{high_scores}"
puts "Low scores are #{low_scores}"
puts "Are failing scores present? #{failing_scores}"
puts "That failing score number is #{failing_score_number}"

scores_doubled = scores.map { | score | score * 2 }

puts "Scores Doubled."
puts scores_doubled

total = scores.reduce(0) { | sum, score | sum + score }
puts "Total score : #{total}"

evens, odds = scores.partition { | score | score.even? }

puts "Events:"
p evens
puts "Odds:"
p odds
