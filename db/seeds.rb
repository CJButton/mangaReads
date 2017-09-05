# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "Guest", password: "password", email: "guest@mangareads.com")
Bookshelf.create({user_id: 1, title: "Want-To-Read"})
Bookshelf.create({user_id: 1, title: "Read"})
Bookshelf.create({user_id: 1, title: "Currently-Reading"})




Manga.create(title:"Dragon Ball, Vol. 2: Wish upon a Dragon",
             author:"Akira Toriyama",
             synopsis:"Dragon Ball introduces a young monkey-tailed boy named Goku (a wry update of the classic Chinese Monkey King legend), whose quiet life changes when he meets a girl named Bulma who is on a quest to collect seven Dragon Balls. If she gathers them all, an incredibly powerful dragon will appear and grant her one wish. But the precious orbs are scattered all over the world, and Bulma could use the help of a certain super-strong boy... (In Japan, Dragon Ball and Dragon Ball Z were originally a single 42-volume series. VIZ Media's Dragon Ball contains vols. 1-16 of the original Japanese Dragon Ball , from the beginning of the series to the climax of Goku's last fight with Piccolo.)",
             release_date: "January 10, 1986",
             img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478851605/manga%20covers/dragonball2.jpg",
             genre: ["Adventure", "Martial arts", "Sci-Fi"])

Manga.create(title:"Dragon Ball, Vol. 7: General Blue and the Pirate Treasure",
             author:"Akira Toriyama",
             synopsis:"Only Goku, Bulma and Kuririn stand between the Red Ribbon Army and the seven Dragon Balls which can grant any wish in the world! Using a submarine loaned by Kame-Sen'nin, the heroic trio explores a pirate's undersea cave in search of the next Dragon Ball , but gun-toting bad guys are on their tail! Now they must face not only perilous pirate traps but the sinister General Blue, a martial artist with powers even Goku doesn't have! Can they escape the cave alive? As the battle continues, Goku and General Blue go to Penguin Village, the home of the weird scientist Dr. Slump and one of the strangest places on Earth!",
             release_date: "May 8, 1987",
             img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478899770/manga%20covers/dragonball7.jpg",
             genre: ["Adventure", "Martial arts", "Sci-Fi"])

Manga.create(title:"Dragon Ball, Vol. 1: The Monkey King",
             author:"Akira Toriyama",
             synopsis:"Before there was Dragon Ball Z , there was Akira Toriyama's action epic Dragon Ball , starring the younger version of Son Goku and all the other Dragon Ball Z heroes! Meet a naive young monkey-tailed boy named Goku, whose quiet life changes when he meets Bulma, a girl who is on a quest to collect seven Dragon Balls. If she gathers them all, an incredibly powerful dragon will appear and grant her one wish. But the precious orbs are scattered all over the world, and Bulma needs Goku's help (and his super-strength)! With a magic staff for a weapon and a flying cloud for a ride, Goku sets out on the adventure of a lifetime...",
             release_date: "September 10, 1985",
             img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478851476/manga%20covers/dragonball1.jpg",
             genre: ["Adventure", "Martial arts", "Sci-Fi"])

Manga.create(title:"Dragon Ball, Vol. 5: The Red Ribbon Army",
             author:"Akira Toriyama",
             synopsis:"In the final round of the Strongest under the Heavens martial arts competition, it's down to Goku vs. Jackie Chun, the mysterious old man who's as powerful as Kame-Sen'nin himself! Will the audience survive the confrontation? After the smoke clears, Goku jumps on his flying cloud and returns to his quest to find the seven Dragon Balls, but now he's not the only one looking for them. The evil Red Ribbon Army wants the Dragon Balls for themselves, and to stop their plans, Goku must go around the world--and survive the six deadly floors of Colonel White's fortress, Muscle Tower!",
             release_date: "January 9, 1986",
             img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478899763/manga%20covers/dragonball5.jpg",
             genre: ["Adventure", "Martial arts", "Sci-Fi"])

Manga.create(title:"Dragon Ball, Vol. 6: Bulma Returns!",
             author:"Akira Toriyama",
             synopsis:"In the frozen north, Goku's one-man fight against the Red Ribbon Army continues as he storms the perilous Muscle Tower! Can he defeat General White's squad of ninjas, cyborgs, and worse, and save the peaceful people of Jingle Village from their oppressors? Then, Goku travels to the City of the West to visit his old friend Bulma, who joins him on his quest, bringing her latest inventions. Their quest for the next Dragon Ball takes them around the world to a jungle island in the South Seas...but to get THIS Dragon Ball they'll have to go through General Blue! ",
             release_date: "January 9, 1987",
             img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478899771/manga%20covers/dragonball6.jpg",
             genre: ["Adventure", "Martial arts", "Sci-Fi"])

Manga.create(title:"Dragon Ball, Vol. 3: The Training of Kame-Sen'nin",
             author:"Akira Toriyama",
             synopsis:"With the Dragon Balls gone and Bulma's summer vacation over, Goku goes to the remote house of the Turtle Hermit, Kame-Sen'nin, to be trained in the martial arts. There, the girl-ogling old master promises to teach Goku everything he knows...and prepare him for the Tenka'ichi Budôkai, the great tournament to determine the Strongest Fighter in the World! But Goku's fellow student, the Shaolin monk Kuririn, isn't above cheating to be the best. Can the two of them get along as they undergo the strangest martial arts training ever?",
             release_date: "June 10, 1986",
             img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478899652/manga%20covers/dragonball3.jpg",
             genre: ["Adventure", "Martial arts", "Sci-Fi"])

Manga.create(title:"Dragon Ball, Vol. 4: Strongest Under the Heavens ",
             author:"Akira Toriyama",
             synopsis:"Goku has made it to the Tenka'ichi Budôkai, the world's #1 martial arts tournament...but even the training of the martial arts master Kame-Sen'nin hasn't prepared him for this! Only seven finalists remain. Will the champion be Goku? His fellow student Kuririn? Yamcha, master of the Fist of the Wolf Fang? Fighting woman Ran Fuan? Giran, a rubbery monster who's part dinasaur? Namu, an Indian mystic? Or Jackie Chun, the mysterious old man who may be the toughest fighter of all? There can be only one winner in the wildest, craziest battle ever!",
             release_date: "October 9, 1986",
             img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478899757/manga%20covers/dragonball4.jpg",
             genre: ["Adventure", "Martial arts", "Sci-Fi"])

Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.2",
             author:"Nobuhiro Watsuki",
             synopsis:"When the chief of the Police Sword Corps himself comes asking for favors, things must be bad. Hitokiri Udô Jin-e--a black-hatted, crazy-eyed slayer who fells both targets and innocent bystanders alike--is steadily working his way through a list of former Ishin Shishi patriots now ensconced within position of power in the Meiji government. Can Kenshin withstand the hypnotic, paralyzing effect of Jin-e...? ",
             release_date: "December 2, 1994",
             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478548454/manga%20covers/kenshin2.jpg",
             genre: ["sword-fighting"])

Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.4",
             author:"Nobuhiro Watsuki",
             synopsis:"Shinomori Aoshi was once the leader of Edo Castle's elite guard, the Oniwabanshû. But with the fighting at an end and the shôgunate overthrown, the brilliant Aoshi and his four most loyal onmitsu, or spies, find themselves without a home or a purpose. When fighting is your life, loyalty to those lost ideals (and to the man who most symbolized them) may be the one thing left. But Megumi's life is at stake, and however sympathetic Kenshin may feel, he will fight on, to the last man if necessary...",
             release_date: "April 4, 1995",
             img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478548454/manga%20covers/kenshin4.jpg",
             genre: ["sword-fighting"])

Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.5",
             author:"Nobuhiro Watsuki",
             synopsis:"Isurugi Raijûta, a truly old-school swordsman, comes to Kenshin and requests his aid in reforming the state of swordsmanship schools, or kenjutsu dojo, in Japan. Although Kenshin is intrigued by Raijûta's ideals (chiefly, that there is a need for a nation-wide, unifying school), Raijûta's plan to weed out the schools he deems unfit is not in accordance with Kenshin's deepest-held beliefs. Given the choice of either joining Raijûta's Shinko-ryû movement or dying, Kenshin walks away, choosing neither. But Raijûta isn't willing to let Kenshin off the hook so easily...",
             release_date: "June 2, 1995",
             img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478548454/manga%20covers/kenshin_5.jpg",
             genre: ["sword-fighting"])

Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.7",
             author:"Nobuhiro Watsuki",
             synopsis:"The Shinsengumi--fearsome and formidable protectors of the Shôgunate. Kenshin knows them well, having done battle with them during the final days of the Meiji Restoration. One man in particular--Saitô Hajime, captain of the third unit--lingers in Kenshin's mind. Now an officer of the law and known as Fujita Gorô, Saitô arrives on the steps of the Kamiya Dojo, challenging Kenshin to a duel that will force a reawakening of Kenshin's own past. But the confrontation with Saitô is just the beginning of something much larger, something that will involve the future of the new Japan... ",
             release_date: "October 4, 1995",
             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478548454/manga%20covers/kenshin_7.jpg",
             genre: ["sword-fighting"])

Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.3",
             author:"Nobuhiro Watsuki",
             synopsis:"Spider's Web...like ordinary opium, but better processed. Half the cost to produce, but twice the profits! To the people of Aizu, Takani Megumi was a daughter in a famous family of doctors, in which everyone--women and children alike--studied medicine. But to grasping industrialist Takeda Kanryû, she is the hen who lays the golden egg--the only one who knows the Spider\'s Web formula! To stay with Kanryû is to send even more to their deaths. But to stay with Kenshin and the others is to invite theirs...",
             release_date: "February 2, 1995",
             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478548454/manga%20covers/kenshin3.jpg",
             genre: ["sword-fighting"])

Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.1",
             author:"Nobuhiro Watsuki",
             synopsis:"During the Meiji 11th (1878), a peaceful wanderer called Himura Kenshin, formerly known as the Hitokiri Battōsai, arrives in Tokyo, where he meets Kamiya Kaoru whose swordsmanship school is in danger as a murderer from the city claims to be from that school. After investigating, Kenshin defeats the murderer using his sakabatō sword, which has a reversed blade, making it almost impossible to kill someone. When Kenshin decides to leave Tokyo, Kaoru offers him a place to live in her dojo. During his stay in the dojo, Kenshin rescues an orphan called Myōjin Yahiko from a group of yakuza and takes him to live and train in the dojo. A few days later, a fight merchant named Sagara Sanosuke is hired to attack Kenshin. The volume ends with a one-shot by Watsuki called Rurouni Meiji Swordsman Romantic Story.",
             release_date: "September 2, 1994",
             img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478411691/Extras/kenshin_vol1.jpg",
             genre: ["sword-fighting"])

Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.6",
             author:"Nobuhiro Watsuki",
             synopsis:"Kenshin's battle with Raijûta to decide the fate of Meiji Era swordsmanship is coming to a head. One fact is quickly becoming apparent: Raijûta will stop at nothing to ensure the supremacy of his own school of sword-fighting! Reunited with a member of the former Sekihô Army--that doomed civilian unit--Sanosuke runs into trouble of his own. Old alliances are challenged when a plan to topple the current government by any means necessary is shared...and as his friend puts it, Sano's either in, or in the way. Plus a bonus installment containing the first story Nobuhiro Watsuki ever published!",
             release_date: "August 4, 1995",
             img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_400/v1478548454/manga%20covers/kenshin_6.jpg",
             genre: ["sword-fighting"])

Manga.create(title:"Cowboy Bebop, Vol. 1",
             author:"Yutaka Nanten",
             synopsis:"From one of the most popular anime series of all time comes a manga to match. Spinning off from the anime story line seen on Cartoon Network, the manga series hooks readers with the same combination of Sci Fi action, crazy comedy, and a twist of old-school hipster cool. This black-and-white miniseries, released in the 100% Authentic Manga format, is perfect for fans of the Cowboy Bebop anime.",
             release_date: "May 1, 1998",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478900237/manga%20covers/bebop1.jpg",
             genre: ["Neo noir", "Space Western"])

Manga.create(title:"Cowboy Bebop: Shooting Star, Volume 2",
             author:"Cain Kuga, Hajime Yatate",
             synopsis:"Cowboy Bebop: Shooting Star is an alternate telling of the famous television show that contains all the same intrigue, adventure, action and gritty noir ambience of its small screen counterpart. A fantastic yarn in its own right, this two-volume series is a perfect addition to any Cowboy Bebop collection.",
             release_date: "October 1, 1998",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478900237/manga%20covers/bebop2.jpg",
             genre: ["Neo noir", "Space Western"])

Manga.create(title:"Cowboy Bebop, Vol. 2",
             author:"Yutaka Nanten",
             synopsis:"The hippest bounty hunters in the galaxy are back! Spike Siegel Jet Black and Faye Valentine are on the hunt for new targets inspired by the hit anime series. Cowboy Bebop blends science fiction spaghetti westerns film noir and jazz music into a new genre that s all about style.",
             release_date: "November 1, 1999",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478900237/manga%20covers/bebop3.jpg",
             genre: ["Neo noir", "Space Western"])

Manga.create(title:"Azumanga Daioh Vol. 3",
             author:"Kiyohiko Azuma",
             synopsis:"The girls enter their senior year and Miss Yukari speaks ill of Tomo in the third volume of Azumanga Daioh! This volume marks the return of the sports meet, where Sakaki, Osaka, Kagura and the others compete in categories like the three-legged race and beanbag tossing, while Chiyo-chan races to find an idiot for the scavenger hunt... The manga also includes a First Dream of the New Year special, where Sakaki meets Chiyo-chan's tomato-hating father and his penguin housekeeper... Will Osaka succeed in her resolution to get faster? Will Kaorin ever let go of Sakaki? Find out in Azumanga Daioh volume 3!",
             release_date: "February 24, 2004",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478901217/manga%20covers/azu3.jpg",
             genre: ["Comedy", "Slice-of-Life"])

Manga.create(title:"Azumanga Daioh Vol. 4",
             author:"Kiyohiko Azuma",
             synopsis:"The gang of high schoolers takes a trip to sunny Okinawa, where Osaka plays with sea cucumbers. Yomi announces her intention to join InterPol, and Sakaki gets a cat that will let her pet it. When the gang gets together for a camping trip, Mr. Kimura makes his big confession to one of the students. This volume is a part of the popular series.",
             release_date: "April 20, 2004",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478901216/manga%20covers/azu4.jpg",
             genre: ["Comedy", "Slice-of-Life"])

Manga.create(title:"Azumanga Daioh Vol. 2",
             author:"Kiyohiko Azuma",
             synopsis:"It's not manga, it's Azumanga (and it's smart, fun and totally addictive)! Created by the iconoclastic Kiyohiko Azuma (hence the name), Azumanga Daioh is strongly character driven, telling the story of a group of high-school girls and their hilarious daily tribulations.",
             release_date: "November 18, 2003",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478901217/manga%20covers/azu2.jpg",
             genre: ["Comedy", "Slice-of-Life"])

Manga.create(title:"Azumanga Daioh Vol. 1",
             author:"Kiyohiko Azuma",
             synopsis:"It's tough to tell the difference between teacher and students in Azuma's comedy. Teacher Yukari Tanizaki is oblivious, immature, emotional and one of the people shaping young minds. Her students face difficulties in school that most never imagined. For example, as one pupil starts to ask a question, Miss Yukari cuts him off, stating she won't talk about her bra size. Another group of students are ready for their lessons, but instead of learning about social studies or science, they learn how Miss Yukari spent her weekend. Maybe that's not so bad, considering Miss Yukari's not the brightest bulb in the bunch and has her students correcting her on many technical points. Her students aren't sure how to react, but their bewilderment is half the charm of this manga. Like the 1980s TV series Head of the Class, Azu has an eclectic mix of pupils ranging from child geniuses to sports enthusiasts to tough girls; each possessing much more than meets the eye. The precocious child genius may be great at academic subjects, but she still draws like a little girl and has the emotions of a kid. The unemotional tough teen melts for tiny animals and longs to have a pet of her own, even if all of the creatures she comes in contact with seem to hate her. The art is simple and minimalistic, but adequately conveys the thought and emotion behind each strip. Azuma's cast has depth, dimension and character, and their story heartily entertains.",
             release_date: "September 16, 2003",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478901217/manga%20covers/azu1.jpg",
             genre: ["Comedy", "Slice-of-Life"])

Manga.create(title:"Trigun: Deep Space Planet Future Gun Action!! Vol. 1",
             author:"Yasuhiro Nightow",
             synopsis:" Action, comedy, science fiction, and western gunslinger action congregate within these pages. Created by Yasuhiro Nightow, this compound of genre-bending ingredients has turned the Trigun animation into a wildly popular series, and finally, the long-awaited manga comes to America. Somehow the past has placed a sixty billion double dollar bounty on Vash's head, and the gunslinging pacifist can't seem to get away from money grubbing, itchy-trigger-finger citizenry. Find out why Vash is worth so much money dead! Feel the clumsy worry of the unfortunate citizens of the pulverous planet! ",
             release_date: "July 1, 1998",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478901217/manga%20covers/tri_1.jpg",
             genre: ["Weird", "Space Western", "Action", "Adventure", "Comedy-Drama"])

Manga.create(title:"Trigun Maximum Volume 3: His Life As A ...",
             author:"Yasuhiro Nightow",
             synopsis:"Trigun Maximum Volume 3 is intensity embodied — a front to back fight! Vash the Stampede and the mysterious Wolfwood versus the terribly resilient Gray the Ninelives and one of Yasuhiro Nightow's most curious villains, the completely frightening puppet master, Leonoff. The Gung-Ho Guns get harder and harder to beat as the philosophical tension between our two heroes grows daily.",
             release_date: "February 1, 1999",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478901216/manga%20covers/tri3.jpg",
             genre: ["Weird", "Space Western", "Action", "Adventure", "Comedy-Drama"])

Manga.create(title:"Trigun: Deep Space Planet Future Gun Action!! Vol. 2",
             author:"Yasuhiro Nightow",
             synopsis:"There's a mysterious past buried in the mind of the affable, yet somehow incredibly dangerous Vash the Stampede, and everyone on this desert planet seems to know about it. Not only that, they've been trying to hunt him down for the sixty million double-dollar bounty on his head. Well, enter two insurance adjuster ladies, claiming that the man is a localized disaster, and voila! No more bounty. But that doesn't seem to end Vash's troubles, or his trail of destruction.",
             release_date: "January 22, 2000",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478901216/manga%20covers/tri2.jpg",
             genre: ["Weird", "Space Western", "Action", "Adventure", "Comedy-Drama"])

Manga.create(title:"Full Metal Panic! Volume 2",
             author:"Shouji Gatou,",
             synopsis:"The students of Jindai High are bound of Okinawa on a field trip, but a hijacking changes their plans! Among the hijackers is Gauron, a mortal enemy Sosuke thought he'd killed years ago. But Gauron is after only one of the students on board...Kaname! The information she carries could be the key to maintaining the balance of power. When they single her out, it's up to Sosuke to save the day again, and a crushing mecha battle for Kaname's freedom ensues. ",
             release_date: "March 18, 1999",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478901218/manga%20covers/fullmetal1.jpg",
             genre: ["Action", "Comedy-Drama", "Romance", "Mecha", "Military" "Sci-Fi"])

Manga.create(title:"R.O.D. Read or Die 3",
             author:"Hideyuki Kurata, Hideyuki Kurata, Shutaro Yamada",
             synopsis:"Yomiko Readman's love for literature goes far beyond any run-of-the-mill bookworm's! In fact, she has a supernatural ability to manipulate paper in the most amazing ways. From turning a tiny scrap into a lethal throwing dagger to making a single sheet hard enough to block bullets, she's only limited by her imagination. She uses her phenomenal power to seek out legendary books containing secret information that in the wrong hands could be dangerous. Backed by a Special Operations Division in England, Yomiko has her hands full battling evildoers, saving the world, and trying to find time to curl up with a good book.",
             release_date: "January 2, 2002",
             img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/v1478901216/manga%20covers/rod1.jpg",
             genre: ["Spy", "Supernatural", "Sci-Fi"])



Manga.create(title: "One Punch Vol. 1",
             author: "One",
             synopsis: "A manga series that packs quite the punch! Nothing about Saitama passes the eyeball test when it comes to superheroes, from his lifeless expression to his bald head to his unimpressive physique. However, this average-looking guy has a not-so-average problem—he just can’t seem to find an opponent strong enough to take on! Every time a promising villain appears, he beats the snot out of ’em with one punch! Can Saitama finally find an opponent who can go toe-to-toe with him and give his life some meaning? Or is he doomed to a life of superpowered boredom?",
             release_date: "December 12, 2012",
             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167721/onepunch1_mkmmb3.jpg",
             genre: ["Action", "Parody", "Superhero"])

Manga.create(title: "One Punch Man: The Secret To His Strength Vol. 2",
            author: "One",
            synopsis: "Saitama’s easily taken out a number of monsters, including a crabby creature, a malicious mosquito girl and a muscly meathead. But his humdrum life takes a drastic turn when he meets Genos—a cyborg who wants to uncover the secret behind his strength!",
            release_date: "December 12, 2012",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167721/onepunch2_lcnzsy.jpg",
            genre: ["Action", "Parody", "Superhero"])

Manga.create(title: "One Punch Man: The Rumor Vol. 3",
            author: "One",
            synopsis: "For three years, Saitama has defeated countless monsters, but no one knows about him… That’s because he isn’t in the Hero Association’s registry! Together with Genos, Saitama decides to take the Hero Association’s test! But can they pass?!",
            release_date: "April 4, 2013",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167721/onepunch3_v8w7lx.jpg",
            genre: ["Action", "Parody", "Superhero"])

Manga.create(title: "One Punch Man: Giant Meteor Vol. 4",
            author: "One",
            synopsis: "Saitama is now a certified hero! And with that title comes great responsibility—he’s required to perform one heroic deed per week. While Saitama makes the rounds to meet his quota, an incoming threat from outer space is screeching toward Earth...",
            release_date: "August 2, 2013",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483168076/onepunch4_wkmgjm.jpg",
            genre: ["Action", "Parody", "Superhero"])

Manga.create(title: "One Punch Man: Shining in Tatters Vol. 5",
            author: "One",
            synopsis: "To stop a Demon-level crisis, Saitama and company head toward the action. However, even Class-S heroes prove to be no match for the Deep Sea King! In order to protect the good citizens, our heroes will need to summon all of their courage and confront this threat!",
            release_date: "December 4, 2013",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167721/onepunch5_bskv9p.jpg",
            genre: ["Action", "Parody", "Superhero"])

Manga.create(title: "One Punch Man: The Big Prediction Vol. 6",
            author: "One",
            synopsis: "An emergency summons gathers Class S heroes at headquarters…and Saitama tags along. There, they learn that the great seer Shibabawa left the following prophecy: “The Earth is in danger!” What in the world is going to happen?!",
            release_date: "May 2, 2014",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167944/onepunch6_jgvrhl.jpg",
            genre: ["Action", "Parody", "Superhero"])

Manga.create(title: "One Punch Man: The Fight Vol. 7",
            author: "One",
            synopsis: "When aliens invade Earth, a group of Class-S heroes finally finds a way to fight back and go on the offensive. Inside the enemy mother ship, Saitama fights Boros. Faced with the alien’s frightful power, he decides to get serious! What is the Earth’s fate?!",
            release_date: "December 4, 2014",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167720/onepunch7_e80ljs.jpg",
            genre: ["Action", "Parody", "Superhero"])

Manga.create(title: "One Punch Man: That Man Vol. 8",
            author: "One",
            synopsis: "Class-S hero King is known as the strongest man on earth. Even monsters fear him. But when a mysterious organization sends an assassin after him, the shocking truth about King is revealed!",
            release_date: "April, 2015",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167721/onepunch8_n9bhlv.jpg",
            genre: ["Action", "Parody", "Superhero"])

Manga.create(title: "One Punch Man: Don't Dis Heroes Vol. 9",
            author: "One",
            synopsis: "Garo, a man who admires monsters, attacks the Hero Association! But after pulverizing the heroes there, he just leaves. What the heck does this guy want?! Meanwhile, Class-B, Rank-1 Miss Blizzard visits Saitama at his apartment. Since he’s just a low-ranking hero, she thinks she can make him one of her subordinates, but as always, Saitama has other plans!",
            release_date: "August 9, 2015",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167720/onepunch9_iqwtow.jpg",
            genre: ["Action", "Parody", "Superhero"])

Manga.create(title: "One Punch Man: Pumped Up Vol. 10",
            author: "One",
            synopsis: "Hero hunter Gato intensifies his onslaught, so of course Saitama decides now is the perfect time to join a combat tournament. Meanwhile, Class-S hero Metal Bat takes an assignment guarding a Hero Association executive and his son, and before long trouble appears!",
            release_date: "December 4, 2015",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167721/onepunch10_ry24vh.jpg",
            genre: ["Action", "Parody", "Superhero"])

Manga.create(title: "Attack on Titan Vol. 1",
            author: "Hajime Isayama",
            synopsis: "In this post-apocalytpic sci-fi story, humanity has been devastated by the bizarre, giant humanoids known as the Titans. Little is known about where they came from or why they are bent on consuming mankind. Seemingly unintelligent, they have roamed the world for years, killing everyone they see. For the past century, what's left of man has hidden in a giant, three-walled city. People believe their 100-meter-high walls will protect them from the Titans, but the sudden appearance of an immense Titan is about to change everything.",
            release_date: "March 17, 2010",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167720/attack1_b13gbw.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 2",
            author: "Hajime Isayama",
            synopsis: "The Colossal Titan has breached humanity’s first line of defense, Wall Maria. Mikasa, the 104th Training Corps’ ace and Eren’s best friend, may be the only one capable of defeating them, but beneath her calm exterior lurks a dark past. When all looks lost, a new Titan appears and begins to slaughter its fellow Titans. Could this new monster be a blessing in disguise, or is the truth something much more sinister?",
            release_date: "July 16, 2010",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167720/attack2_dg3fd2.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 3",
            author: "Hajime Isayama",
            synopsis: "The last thing Eren remembers before blacking out, a Titan had bitten off his arm and leg and was getting ready to eat him alive. Much to his surprise he wakes up without a scratch on him, with a crowd of angry soldiers screaming for his blood. What strange new power has he awakened, and what will happen when the boy devoted to destroying the Titans becomes one himself? Includes special extras after the story!",
            release_date: "December 9, 2010",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167720/attack3_a5wigu.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 4",
            author: "Hajime Isayama",
            synopsis: " The Survey Corps develop a risky gambit - have Eren in Titan form attempt to repair Wall Rose, reclaiming human territory from the monsters for the first time in a century. But Titan-Eren's self-control is far from perfect, and when he goes on a rampage, not even Armin can stop him! With the survival of humanity on his massive shoulders, will Eren be able to return to his senses, or will he lose himself forever?",
            release_date: "April 8, 2011",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167720/attack4_ezzmii.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 5",
            author: "Hajime Isayama",
            synopsis: " Thanks to Eren, humanity has taken the town of Trost back from the Titans. Exhausted, Eren falls into a coma for three days - and wakes in shackles, staring at Erwin Smith, leader of the Survey Corps. Certain that Eren's father's research holds the key to the mystery of the Titans' rise, Smith wants an expedition to retrieve it from the house where Eren grew up. But that's deep in Titan territory, and to get there Eren will need to master a power he still doesn't fully understand...",
            release_date: "August 9, 2011",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167720/attack5_eyvyuk.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 6",
            author: "Hajime Isayama",
            synopsis: "On the way to Eren's home, deep in Titan territory, the Survey Corps ranks are broken by a charge led by a female Titan! But this Abnormal is different - she kills not to eat but to protect herself, and she seems to be looking for someone. Armin comes to a shocking conclusion!",
            release_date: "December 9, 2011",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167720/attack6_kofxex.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 7",
            author: "Hajime Isayama",
            synopsis: "The Survey Corps sets a cunning trap to capture the mysterious Abnormal Titan that broke through their ranks. As Arwin tries to determine the grotesque creature's identity and purpose, scouts report Titans closing in on all sides! But they don't seem to be after the humans - instead they're targeting the Titan!",
            release_date: "April 9, 2012",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167720/attack7_m0tkhn.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 8",
            author: "Hajime Isayama",
            synopsis: "The expedition outside the wall was Eren's chance to prove himself. But it failed, and the female Titan is free once more! With his squad dead, Eren faces a royal summons. Will Mikasa and Armin have to betray their king to save their friend? And can they discover the female Titan's identity before she kills again? ? ?",
            release_date: "August 9, 2012",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167720/attack8_jrxfjz.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 9",
            author: "Hajime Isayama",
            synopsis: "Eren is still resting from his brutal fight with the female Titan, when word reaches the interior that the impossible has happened: Wall Rose itself has been breached, and Titans are pouring through the gap! The emergency casts new urgency over Armin and Hange's questions about how the walls were built, and what humanity can do to restore them...",
            release_date: "December 7, 2012",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167719/attack9_maoghk.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 10",
            author: "Hajime Isayama",
            synopsis: "With no combat gear and Wall Rose breached, the 104th scrambles to evacuate the villages in the Titans' path. On their way to the safety of Wall Sheena, they decide to spend the night in Utgard Castle. But their sanctuary becomes a slaughterhouse when they discover that, for some reason, these Titans attack at night!",
            release_date: "April 9, 2013",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167719/attack10_zbw0xq.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 11",
            author: "Hajime Isayama",
            synopsis: "Thanks to Eren's timely arrival, the 104th has managed to turn the tide at Wall Rose. But this momentary victory forces two more traitors into a corner - and the identity of the Titans who have been destroying the walls is revealed! What can Eren do against the two most dangerous monsters humanity has ever faced? And who else might be an enemy in disguise?",
            release_date: "August 9, 2013",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167719/attack11_bwigkx.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 12",
            author: "Hajime Isayama",
            synopsis: "Erwin and the Survey Corps desperately mount a rescue operation to take Eren back from the Colossus Titan and Armored Titan. But without the numbers to form up properly outside the walls, how can the humans catch up before they're all slaughtered? Just whose side is Ymir on? And will Eren ever see his friends again?",
            release_date: "December 9, 2013",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167719/attack12_pokfjs.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 13",
            author: "Hajime Isayama",
            synopsis: "At great cost to the Garrison and the Survey Corps, Commander Erwin has managed to recover Eren from the Titans who tried to carry him off. But during the battle, Eren manifested yet another power he doesn't understand. As Eren and Krista find new enemies, the Survey Corps faces threats from both inside and outside the walls. And what will happen to Ymir, now that she has decided to make herself the Titans' prize?",
            release_date: "April 9, 2014",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167719/attack13_j6ytwp.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 14",
            author: "Hajime Isayama",
            synopsis: "Commander Erwin has finally come to a decision: Putting their own wealth and position ahead of the survival of humanity, the royal government is no longer fit to lead. To execute their leader's most audacious plan yet, Eren and Krista will have to put themselves in peril yet again, and Armin, Mikasa, and the rest of the Survey Corps will have to turn from humanity's guardians into traitors. If they fail this time, they'll face not a Titan's gaping mouth, but the gallows...",
            release_date: "August 8, 2014",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167719/attack14_ge2dqi.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 15",
            author: "Hajime Isayama",
            synopsis: "Hange's interrogation of a Military Police squad has revealed that Krista (a.k.a. Historia Reiss) is the true heir to the throne. The Corps quickly moves to enthrone her as queen, but a homicidal MP leads a squad that abducts Eren and Krista and throws the Corps into disarray. With Erwin arrested and the Survey Corps on the edge of dissolution, are Levi and Hange finally out of options?",
            release_date: "December 9, 2014",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167719/attack15_q4jyxl.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 16",
            author: "Hajime Isayama",
            synopsis: "Captured by Rod Reiss, the rightful king, Krista and Eren finally have their memories back. What exactly happened to Eren, and what was the crime his father committed? Meanwhile, the Survey Corps desperately hunts for Eren, while at the same time seeking to legitimize their military coup. As the situation inside the walls comes to a head, the mysteries of the world of the Titans seem on the cusp of being solved at last!",
            release_date: "April 9, 2015",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167719/attack16_gzpw7j.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 17",
            author: "Hajime Isayama",
            synopsis: "Thanks to Rod Reiss, Eren finally knows the terrible truth behind how he acquired his Titan powers, and the depth of his father's crimes. The king orders his daughter Historia to kill Eren and restore the power of the Titans to its rightful place, but she chooses her own selfish path: survival. As the cavern crumbles around the Survey Corps, Eren must make another last-minute decision, with the lives of all his friends in the balance.",
            release_date: "August 7, 2015",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167719/attack17_zh3zlu.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])

Manga.create(title: "Attack on Titan Vol. 18",
            author: "Hajime Isayama",
            synopsis: "The Survey Corps has overthrown the Royal Government and swept away the tyranny of the king. The next step: Move to retake Wall Maria, with the helpf of a newly-discovered metallic ore and Eren’s miraculous Titan hardening powers. But as humanity pulls together, its enemies also unite beyond the Walls… now that the Beast Titan has joined Reiner and Bertolt, what havoc will they wreak?",
            release_date: "December 9, 2015",
            img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/v1483167719/attack18_rjbrip.jpg",
            genre: ["Dark fantasy", "Post-Apocalpytic"])
