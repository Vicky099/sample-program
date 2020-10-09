require 'hpricot'
content = "<p>Hello World.... dsdsdsdsdsd sghasjd ahasvddhsd hasaddvasd"
doc = Hpricot(content)
p doc.inner_text.split.max.size