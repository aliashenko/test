def solution(x, a)

  return -1 if a.reject { |i| i.is_a?(Integer) }.any? || !x.is_a?(Integer)
  return -1 unless a.size.between?(1, 100000) && x.between?(1, 100000) && x <= a.max

  i, time, leaves = 0, 0, []

  while (leaves.length != x) && (i < a.length) do
    unless leaves.include?(a[i])
      leaves << a[i]
      time = i
    end
    i += 1
  end

  leaves.length == x ? time : -1

end
