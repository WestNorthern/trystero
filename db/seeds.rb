oedipa = User.create(name: 'Oedipa Maas', email:'projectedworld@kcuf.com', password: 'groovy1', bio: 'Surely I will get to the bottom of this. The heiroglyphic layout of the city, like a ciruit board, holds the keys im sure.', image: 'https://i.pinimg.com/736x/c5/31/5b/c5315b232715a33ba73d9d70abe4c41c---hairstyles-fashion-hairstyles.jpg')
nefastis = User.create(name: 'John Nefastis', email: 'maxwellsdemon@ucstandford.edu', password: 'zeropoint')
mucho = User.create(name: 'Wendell Maas', email: 'graphitedust@kcuf.com', password: 'usedcars', bio: 'Up until recently I was working as a DJ at radio KCUF. Before that I sold cars. Now I travel through the cosmos by looking inward.', image: 'https://media.npr.org/assets/img/2012/03/29/p.44___ralph_lauren_sq-0de7dc5f11f3ae7a4924ae7bec79a126917e0e32-s800-c15.jpg')
hilarius = User.create(name: 'Doctor Hilarius', email: 'scaryfaces@buch.de', password: 'fumanchu', bio: 'I once made a man go utterly insane just by making a sort of funny face. I\'ve found the fu manchu is quite deadly, and no longer practice it in the mirror', image: 'https://i.pinimg.com/736x/b0/02/f0/b002f0436a602f6bc8752c2d480c0935--investigations-long-island.jpg' )
ryan = User.create(name: 'Ryan Arthur', email: 'echosmybae@gmail.com', password: 'overthemoon', bio: 'I am an acolyte web developer and amateur anchorite. I don\'t really know how I have found myself here.', image: 'https://scontent.fsnc1-1.fna.fbcdn.net/v/t31.0-8/10339316_10152821436008758_7797832740839675727_o.jpg?oh=1ae8e2f3618a34ad97429c5e23fc68ad&oe=5A706267')
cohen = User.create(name: 'Ghengis Cohen', email: 'philatelist-king@gmail.com', password: 'stamps!', bio: 'My stamp collection has grown quite immense, but I long for more than the standard writ of Thurn und Taxis. You know where to find me.', image: 'http://mickjagger.wpengine.netdna-cdn.com/files/2013/10/nationalportrait980x534.jpg')
emory = User.create(name: 'Emory Bortz', email: 'heirocity@waste.com', password: 'klonk', image: 'http://assets.nydailynews.com/polopoly_fs/1.1995889.1414898640!/img/httpImage/image.jpg_gen/derivatives/article_750/justice2n-24-web.jpg', bio: 'I am a playwrite of much renown in Los Angeles where I reside. I have followed a particular courrier for hours, and he lead me here...')



oedipa.posts.create(title: 'Hello San Narcissa', content: 'Shall I project to you a world?')
nefastis.posts.create(title: 'Zero Points', content: 'I have done it! My name will last longer than all others in the annals of future history!')
oedipa.posts.create(title: 'LSD?', content: 'I am having a hallucination now, I dont need drugs for that.')
ryan.posts.create(title: 'A Toast!', content: 'Malt can do more than Milton can to justify the ways of God to man.')

