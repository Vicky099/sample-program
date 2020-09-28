hash = { a: { b: { c: 42, d: 'foo' }, d: 'bar' }, e: 'baz' }

y = ->(h, key = nil) do
  h.map do |k, v|
    _k = key ? "#{key}_#{k}" : k.to_s
    v.is_a?(Hash) ? y.call(v, _k) : [_k.to_sym, v]
  end.flatten #⇒ note flatten 
end

p Hash[*y.call(hash)]