p "Vikram".each_char.with_object(Hash.new(0)){|ch, h| h[ch] += 1}