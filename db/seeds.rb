# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "Guest", password: "password", email: "guest@mangareads.com")

Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.1", author:"Nobuhiro Watsuki",  synopsis:"During the Meiji 11th (1878), a peaceful wanderer called Himura Kenshin, formerly known as the Hitokiri Battōsai, arrives in Tokyo, where he meets Kamiya Kaoru whose swordsmanship school is in danger as a murderer from the city claims to be from that school. After investigating, Kenshin defeats the murderer using his sakabatō sword, which has a reversed blade, making it almost impossible to kill someone. When Kenshin decides to leave Tokyo, Kaoru offers him a place to live in her dojo. During his stay in the dojo, Kenshin rescues an orphan called Myōjin Yahiko from a group of yakuza and takes him to live and train in the dojo. A few days later, a fight merchant named Sagara Sanosuke is hired to attack Kenshin. The volume ends with a one-shot by Watsuki called Rurouni Meiji Swordsman Romantic Story.", img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478411730/manga%20covers/kenshin_vol1.jpg")
Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.2", author:"Nobuhiro Watsuki",  synopsis:"When the chief of the Police Sword Corps himself comes asking for favors, things must be bad. Hitokiri Udô Jin-e--a black-hatted, crazy-eyed slayer who fells both targets and innocent bystanders alike--is steadily working his way through a list of former Ishin Shishi patriots now ensconced within position of power in the Meiji government. Can Kenshin withstand the hypnotic, paralyzing effect of Jin-e...? ", img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478548454/manga%20covers/kenshin2.jpg" )
Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.3", author:"Nobuhiro Watsuki",  synopsis:"Spider's Web...like ordinary opium, but better processed. Half the cost to produce, but twice the profits! To the people of Aizu, Takani Megumi was a daughter in a famous family of doctors, in which everyone--women and children alike--studied medicine. But to grasping industrialist Takeda Kanryû, she is the hen who lays the golden egg--the only one who knows the Spider\'s Web formula! To stay with Kanryû is to send even more to their deaths. But to stay with Kenshin and the others is to invite theirs...", img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478548454/manga%20covers/kenshin3.jpg")
Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.4", author:"Nobuhiro Watsuki",  synopsis:"Shinomori Aoshi was once the leader of Edo Castle's elite guard, the Oniwabanshû. But with the fighting at an end and the shôgunate overthrown, the brilliant Aoshi and his four most loyal onmitsu, or spies, find themselves without a home or a purpose. When fighting is your life, loyalty to those lost ideals (and to the man who most symbolized them) may be the one thing left. But Megumi's life is at stake, and however sympathetic Kenshin may feel, he will fight on, to the last man if necessary...", img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478548454/manga%20covers/kenshin4.jpg")
Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.5", author:"Nobuhiro Watsuki",  synopsis:"Isurugi Raijûta, a truly old-school swordsman, comes to Kenshin and requests his aid in reforming the state of swordsmanship schools, or kenjutsu dojo, in Japan. Although Kenshin is intrigued by Raijûta's ideals (chiefly, that there is a need for a nation-wide, unifying school), Raijûta's plan to weed out the schools he deems unfit is not in accordance with Kenshin's deepest-held beliefs. Given the choice of either joining Raijûta's Shinko-ryû movement or dying, Kenshin walks away, choosing neither. But Raijûta isn't willing to let Kenshin off the hook so easily...", img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478548454/manga%20covers/kenshin_5.jpg")
Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.6", author:"Nobuhiro Watsuki",  synopsis:"Kenshin's battle with Raijûta to decide the fate of Meiji Era swordsmanship is coming to a head. One fact is quickly becoming apparent: Raijûta will stop at nothing to ensure the supremacy of his own school of sword-fighting! Reunited with a member of the former Sekihô Army--that doomed civilian unit--Sanosuke runs into trouble of his own. Old alliances are challenged when a plan to topple the current government by any means necessary is shared...and as his friend puts it, Sano's either in, or in the way. Plus a bonus installment containing the first story Nobuhiro Watsuki ever published!", img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478548454/manga%20covers/kenshin_6.jpg")
Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.7", author:"Nobuhiro Watsuki",  synopsis:"The Shinsengumi--fearsome and formidable protectors of the Shôgunate. Kenshin knows them well, having done battle with them during the final days of the Meiji Restoration. One man in particular--Saitô Hajime, captain of the third unit--lingers in Kenshin's mind. Now an officer of the law and known as Fujita Gorô, Saitô arrives on the steps of the Kamiya Dojo, challenging Kenshin to a duel that will force a reawakening of Kenshin's own past. But the confrontation with Saitô is just the beginning of something much larger, something that will involve the future of the new Japan... ", img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478548454/manga%20covers/kenshin_7.jpg")
Manga.create(title:"Dragon Ball, Vol. 1: The Monkey King", author:"Akira Toriyama", synopsis:"Before there was Dragon Ball Z , there was Akira Toriyama's action epic Dragon Ball , starring the younger version of Son Goku and all the other Dragon Ball Z heroes! Meet a naive young monkey-tailed boy named Goku, whose quiet life changes when he meets Bulma, a girl who is on a quest to collect seven Dragon Balls. If she gathers them all, an incredibly powerful dragon will appear and grant her one wish. But the precious orbs are scattered all over the world, and Bulma needs Goku's help (and his super-strength)! With a magic staff for a weapon and a flying cloud for a ride, Goku sets out on the adventure of a lifetime...", img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478851476/manga%20covers/dragonball1.jpg")
Manga.create(title:"Dragon Ball, Vol. 2: Wish Upon a Dragon", author:"Akira Toriyama", synopsis:"With the (reluctant) help of the shapeshifting pig Oolong, Goku and Bulma have found almost all the Dragon Balls they need to get their wish! To get the sixth Dragon Ball, the fearsome Ox King sends Goku on a mission: to find Kame-Sen'nin, the Turtle Hermit, whose mighty powers can put out the raging fires of Fry-Pan Mountain! But the sleazy old martial artist might just make it more trouble than it's worth! Then, with the bandits Yamcha and Pu'ar on their trail, our heroes continue their quest for the seventh and final Dragon Ball. But can they get it from little Emperor Pilaf, who wants to use his wish to rule the world?!!", img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/v1478851605/manga%20covers/dragonball2.jpg")
Manga.create(title:"Dragon Ball, Vol. 3: The Training of Kame-Sen'nin", author:"Akira Toriyama", synopsis:"With the Dragon Balls gone and Bulma's summer vacation over, Goku goes to the remote house of the Turtle Hermit, Kame-Sen'nin, to be trained in the martial arts. There, the girl-ogling old master promises to teach Goku everything he knows...and prepare him for the Tenka'ichi Budôkai, the great tournament to determine the Strongest Fighter in the World! But Goku's fellow student, the Shaolin monk Kuririn, isn't above cheating to be the best. Can the two of them get along as they undergo the strangest martial arts training ever?", img_url:"")
Manga.create(title:"Dragon Ball, Vol. 4: Strongest Under the Heavens", author:"Akira Toriyama", synopsis:"Goku has made it to the Tenka'ichi Budôkai, the world's #1 martial arts tournament...but even the training of the martial arts master Kame-Sen'nin hasn't prepared him for this! Only seven finalists remain. Will the champion be Goku? His fellow student Kuririn? Yamcha, master of the "Fist of the Wolf Fang"? Fighting woman Ran Fuan? Giran, a rubbery monster who's part dinasaur? Namu, an Indian mystic? Or Jackie Chun, the mysterious old man who may be the toughest fighter of all? There can be only one winner in the wildest, craziest battle ever!", img_url:"")
Manga.create(title:"Dragon Ball, Vol. 5: The Red Ribbon Army", author:"Akira Toriyama", synopsis:"In the final round of the "Strongest under the Heavens" martial arts competition, it's down to Goku vs. Jackie Chun, the mysterious old man who's as powerful as Kame-Sen'nin himself! Will the audience survive the confrontation? After the smoke clears, Goku jumps on his flying cloud and returns to his quest to find the seven Dragon Balls, but now he's not the only one looking for them. The evil Red Ribbon Army wants the Dragon Balls for themselves, and to stop their plans, Goku must go around the world--and survive the six deadly floors of Colonel White's fortress, Muscle Tower! ", img_url:"")
Manga.create(title:"Dragon Ball, Vol. 6: Bulma Returns! ", author:"Akira Toriyama", synopsis:"In the frozen north, Goku's one-man fight against the Red Ribbon Army continues as he storms the perilous Muscle Tower! Can he defeat General White's squad of ninjas, cyborgs, and worse, and save the peaceful people of Jingle Village from their oppressors? Then, Goku travels to the City of the West to visit his old friend Bulma, who joins him on his quest, bringing her latest inventions. Their quest for the next Dragon Ball takes them around the world to a jungle island in the South Seas...but to get THIS Dragon Ball they'll have to go through General Blue!", img_url:"")
Manga.create(title:"Dragon Ball, Vol. 7: General Blue and the Pirate Treasure", author:"Akira Toriyama", synopsis:"Only Goku, Bulma and Kuririn stand between the Red Ribbon Army and the seven Dragon Balls which can grant any wish in the world! Using a submarine loaned by Kame-Sen'nin, the heroic trio explores a pirate's undersea cave in search of the next Dragon Ball , but gun-toting bad guys are on their tail! Now they must face not only perilous pirate traps but the sinister General Blue, a martial artist with powers even Goku doesn't have! Can they escape the cave alive? As the battle continues, Goku and General Blue go to Penguin Village, the home of the weird scientist Dr. Slump and one of the strangest places on Earth!", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
# Manga.create(title:"", author:"", synopsis:"", img_url:"")
