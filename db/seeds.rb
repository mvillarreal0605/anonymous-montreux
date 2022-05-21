comments = %w[yo suh sup daaaamn montreux bla bla bla]

50.times do
  Comment.create!({
    text: comments.sample,
    image: "https://picsum.photos/id/#{[*0..1000].sample}/50/50"
  })
end