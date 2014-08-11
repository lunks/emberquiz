if Card.count.zero?
  5.times do |n|
    Card.create question: "Question number #{n}", answer: n
  end
end
