def make_snippet(str)
  new_str = str.split(' ')[0..4].join(' ')
  if new_str.length > 5
    "#{new_str}..."
  else
    str
  end
end
