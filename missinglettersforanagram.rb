def solution(a, b)
  alist = a.scan /\w/
  blist = b.scan /\w/
  counter = {}
  alphabet = ('a'..'z').to_a
  (0..25).each do |n|
    counter[n] = 0
  end
  alist.each do |a|
    index = alphabet.index(a)
    counter[index] = counter[index] + 1
  end
  blist.each do |b|
    index = alphabet.index(b)
    counter[index] = counter[index] - 1
  end
  counter.values.inject(0) {|sum, v| sum + v.abs}
end
