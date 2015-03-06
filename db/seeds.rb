movie_1 = Movie.create!(title: 'Vulputate Porta', gross_income: 32487263.00, release_date: '2014-07-21', mpaa_rating: 'R', description: 'Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.')
movie_2 = Movie.create!(title: 'Aenean', gross_income: 48357000.00, release_date: '2013-06-11', mpaa_rating: 'PG', description: 'Maecenas faucibus mollis interdum. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.')
movie_3 = Movie.create!(title: 'Magna Elit Dolor', gross_income: 63498573.00, release_date: '2015-02-01', mpaa_rating: 'PG-13', description: 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo.')
movie_4 = Movie.create!(title: 'Venenatis Tristique', gross_income: 3292000.00, release_date: '2014-01-26', mpaa_rating: 'G', description: 'Curabitur blandit tempus porttitor. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum.')
movie_5 = Movie.create!(title: 'Mollis', gross_income: 54930868.00, release_date: '2012-12-21', mpaa_rating: 'R', description: 'Etiam porta sem malesuada magna mollis euismod. Donec ullamcorper nulla non metus auctor fringilla. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.')

movie_1.reviews << Review.create!(user: 'Jane Jackson', body: 'Donec ullamcorper nulla non metus auctor fringilla.', rating: 3)

movie_2.reviews << Review.create!(user: 'Sally Smith', body: 'Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna.', rating: 4)

movie_2.reviews << Review.create!(user: 'Joe Schmoe', body: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue.', rating: 1)

movie_2.reviews << Review.create!(user: 'Sam Seeds', body: 'Cras mattis consectetur purus sit amet fermentum.', rating: 5)

movie_3.reviews << Review.create!(user: 'John Jacobs', body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.', rating: 2)

movie_4.reviews << Review.create!(user: 'Sally Smith', body: 'Cras mattis consectetur purus sit amet fermentum.', rating: 4)

movie_4.reviews << Review.create!(user: 'Sally Smith', body: 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.', rating: 3)

movie_5.reviews << Review.create!(user: 'Bob Cat', body: 'Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.', rating: 4)
