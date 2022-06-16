// ignore_for_file: lines_longer_than_80_chars

import 'package:example/movies/models/movie_page.dart';

final pages = [results1, results2, results3].map(MoviePage.fromMap).toList();

const results1 = {
  'page': 1,
  'results': [
    {
      'overview':
          'Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.',
      'popularity': 65.48,
      'poster_path': '/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg',
      'release_date': '1994-09-23',
      'title': 'The Shawshank Redemption',
      'vote_average': 8.7,
    },
    {
      'overview':
          'Raj is a rich, carefree, happy-go-lucky second generation NRI. Simran is the daughter of Chaudhary Baldev Singh, who in spite of being an NRI is very strict about adherence to Indian values. Simran has left for India to be married to her childhood fiancé. Raj leaves for India with a mission at his hands, to claim his lady love under the noses of her whole family. Thus begins a saga.',
      'popularity': 24.501,
      'poster_path': '/2CAL2433ZeIihfX1Hb2139CX0pW.jpg',
      'release_date': '1995-10-20',
      'title': 'Dilwale Dulhania Le Jayenge',
      'vote_average': 8.7,
    },
    {
      'overview':
          'Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.',
      'popularity': 69.005,
      'poster_path': '/3bhkrj58Vtu7enYsRolD1fZdja1.jpg',
      'release_date': '1972-03-14',
      'title': 'The Godfather',
      'vote_average': 8.7,
    },
    {
      'overview':
          'The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.',
      'popularity': 42.279,
      'poster_path': '/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg',
      'release_date': '1993-11-30',
      'title': "Schindler's List",
      'vote_average': 8.6,
    },
    {
      'overview':
          'In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.',
      'popularity': 47.902,
      'poster_path': '/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg',
      'release_date': '1974-12-20',
      'title': 'The Godfather: Part II',
      'vote_average': 8.6,
    },
    {
      'overview':
          'Rihito Sajo, an honor student with a perfect score on the entrance exam and Hikaru Kusakabe, in a band and popular among girls, would have never crossed paths. Until one day they started talking at the practice for their school’s upcoming chorus festival. After school, the two meet regularly, as Hikaru helps Rihito to improve his singing skills. While they listen to each other’s voice and harmonize, their hearts start to beat together.',
      'popularity': 12.1,
      'poster_path': '/cIfRCA5wEvj9tApca4UDUagQEiM.jpg',
      'release_date': '2016-02-20',
      'title': 'Dou kyu sei – Classmates',
      'vote_average': 8.6,
    },
    {
      'overview':
          'A widow who is tormented by the memory of her abusive husband befriends a young man.',
      'popularity': 21.554,
      'poster_path': '/eaf7GQj0ieOwm08rrvjJQNbN0kN.jpg',
      'release_date': '2021-06-17',
      'title': 'Impossible Things',
      'vote_average': 8.5,
    },
    {
      'overview':
          'A young girl, Chihiro, becomes trapped in a strange new world of spirits. When her parents undergo a mysterious transformation, she must call upon the courage she never knew she had to free her family.',
      'popularity': 76.659,
      'poster_path': '/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg',
      'release_date': '2001-07-20',
      'title': 'Spirited Away',
      'vote_average': 8.5,
    },
    {
      'overview':
          'High schoolers Mitsuha and Taki are complete strangers living separate lives. But one night, they suddenly switch places. Mitsuha wakes up in Taki’s body, and he in hers. This bizarre occurrence continues to happen randomly, and the two must adjust their lives around each other.',
      'popularity': 162.669,
      'poster_path': '/q719jXXEzOoYaps6babgKnONONX.jpg',
      'release_date': '2016-08-26',
      'title': 'Your Name.',
      'vote_average': 8.5,
    },
    {
      'overview':
          "An intriguing and sinful exploration of seduction, forbidden love, and redemption, Gabriel's Inferno is a captivating and wildly passionate tale of one man's escape from his own personal hell as he tries to earn the impossible--forgiveness and love.",
      'popularity': 11.101,
      'poster_path': '/oyG9TL7FcRP4EZ9Vid6uKzwdndz.jpg',
      'release_date': '2020-05-29',
      'title': "Gabriel's Inferno",
      'vote_average': 8.5,
    },
    {
      'overview':
          'As the world moves on from the war and technological advances bring changes to her life, Violet still hopes to see her lost commanding officer again.',
      'popularity': 18.778,
      'poster_path': '/bajajkoErDst0JxdFyBkABiF9rW.jpg',
      'release_date': '2020-09-18',
      'title': 'Violet Evergarden: The Movie',
      'vote_average': 8.5,
    },
    {
      'overview':
          "All unemployed, Ki-taek's family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.",
      'popularity': 65.577,
      'poster_path': '/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg',
      'release_date': '2019-05-30',
      'title': 'Parasite',
      'vote_average': 8.5,
    },
    {
      'overview':
          "The defense and the prosecution have rested and the jury is filing into the jury room to decide if a young Spanish-American is guilty or innocent of murdering his father. What begins as an open and shut case soon becomes a mini-drama of each of the jurors' prejudices and preconceptions about the trial, the accused, and each other.",
      'popularity': 24.673,
      'poster_path': '/ppd84D2i9W8jXmsyInGyihiSyqz.jpg',
      'release_date': '1957-04-10',
      'title': '12 Angry Men',
      'vote_average': 8.5,
    },
    {
      'overview':
          "Professor Gabriel Emerson finally learns the truth about Julia Mitchell's identity, but his realization comes a moment too late. Julia is done waiting for the well-respected Dante specialist to remember her and wants nothing more to do with him. Can Gabriel win back her heart before she finds love in another's arms?",
      'popularity': 11.768,
      'poster_path': '/x5o8cLZfEXMoZczTYWLrUo1P7UJ.jpg',
      'release_date': '2020-07-31',
      'title': "Gabriel's Inferno: Part II",
      'vote_average': 8.5,
    },
    {
      'overview':
          "A supernatural tale set on death row in a Southern prison, where gentle giant John Coffey possesses the mysterious power to heal people's ailments. When the cell block's head guard, Paul Edgecomb, recognizes Coffey's miraculous gift, he tries desperately to help stave off the condemned man's execution.",
      'popularity': 52.647,
      'poster_path': '/velWPhVMQeQKcxggNEU8YmIo52R.jpg',
      'release_date': '1999-12-10',
      'title': 'The Green Mile',
      'vote_average': 8.5,
    },
    {
      'overview':
          "A tragic accident lead to Kaori's blindness, but she clings to life and the smaller pleasures it can still afford her. She meets Rui and begins to talk to him. Rui was once a promising kickboxer, but something happened in his past. Kaori's smile brings out a change in Rui. However, the two are connected in more than one way. Rui attempts to do what is right.",
      'popularity': 54.487,
      'poster_path': '/cVn8E3Fxbi8HzYYtaSfsblYC4gl.jpg',
      'release_date': '2020-10-23',
      'title': 'Your Eyes Tell',
      'vote_average': 8.5,
    },
    {
      'overview':
          'Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.',
      'popularity': 83.812,
      'poster_path': '/qJ2tW6WMUDux911r6m7haRef0WH.jpg',
      'release_date': '2008-07-14',
      'title': 'The Dark Knight',
      'vote_average': 8.5,
    },
    {
      'overview':
          "The final part of the film adaption of the erotic romance novel Gabriel's Inferno written by an anonymous Canadian author under the pen name Sylvain Reynard.",
      'popularity': 34.009,
      'poster_path': '/uqmTxOP3gNl5MWRt1wlrUnzTphM.jpg',
      'release_date': '2020-11-19',
      'title': "Gabriel's Inferno: Part III",
      'vote_average': 8.5,
    },
    {
      'overview':
          "A burger-loving hit man, his philosophical partner, a drug-addled gangster's moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.",
      'popularity': 60.982,
      'poster_path': '/fIE3lAGcZDV1G6XM5KmuWnNsPp1.jpg',
      'release_date': '1994-09-10',
      'title': 'Pulp Fiction',
      'vote_average': 8.5,
    },
    {
      'overview':
          r'While the Civil War rages between the Union and the Confederacy, three men, a quiet loner, a ruthless hit man and a Mexican bandit, comb the American Southwest in search of a strongbox containing $200,000 in stolen gold.',
      'popularity': 36.849,
      'poster_path': '/bX2xnavhMYjWDoZp1VM6VnU1xwe.jpg',
      'release_date': '1966-12-23',
      'title': 'The Good, the Bad and the Ugly',
      'vote_average': 8.5,
    }
  ],
  'total_pages': 3
};

const results2 = {
  'page': 2,
  'results': [
    {
      'overview':
          "Aragorn is revealed as the heir to the ancient kings as he, Gandalf and the other members of the broken fellowship struggle to save Gondor from Sauron's forces. Meanwhile, Frodo and Sam take the ring closer to the heart of Mordor, the dark lord's realm.",
      'popularity': 101.006,
      'poster_path': '/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg',
      'release_date': '2003-12-01',
      'title': 'The Lord of the Rings: The Return of the King',
      'vote_average': 8.5,
    },
    {
      'overview':
          'A man with a low IQ has accomplished great things in his life and been present during significant historic events—in each case, far exceeding what anyone imagined he could do. But despite all he has achieved, his one true love eludes him.',
      'popularity': 53.556,
      'poster_path': '/saHP97rTPS5eLmrLQEcANmKrsFl.jpg',
      'release_date': '1994-06-23',
      'title': 'Forrest Gump',
      'vote_average': 8.5,
    },
    {
      'overview':
          'With dreams of diving abroad, Tsuneo gets a job assisting Josee, an artist whose imagination takes her far beyond her wheelchair. But when the tide turns against them, they push each other to places they never thought possible, and inspire a love fit for a storybook.',
      'popularity': 25.607,
      'poster_path': '/z1D8xi9x4uEhyFruo7uEHXUMD4K.jpg',
      'release_date': '2020-12-25',
      'title': 'Josee, the Tiger and the Fish',
      'vote_average': 8.5,
    },
    {
      'overview':
          "A filmmaker recalls his childhood, when he fell in love with the movies at his village's theater and formed a deep friendship with the theater's projectionist.",
      'popularity': 22.458,
      'poster_path': '/8SRUfRUi6x4O68n0VCbDNRa6iGL.jpg',
      'release_date': '1988-11-17',
      'title': 'Cinema Paradiso',
      'vote_average': 8.5,
    },
    {
      'overview':
          "A samurai answers a village's request for protection after he falls on hard times. The town needs protection from bandits, so the samurai gathers six others to help him teach the people how to defend themselves, and the villagers provide the soldiers with food.",
      'popularity': 16.585,
      'poster_path': '/8OKmBV5BUFzmozIC3pPWKHy17kx.jpg',
      'release_date': '1954-04-26',
      'title': 'Seven Samurai',
      'vote_average': 8.5,
    },
    {
      'overview':
          'The true story of Henry Hill, a half-Irish, half-Sicilian Brooklyn kid who is adopted by neighbourhood gangsters at an early age and climbs the ranks of a Mafia family under the guidance of Jimmy Conway.',
      'popularity': 39.381,
      'poster_path': '/aKuFiU82s5ISJpGZp7YkIr3kCUd.jpg',
      'release_date': '1990-09-12',
      'title': 'GoodFellas',
      'vote_average': 8.5,
    },
    {
      'overview':
          'A touching story of an Italian book seller of Jewish ancestry who lives in his own little fairy tale. His creative and happy life would come to an abrupt halt when his entire family is deported to a concentration camp during World War II. While locked up he tries to convince his son that the whole thing is just a game.',
      'popularity': 46.439,
      'poster_path': '/mfnkSeeVOBVheuyn2lo4tfmOPQb.jpg',
      'release_date': '1997-12-20',
      'title': 'Life Is Beautiful',
      'vote_average': 8.5,
    },
    {
      'overview':
          'The lively Jack the Cricket and the sly Chicó are poor guys living in the hinterland who cheat a bunch of people in a small in Northeastern Brazil. When they die, they have to be judged by Christ, the Devil and the Virgin Mary before they are admitted to paradise.',
      'popularity': 8.99,
      'poster_path': '/m8eFedsS7vQCZCS8WGp5n1bVD0q.jpg',
      'release_date': '2000-09-15',
      'title': "A Dog's Will",
      'vote_average': 8.4,
    },
    {
      'overview':
          'A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.',
      'popularity': 24.987,
      'poster_path': '/i0enkzsL5dPeneWnjl1fCWm6L7k.jpg',
      'release_date': '1984-05-23',
      'title': 'Once Upon a Time in America',
      'vote_average': 8.4,
    },
    {
      'overview':
          'Down-on-his-luck veteran Tsugumo Hanshirō enters the courtyard of the prosperous House of Iyi. Unemployed, and with no family, he hopes to find a place to commit seppuku—and a worthy second to deliver the coup de grâce in his suicide ritual. The senior counselor for the Iyi clan questions the ronin’s resolve and integrity, suspecting Hanshirō of seeking charity rather than an honorable end. What follows is a pair of interlocking stories which lay bare the difference between honor and respect, and promises to examine the legendary foundations of the Samurai code.',
      'popularity': 13.52,
      'poster_path': '/w7pWcLaYQkbtRUn99K6ome0DblL.jpg',
      'release_date': '1962-09-15',
      'title': 'Harakiri',
      'vote_average': 8.4,
    },
    {
      'overview':
          'When larcenous real estate clerk Marion Crane goes on the lam with a wad of cash and hopes of starting a new life, she ends up at the notorious Bates Motel, where manager Norman Bates cares for his housebound mother.',
      'popularity': 28.441,
      'poster_path': '/4wZ4Hk7K5kOIPpmUdk2DKHfVeW6.jpg',
      'release_date': '1960-06-22',
      'title': 'Psycho',
      'vote_average': 8.4,
    },
    {
      'overview':
          'In the final months of World War II, 14-year-old Seita and his sister Setsuko are orphaned when their mother is killed during an air raid in Kobe, Japan. After a falling out with their aunt, they move into an abandoned bomb shelter. With no surviving relatives and their emergency rations depleted, Seita and Setsuko struggle to survive.',
      'popularity': 0.6,
      'poster_path': '/qG3RYlIVpTYclR9TYIsy8p7m7AT.jpg',
      'release_date': '1988-04-16',
      'title': 'Grave of the Fireflies',
      'vote_average': 8.4,
    },
    {
      'overview':
          'While serving time for insanity at a state mental hospital, implacable rabble-rouser, Randle Patrick McMurphy, inspires his fellow patients to rebel against the authoritarian rule of head nurse, Mildred Ratched.',
      'popularity': 21.572,
      'poster_path': '/3jcbDmRFiQ83drXNOvRDeKHxS0C.jpg',
      'release_date': '1975-11-18',
      'title': "One Flew Over the Cuckoo's Nest",
      'vote_average': 8.4,
    },
    {
      'overview':
          'A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground "fight clubs" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.',
      'popularity': 52.858,
      'poster_path': '/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg',
      'release_date': '1999-10-15',
      'title': 'Fight Club',
      'vote_average': 8.4,
    },
    {
      'overview':
          'In the aftermath of the Fourth Impact, stranded without their Evangelions, Shinji, Asuka, and Rei find refuge in one of the rare pockets of humanity that still exist on the ruined planet Earth. There, each of them live a life far different from their days as an Evangelion pilot. However, the danger to the world is far from over. A new impact is looming on the horizon—one that will prove to be the true end of Evangelion.',
      'popularity': 109.19,
      'poster_path': '/md5wZRRj8biHrGtyitgBZo7674t.jpg',
      'release_date': '2021-03-08',
      'title': 'Evangelion: 3.0+1.0 Thrice Upon a Time',
      'vote_average': 8.4,
    },
    {
      'overview':
          'Shouya Ishida starts bullying the new girl in class, Shouko Nishimiya, because she is deaf. But as the teasing continues, the rest of the class starts to turn on Shouya for his lack of compassion. When they leave elementary school, Shouko and Shouya do not speak to each other again... until an older, wiser Shouya, tormented by his past behaviour, decides he must see Shouko once more. He wants to atone for his sins, but is it already too late...?',
      'popularity': 124.755,
      'poster_path': '/tuFaWiqX0TXoWu7DGNcmX3UW7sT.jpg',
      'release_date': '2016-09-17',
      'title': 'A Silent Voice: The Movie',
      'vote_average': 8.4,
    },
    {
      'overview':
          'Miles Morales is juggling his life between being a high school student and being a spider-man. When Wilson "Kingpin" Fisk uses a super collider, others from across the Spider-Verse are transported to this dimension.',
      'popularity': 94.268,
      'poster_path': '/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg',
      'release_date': '2018-12-06',
      'title': 'Spider-Man: Into the Spider-Verse',
      'vote_average': 8.4,
    },
    {
      'overview':
          'Buscapé was raised in a very violent environment. Despite the feeling that all odds were against him, he finds out that life can be seen with other eyes...',
      'popularity': 31.032,
      'poster_path': '/k7eYdWvhYQyRQoU2TB2A2Xu2TfD.jpg',
      'release_date': '2002-02-05',
      'title': 'City of God',
      'vote_average': 8.4,
    },
    {
      'overview':
          'One hot summer day a little girl gets lost in an enchanted forest of the mountain god where spirits reside. A young boy appears before her, but she cannot touch him for fear of making him disappear. And so a wondrous adventure awaits...',
      'popularity': 0.6,
      'poster_path': '/mDqzHV8UXWWNpZkoAbKmKX1ZxEE.jpg',
      'release_date': '2011-09-17',
      'title': 'Hotarubi no Mori e',
      'vote_average': 8.4,
    },
    {
      'overview':
          'When Sophie, a shy young woman, is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.',
      'popularity': 74.467,
      'poster_path': '/TkTPELv4kC3u1lkloush8skOjE.jpg',
      'release_date': '2004-11-19',
      'title': "Howl's Moving Castle",
      'vote_average': 8.4,
    }
  ],
  'total_pages': 3
};

const results3 = {
  'page': 3,
  'results': [
    {
      'overview':
          'After 8-year-old So-won narrowly survives a brutal sexual assault, her family labors to help her heal while coping with their own rage and grief.',
      'popularity': 12.792,
      'poster_path': '/z4lNqsc7uhSbtbniOS6r0fTIvv5.jpg',
      'release_date': '2013-10-02',
      'title': 'Hope',
      'vote_average': 8.4,
    },
    {
      'overview':
          'The second of two theatrically released follow-ups to the Neon Genesis Evangelion series. Comprising of two alternate episodes which were first intended to take the place of episodes 25 and 26, this finale answers many of the questions surrounding the series, while also opening up some new possibilities.',
      'popularity': 34.628,
      'poster_path': '/j6G24dqI4WgUtChhWjfnI4lnmiK.jpg',
      'release_date': '1997-07-19',
      'title': 'Neon Genesis Evangelion: The End of Evangelion',
      'vote_average': 8.4,
    },
    {
      'overview':
          'The epic saga continues as Luke Skywalker, in hopes of defeating the evil Galactic Empire, learns the ways of the Jedi from aging master Yoda. But Darth Vader is more determined than ever to capture Luke. Meanwhile, rebel leader Princess Leia, cocky Han Solo, Chewbacca, and droids C-3PO and R2-D2 are thrown into various stages of capture, betrayal and despair.',
      'popularity': 36.639,
      'poster_path': '/2l05cFWJacyIsTpsqSgH0wQXe4V.jpg',
      'release_date': '1980-05-20',
      'title': 'The Empire Strikes Back',
      'vote_average': 8.4,
    },
    {
      'overview':
          'A hack screenwriter writes a screenplay for a former silent film star who has faded into Hollywood obscurity.',
      'popularity': 16.473,
      'poster_path': '/zt8aQ6ksqK6p1AopC5zVTDS9pKT.jpg',
      'release_date': '1950-08-10',
      'title': 'Sunset Boulevard',
      'vote_average': 8.4,
    },
    {
      'overview':
          'In a time of superstition and magic, when wolves are seen as demonic and nature an evil to be tamed, a young apprentice hunter comes to Ireland with her father to wipe out the last pack. But when she saves a wild native girl, their friendship leads her to discover the world of the Wolfwalkers and transform her into the very thing her father is tasked to destroy.',
      'popularity': 19.971,
      'poster_path': '/ehAKuE48okTuonq6TpsNQj8vFTC.jpg',
      'release_date': '2020-10-26',
      'title': 'Wolfwalkers',
      'vote_average': 8.4,
    },
    {
      'overview':
          'Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.',
      'popularity': 95.814,
      'poster_path': '/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg',
      'release_date': '2001-12-18',
      'title': 'The Lord of the Rings: The Fellowship of the Ring',
      'vote_average': 8.4,
    },
    {
      'overview':
          "Genndy Tartakovsky's Primal: Tales of Savagery features a caveman and a dinosaur on the brink of extinction. Bonded by tragedy, this unlikely friendship becomes the only hope of survival.",
      'popularity': 25.828,
      'poster_path': '/gLVhFIZArwuRCt8tin0KRBLk2Qn.jpg',
      'release_date': '2019-11-21',
      'title': 'Primal: Tales of Savagery',
      'vote_average': 8.4,
    },
    {
      'overview':
          "The true story of pianist Władysław Szpilman's experiences in Warsaw during the Nazi occupation. When the Jews of the city find themselves forced into a ghetto, Szpilman finds work playing in a café; and when his family is deported in 1942, he stays behind, works for a while as a laborer, and eventually goes into hiding in the ruins of the war-torn city.",
      'popularity': 35.481,
      'poster_path': '/2hFvxCCWrTmCYwfy7yum0GKRi3Y.jpg',
      'release_date': '2002-09-17',
      'title': 'The Pianist',
      'vote_average': 8.4,
    },
    {
      'overview':
          'Under the direction of a ruthless instructor, a talented young drummer begins to pursue perfection at any cost, even his humanity.',
      'popularity': 55.001,
      'poster_path': '/6uSPcdGNA2A6vJmCagXkvnutegs.jpg',
      'release_date': '2014-10-10',
      'title': 'Whiplash',
      'vote_average': 8.4,
    },
    {
      'overview':
          "Tanjirō Kamado, joined with Inosuke Hashibira, a boy raised by boars who wears a boar's head, and Zenitsu Agatsuma, a scared boy who reveals his true power when he sleeps, boards the Infinity Train on a new mission with the Fire Hashira, Kyōjurō Rengoku, to defeat a demon who has been tormenting the people and killing the demon slayers who oppose it!",
      'popularity': 794.475,
      'poster_path': '/h8Rb9gBr48ODIwYUttZNYeMWeUU.jpg',
      'release_date': '2020-10-16',
      'title': 'Demon Slayer -Kimetsu no Yaiba- The Movie: Mugen Train',
      'vote_average': 8.4,
    },
    {
      'overview':
          'The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.',
      'popularity': 125.712,
      'poster_path': '/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg',
      'release_date': '2014-11-05',
      'title': 'Interstellar',
      'vote_average': 8.4,
    },
    {
      'overview':
          "Derek Vineyard is paroled after serving 3 years in prison for killing two African-American men. Through his brother, Danny Vineyard's narration, we learn that before going to prison, Derek was a skinhead and the leader of a violent white supremacist gang that committed acts of racial crime throughout L.A. and his actions greatly influenced Danny. Reformed and fresh out of prison, Derek severs contact with the gang and becomes determined to keep Danny from going down the same violent path as he did.",
      'popularity': 29.35,
      'poster_path': '/c2gsmSQ2Cqv8zosqKOCwRS0GFBS.jpg',
      'release_date': '1998-07-01',
      'title': 'American History X',
      'vote_average': 8.4,
    },
    {
      'overview':
          'Frodo and Sam are trekking to Mordor to destroy the One Ring of Power while Gimli, Legolas and Aragorn search for the orc-captured Merry and Pippin. All along, nefarious wizard Saruman awaits the Fellowship members at the Orthanc Tower in Isengard.',
      'popularity': 93.673,
      'poster_path': '/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg',
      'release_date': '2002-12-18',
      'title': 'The Lord of the Rings: The Two Towers',
      'vote_average': 8.4,
    },
    {
      'overview':
          'Kanji Watanabe is a middle-aged man who has worked in the same monotonous bureaucratic position for decades. Learning he has cancer, he starts to look for the meaning of his life.',
      'popularity': 8.085,
      'poster_path': '/dgNTS4EQDDVfkzJI5msKuHu2Ei3.jpg',
      'release_date': '1952-10-09',
      'title': 'Ikiru',
      'vote_average': 8.4,
    },
    {
      'overview':
          'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.',
      'popularity': 16.219,
      'poster_path': '/qitnZcLP7C9DLRuPpmvZ7GiEjJN.jpg',
      'release_date': '1954-08-01',
      'title': 'Rear Window',
      'vote_average': 8.4,
    },
    {
      'overview':
          "The film centers on the love relationship among the band's bassist Haruki Nakayama, drummer Akihiko Kaji, and Akihiko's roommate and ex-boyfriend Ugetsu Murata.",
      'popularity': 107.182,
      'poster_path': '/xKCtoYHUyX8zAg68eemnYa2orep.jpg',
      'release_date': '2020-08-22',
      'title': 'Given',
      'vote_average': 8.4,
    },
    {
      'overview':
          "An executive of a shoe company becomes a victim of extortion when his chauffeur's son is kidnapped and held for ransom.",
      'popularity': 8.654,
      'poster_path': '/tgNjemQPG96uIezpiUiXFcer5ga.jpg',
      'release_date': '1963-03-01',
      'title': 'High and Low',
      'vote_average': 8.4,
    },
    {
      'overview':
          "Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel's regime.",
      'popularity': 16.824,
      'poster_path': '/1QpO9wo7JWecZ4NiBuu625FiY1j.jpg',
      'release_date': '1940-10-15',
      'title': 'The Great Dictator',
      'vote_average': 8.4,
    },
    {
      'overview':
          'In this sound-era silent film, a tramp falls in love with a beautiful blind flower seller.',
      'popularity': 11.355,
      'poster_path': '/bXNvzjULc9jrOVhGfjcc64uKZmZ.jpg',
      'release_date': '1931-02-01',
      'title': 'City Lights',
      'vote_average': 8.4,
    },
    {
      'overview':
          "Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: \"inception\", the implantation of another person's idea into a target's subconscious.",
      'popularity': 111.541,
      'poster_path': '/edv5CZvWj09upOsy2Y6IwDhK8bt.jpg',
      'release_date': '2010-07-15',
      'title': 'Inception',
      'vote_average': 8.4,
    }
  ],
  'total_pages': 3
};
