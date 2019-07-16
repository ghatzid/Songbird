##User.create! method "works just like the create method...except that it raises an ActiveRecord::Record-Invalid exception if the creation fails."
Song.create!(title: "Old Town Road", release_year:2019)
Song.create!(title: "New Town Road", release_year:2022)
Song.create!(title: "Recent City Drive", release_year:2020)
Song.create!(title: "Wish You Were Here", release_year:1975)
Song.create!(title: "Sandwich Boy (Becomes a Sandwich Man)", release_year:2019)


