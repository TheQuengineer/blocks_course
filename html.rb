
def tag(tag_name)
  print "<#{tag_name}>"
  print yield
  print "</#{tag_name}>"
end

tag(:h1) { "I'm dreaming of a white christmas!" }
puts ''
tag(:h2) { 'Let it Snow!' }
puts ''
tag(:ul) do
  tag(:li) { "It sparkles!"}
  tag(:li) { "It shines!"}
  tag(:li) { "It mesmerizes!"}
end
