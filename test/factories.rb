# Factories for various frequently used objects
Factory.define :user do |u|
  u.email       'user@bramanga.com'
end

Factory.define :bill do |b|
  b.name        'DTE'
  b.amount      '60'
  b.posted_by   'Tester'
  b.posted_date '12/12/24'
  b.due_date    '12/12/25'
end

