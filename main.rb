def main(argv)
  tmp_hash = {}
  answer = ""

  (0..argv.length - 2).each do |i|
    tmp_ary = argv[i].split(":")
    tmp_hash["#{tmp_ary[1]}"] = tmp_ary[0].to_i
  end

  Hash[ tmp_hash.sort_by{ |_, v| v } ].each do |key, value|
    if argv.last.to_i % value == 0
      answer = answer + key
    end
  end

  if answer == ""
    puts argv.last
  else
    puts answer
  end
end

main(ARGV)