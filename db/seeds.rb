oedipa = User.create(name: 'Oedipa Maas', email:'projectedworld@kcuf.com', password: 'groovy1')
nefastis = User.create(name: 'John Nefastis', email: 'maxwellsdemon@ucstandford.edu', password: 'zeropoint')
mucho = User.create(name: 'Wendell Maas', email: 'graphitedust@kcuf.com', password: 'usedcars')
hilarius = User.create(name: 'Doctor Hilarius', email: 'scaryfaces@buch.de', password: 'fumanchu')
ryan = User.create(name: 'Ryan Arthur', email: 'echosmybae@gmail.com', password: 'overthemoon')
cohen = User.create(name: 'Ghengis Cohen', email: 'philatelist-king@gmail.com', password: 'stamps!')
emory = User.create(name: 'Emory Bortz', email: 'heirocity@waste.com', password: 'klonk')



oedipa.posts.create(title: 'Hello San Narcissa', content: 'Shall I project to you a world?')
nefastis.posts.create(title: 'Zero Points', content: 'I have done it! My name will last longer than all others in the annals of future history!')
oedipa.posts.create(title: 'LSD?', content: 'I am having a hallucination now, I dont need drugs for that.')
ryan.posts.create(title: 'A Toast!', content: 'Malt can do more than Milton can to justify the ways of God to man.')

