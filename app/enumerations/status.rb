class Status < EnumerateIt::Base
  associate_values pending: 1, approved: 2

  sort_by :value
end
