arr = [{name: "first", created_at: "2020-10-03"},{name: "second", created_at: "2020-10-01"}]
p arr.sort_by{|h| h[:created_at].split("-").reverse}


