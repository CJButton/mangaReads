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

genres = [
  'Action',
  'Adventure',
  'Science Fantasy',
  'Demons',
  'Fantasy',
  'Science Fiction',
  'Mecha',
  'Drama',
  'Mystery',
  'Historical',
  'Battles',
  'Dark Fantasy',
  'Post-Apocalpytic',
  'Romance',
  'Comedy',
  'School Life',
  'Slice of Life',
  'Magical Girl',
  'Supernatural',
  'Sports',
  'Powers',
  'Horror',
  'Harem'
 ]

allComics = [
      [
{
      title: "Neon Genesis Evangelion, Vol. 13",
      author: "Yoshiyuki Sadamoto",
      synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power...",
      release_date: "November 2nd 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1001.jpg"},

{
      title: "Neon Genesis Evangelion: 3-in-1 Edition, Vol. 4",
      author: "Yoshiyuki Sadamoto",
      synopsis: "The classic series, now available in a deluxe omnibus edition!The manga adaptation of the landmark animated series that changed the mecha genre. Each volume contains three of the original graphic novels and includes pages of stunning, full-color art.  Once Shinji didn’t care about anything; then he found people to fight for—only to learn that he couldn’t protect them, or keep those he let into his heart from going away. As mankind tilts on the brink of the apocalyptic Third Impact, human feelings are fault lines leading to destruction and just maybe, redemption and rebirth.",
      release_date: "August 13th, 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1002.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 9",
      author: "Yoshiyuki Sadamoto",
      synopsis: " Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the ''Angels'' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called ''Evangelion'' to match the Angels' fearsome power...",
      release_date: "April 3rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1003.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 14",
      author: "Yoshiyuki Sadamoto",
      synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power... The Third Impact has come. As the unbelievably massive form of Ayanami towers over the Earth, the Instrumentality Project enters its last stages. While the world shudders in terror as it is engulfed in a sea of LCL, Shinji's consciousness merges with Lilith';s, and he searches his memories for a final understanding of himself and the fate of humanity.",
      release_date: "November 1st 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1004.jpg"},

{
      title: "Neon Genesis Evangelion: 3-in-1 Edition, Vol. 3",
      author: "Yoshiyuki Sadamoto",
      synopsis: "The manga adaptation of the landmark animated series that changed the mecha genre. Each volume contains three of the original graphic novels and includes pages of stunning, full-color art.  Once Shinji didn’t care about anything; then he found people to fight for—only to learn that he couldn’t protect them or keep those he let into his heart from going away. As mankind tilts on the brink of the apocalyptic Third Impact, human feelings are fault lines leading to destruction and just maybe, redemption and rebirth.",
      release_date: "May 14th, 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1005.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 5",
      author: "Yoshiyuki Sadamoto",
      synopsis: "With half the human race dead, a handful of teenagers pilot the colossal superentities known as Evangelions and battle the mysterious giant Angels. But even they are not prepared for the appearance of a giant eye in the heavens that heralds the Angels latest and deadliest assault.",
      release_date: "December 17th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1006.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 12",
      author: "Yoshiyuki Sadamoto",
      synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the ''Angels'' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called ''Evangelion'' to match the Angels' fearsome power...",
      release_date: "March 31st 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1007.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 6",
      author: "Yoshiyuki Sadamoto",
      synopsis: "It's NERV against the Angels in the battle to control Earth in 2015. During a lull in the fighting, Commander Ikari and Ritsuko prepare for the delivery of Unit-03. But no one is prepared when Unit-03 reveals itself as the next Angel.",
      release_date: "December 15th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1008.jpg"},

{
      title: "Neon Genesis Evangelion 2-in-1 Edition, Vol. 5: Includes vols. 13  14",
      author: "Yoshiyuki Sadamoto",
      synopsis: "The manga adaptation of the landmark animated series that changed the mecha genre. This volume contains two of the original graphic novels and includes pages of stunning, full-color art. The Instrumentality Project comes to its apocalyptic conclusion. With the earth now covered in a sea of LCL, every human consciousness in the world has become one—a combined entity waiting to be reborn. Deep within Lilith, Shinji comes face-to-face with everything he ever knew, loved and feared. The fate of the world is in his hands, and the choice he makes will doom or redeem humanity. Everything ends here. Everything begins here. This is the epic finale of !",
      release_date: "June 14th, 2016",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1009.jpg"},

{
      title: "Der Mond: The Art of Neon Genesis Evangelion",
      author: "Yoshiyuki Sadamoto",
      synopsis: "New look, a hard cover version for Der Mond!",
      release_date: "September 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1010.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 10",
      author: "Yoshiyuki Sadamoto",
      synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike.In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power...",
      release_date: "February 25th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1011.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 11",
      author: "Yoshiyuki Sadamoto",
      synopsis: "In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power...",
      release_date: "June 19th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1012.jpg"},

{
      title: "Neon Genesis Evangelion: 3-in-1 Edition, Vol. 1",
      author: "Yoshiyuki Sadamoto",
      synopsis: "The classic series, now available in a deluxe omnibus edition!The manga adaptation of the landmark animated series that changed the mecha genre. Each volume contains three of the original graphic novels and includes pages of stunning, full-color art. Once Shinji didn't care about anything; then he found people to fight for--only to learn that he couldn't protect them, or keep those he let into his heart from going away. As mankind tilts on the brink of the apocalyptic Third Impact, human feelings are fault lines leading to destruction and just maybe, redemption and rebirth.",
      release_date: "November 6th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1013.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 4",
      author: "Yoshiyuki Sadamoto",
      synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo-commander of the secret organization NERV-to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power. As a carrier fleet steams towards Japan carrying a mysterious embryonic form linked to the true origins of the human race, a hurricane is about to blow down Shinji's momentary peace: the wind through the red hair of Asuka Langley Soryu, the new Eva pilot arriving in Tokyo-3...One of the founding members of Gainax, Japan's most progressive anime studio, Evangelion's Yoshiyuki Sadamoto was also the character designer for their recent Adult Swim smash FLCL. EVA Vol. 4 contains a Japanese sound FX glossary plus a special bonus interview with the voice of Asuka, Battle Royale's Yuko Miyamura!",
      release_date: "October 1st 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1014.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 2",
      author: "Yoshiyuki Sadamoto",
      synopsis: "Neon Genesis Evangelion is the most controversial -- and some say the best -- anime of the decade. Set in the year 2015 when humanity faces a terrifying last judgment from mysterious giant 'Angels, ' the series has been acclaimed for its original story line, direct psychological content, and self-referential examination of the genre.",
      release_date: "October 29th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1015.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 7",
      author: "Yoshiyuki Sadamoto",
      synopsis: "- From the character designer of the recent Adult Swim smash FLCL.- Part of the Neon Genesis Evangelion phenomenon - the most talked about anime show of the last ten years!- Broadcasted nationwide in Japan by TV Tokyo in 1995-96 and re-run seven times. Final episode had audience of 10 million!- Video sales of US $80MM, merchandise sales US$400MM -- video and soundtrack CDs available in the US.- The film The End Of Evangelion won Japanese Academy Award in 1997.",
      release_date: "December 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1016.jpg"},

{
      title: "Neon Genesis Evangelion: 3-in-1 Edition, Vol. 2",
      author: "Yoshiyuki Sadamoto",
      synopsis: "The manga adaptation of the landmark animated series that changed the mecha genre. Each volume contains three of the original graphic novels and includes pages of stunning, full-color art.  Once Shinji didn’t care about anything; then he found people to fight for—only to learn that he couldn’t protect them, or keep those he let into his heart from going away. As mankind tilts on the brink of the apocalyptic Third Impact, human feelings are fault lines leading to destruction and just maybe, redemption and rebirth.",
      release_date: "March 12th, 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1017.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 1",
      author: "Yoshiyuki Sadamoto",
      synopsis: "Evangelion, Vol. 1, contains a Japanese sound FX glossary plus special bonus commentary by series mecha designer Ikuto Yamashita, as well as the famous 'confession letter' written by director Hideaki Anno in the months before the original TV series premiere that laid out his deeply personal motivations to make Evangelion.",
      release_date: "August 29th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1018.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 3",
      author: "Yoshiyuki Sadamoto",
      synopsis: "In the year 2015, humanity faces terrifying last judgement by a mysterious race of giants, and a handful of teenagers must pilot the colossal superentities known as 'evangelions' in the fight for survival. With Volume 3, this controversial science fiction series continues to push the limits of the genre.",
      release_date: "October 29th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1019.jpg"},

{
      title: "Neon Genesis Evangelion, Vol. 8",
      author: "Yoshiyuki Sadamoto",
      synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo-commander of the secret organization NERV-to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power. As a disembodied Shinji drifts in visions, merged with the esoteric fluids of the Evangelion, his father's long-serving lieutenant, Fuyutsuki, is kidnapped for interrogation by SEELE-in German, the 'Soul'-the council of superiors whom NERV has been double-crossing for some time now...One of the founding members of Gainax, Japan's most progressive anime studio, Evangelion's Yoshiyuki Sadamoto was also the character designer for their recent Adult Swim smash FLCL. EVA Vol. 8 contains a Japanese sound FX glossary plus a special bonus guide to help U.S. fans discover the best of the many import books available on Evangelion",
      release_date: "December 19th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1020.jpg"},

      [genres[0], genres[5], genres[6]]
      ],
      [
{
      title: "Fullmetal Alchemist, Vol. 14",
      author: "Hiromu Arakawa",
      synopsis: "Ed and Al come face to face with the 'father' of the homunculi, who just so happens to be a dead ringer for their own father, Van Hohenheim--a resemblance too uncanny for coincidence. And later, when the allure of immortality proves to be too much for Prince Lin of Xin, he lets Greed take over...literally!",
      release_date: "July 22nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1021.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 12",
      author: "Hiromu Arakawa",
      synopsis: "The hunters become the hunted when the Elric brothers and Prince Lin set a trap for the homunculus with the insatiable appetite - Gluttony! On another front, state politics are shaken up when a horrifying truth about Fuhrer President King Bradley is revealed - and Colonel Roy Mustang is right there to capitalize on the situation.",
      release_date: "November 21st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1022.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 19",
      author: "Hiromu Arakawa",
      synopsis: "Ed's clever plan to take out an enemy leaves him severely injured... Can he cheat death? One of our friends discovers the ironic secret behind Scar's brother's transmutation notes. And Major General Armstrong meets with evil homunculus President Bradley. Whose side is she on again...?Plus, the disturbing origin of Ed and Al's immortal father finally revealed!",
      release_date: "January 1st 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1024.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 17",
      author: "Hiromu Arakawa",
      synopsis: "A homunculus manages to breach impenetrable Fort Briggs, and the Elric brothers discover a terrible alchemical secret that penetrates every corner of the world as they know it! Meanwhile, Major Kimblee and a ruthless General Raven make Major General Olivier Mira Armstrong an offer she can't refuse...Whose side is she on, really? And how far is she willing to go?",
      release_date: "August 11th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1025.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 13",
      author: "Hiromu Arakawa",
      synopsis: "In the midst of a heated battle, Ed and Prince Lin of Xing are swallowed whole by the homunculus Gluttony. Will they survive the depths of Gluttony's gullet like Jonah in the whale, or has Al lost his brother for good? And the political power structure of the military may be irreparably shattered when Colonel Mustang confronts Führer President King Bradley with his horrifying suspicion that Bradley is a homunculus.",
      release_date: "March 22nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1026.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 24",
      author: "Hiromu Arakawa",
      synopsis: "Hohenheim finally gets his chance to stop the mysterious homunculus 'father' who rules over Central City. Will Hohenheim's surprise be enough to defeat the most powerful homunculus of them all? And when King Bradley makes a triumphant return, will the battle turn in the military's favor...?",
      release_date: "December 22nd 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1027.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 7",
      author: "Hiromu Arakawa",
      synopsis: "Where did Alphonse Elric go during the few short minutes he was wiped from existence, body and soul? From a secret lair in the city of Dublith, a group of outcasts kidnaps Alphonse to find the alchemical secrets of his creation! It's up to Ed (and a certain housewife) to go into the Devil's Nest and rescue his brother. But the criminals of the Devil's Nest aren't exactly human either. Now, Al must fight a homunculus - an artificial human being - and the streets of Dublith will run red with blood...",
      release_date: "March 22nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1028.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 22",
      author: "Hiromu Arakawa",
      synopsis: "Having consumed Gluttony's powers, Pride may now be too much to handle for Ed and his allies. Their only chance could be the help of Al and Hohenheim, but will Ed trust his estranged father long enough for their plan to work? And back at Central City, Mustang and his team have started their attack. But does the army have a dangerous trick up its sleeve...?",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1029.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 23",
      author: "Hiromu Arakawa",
      synopsis: "As the battle for Central City rages on, Alphonse faces off against Pride and Kimblee with the aid of a Philosopher's Stone. Can he come up with a plan to take down these two dangerous foes? Meanwhile, Ed and his friends run into Envy below the city. When Roy Mustang learns the truth about Hughes's murder, will he be consumed by hatred and do the unthinkable...?",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1030.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 2",
      author: "Hiromu Arakawa",
      synopsis: "In an alchemical ritual gone wrong, Edward Elric lost his arm and his leg, and his brother Alphonse became nothing but a soul in a suit of armor. Equipped with mechanical 'auto-mail' limbs, Edward becomes a state alchemist, seeking the one thing that can restore his brother and himself... the legendary Philosopher's Stone.There are many types of alchemy in the world. Edward's commanding officer, 'Flame Alchemist' Roy Mustang, can control fire. Shou Tucker, the 'Sewing-Life Alchemist,' specializes in the most difficult alchemy of all...biological transmutation, the ability to alter the tissue of living things. But no matter what their power, alchemists are still human. And when a mysterious killer begins stalking state alchemists, no one can escape his vengeance...",
      release_date: "May 20th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1031.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 9",
      author: "Hiromu Arakawa",
      synopsis: "Ed, Al and Winry return to Central Command, but only bad news greets the Fullmetal Alchemist and his friends. Lieutenant Colonel Maes Hughes has been murdered - and Second Lieutenant Maria Ross is the prime suspect! While Maria awaits an uncertain fate in jail, the living suit of armor bearing the soul of serial killer 'Berry the Chopper' breaks free of the military and goes on a rampage. Now, the mysterious Homunculi must come out of the shadows to deal with the mess before their monstrous conspiracy is exposed. But for Colonel Mustang, Maes Hughes's former best friend, it's not about the truth; it's about revenge...",
      release_date: "November 22nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1032.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 10",
      author: "Hiromu Arakawa",
      synopsis: "In an alchemical ritual gone wrong, Edward Elric lost his arm and his leg, and his brother Alphonse became nothing but a soul in a suit of armor. Equipped with mechanical 'auto-mail' limbs, Edward becomes a state alchemist, seeking the one thing that can restore his and his brother's bodies...the legendary Philosopher's Stone.Barry the Chopper, the psychopathic killer whose soul is encased in a suit of armor, has been captured by Colonel Mustang's troops. Fearing he will reveal the Philosopher's Stone conspiracy, Gluttony and Lust decide to kill him, using Barry's own original soulless body to track him down! Though Colonel Mustang has anticipated their moves and set up an ambush, Gluttony and Lust prove too powerful and easily fight their way through to Barry, who is being protected by Al and Lieutenant Hawkeye. In a terrible battle, a badly injured Colonel Mustang sacrifices all in a last-ditch attempt to stop Lust!",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1033.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 26",
      author: "Hiromu Arakawa",
      synopsis: "With all the pieces now in his possession, the homunculus 'father' executes his master plan as Edward and the others watch in horror. When the dust settles, the entire world has been reshaped. With the help of Hohenheim, the Elric brothers lauch a desperate final attack, but is it all too late...?",
      release_date: "January 1st 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1034.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 1",
      author: "Hiromu Arakawa",
      synopsis: "Alchemy: the mystical power to alter the natural world; something between magic, art and science. When two brothers, Edward and Alphonse Elric, dabbled in this power to grant their dearest wish, one of them lost an arm and a leg...and the other became nothing but a soul locked into a body of living steel. Now Edward is an agent of the government, a slave of the military-alchemical complex, using his unique powers to obey orders...even to kill. Except his powers aren't unique. The world has been ravaged by the abuse of alchemy. And in pursuit of the ultimate alchemical treasure, the Philosopher's Stone, their enemies are even more ruthless than they are...",
      release_date: "January 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1035.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 21",
      author: "Hiromu Arakawa",
      synopsis: "A diabolical trap is set for President Bradley... If he is  assassinated, a power vacuum will open that Mustang and his allies will be more than happy to fill. Then, while Ed is reunited with someone from his past, Al is separated from his body - his proxy armor body! Now who is filling his heavy metal shoes...?Plus, take a break from all the alchemical intrigue and homunculus backstabbing at the annual Resembool Spring Sheep Festival!",
      release_date: "December 22nd 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1036.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 15",
      author: "Hiromu Arakawa",
      synopsis: "The horrors of the Ishbalan campaign occurred years before Ed became a state alchemist, and has serious repercussions, which set the tone for the complicated dealings of present-day state politics. Lieutenant Hawkeye reluctantly tells Ed all the dread details of the role Colonel Mustang and the other state alchemists played in this tragic event.",
      release_date: "November 22nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1037.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 16",
      author: "Hiromu Arakawa",
      synopsis: "The brothers pursue fugitive May Chang to solve the mystery of why their alchemical powers were rendered inert while she and Scar continue to be able to wield them. Meanwhile, Scar enlists some unlikely help to delve into the secrets of his brother's alchemical knowledge. And the newest, most horrifying homunculus makes an appearance...!",
      release_date: "March 22nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1038.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 20",
      author: "Hiromu Arakawa",
      synopsis: "Betrayal and double-crossing are the order of the day. Greed, Pride and Envy prove to be formidable enemies, but one homunculus seems to be having pangs of - could it be? - conscience. Ominous news spreads quickly about a mysterious portal. Will this gateway help the Elric brothers regain their natural bodies? And will the gigantic underground transmutation circle be completed, leading to a major regime change? Plus, a moving reunion between Al and someone from his past!",
      release_date: "August 22nd 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1039.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 5",
      author: "Hiromu Arakawa",
      synopsis: "Ed, Alphonse and their mechanic Winry go south in search of Izumi Curtis, the master alchemist who taught the brothers how to use alchemy. But in the boomtown of Rush Valley, an encounter with a pickpocket turns them down a different path in search of an auto-mail blacksmith whose handiwork is the best that Winry has ever seen. Then the action flashes back to the past to show how Ed and Alphonse first learned alchemy...",
      release_date: "June 21st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1040.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 25",
      author: "Hiromu Arakawa",
      synopsis: "As Greed and King Bradley continue their battle, the mysterious homunculus 'father' makes his move under Central City. In order to achieve his objectives, he will need to force Mustang to make an unthinkable choice. Meanwhile, Alphonse has the chance to regain his own body, but the sacrifice to do so may be too much.",
      release_date: "January 1st 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1041.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 6",
      author: "Hiromu Arakawa",
      synopsis: "The origin of the Elric Brothers! Once, Edward and Alphonse Elric were willing to do anything to become alchemists. But when they tried to use their newfound skills to resurrect their dead mother, they broke a taboo and encountered something more terrifying than death itself. Now, hardened by years of military training, Edward and Alphonse have returned to the woman who first taught them alchemy...but can she help them, or even forgive them?",
      release_date: "October 22nd 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1042.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 8",
      author: "Hiromu Arakawa",
      synopsis: "In an alchemical ritual gone wrong, Edward Elric lost his arm and his leg, and his brother Alphonse became nothing but a soul in a suit of armor. Equipped with mechanical 'auto-mail' limbs, Edward becomes a state alchemist, seeking the one thing that can restore his and his brother's bodies...the legendary Philosopher's Stone.The raid on the Devil's Nest becomes a slaughter, as government troops - led by the Fuhrer President himself, King Bradley - exterminate the half-human forces of the Homunculus Greed. But will Ed and Al survive the battle unchanged? As Greed is sent to meet his maker, foreign travelers arrive in Amestris, having crossed the great desert from the eastern country of Xing. Their names are Mei and Ling, and they've come for the Philosopher's Stone...and a secret even the Elric brothers never imagined...",
      release_date: "July 22nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1043.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 11",
      author: "Hiromu Arakawa",
      synopsis: "Ed returns to Resembool and meets his father Hohenheim for the first time in many years. Although his father is happy to see him, Ed harbors intense feelings of resentment for being all but abandoned many years ago. However, anger gives way to intrigue as Ed and Al discover an important fact about the human transmutation ritual they attempted years before. What they thought was a partial resurrection of their mother was something else entirely - a revelation that could change their destiny forever.",
      release_date: "July 22nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1044.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 4",
      author: "Hiromu Arakawa",
      synopsis: "Trapped and injured in a secret alchemical laboratory, Edward Elric is at the mercy of his enemies, Lust and Envy. But they don't want him dead...they have other plans for him. As the laboratory goes up in flames, the brothers find themselves back at square one, with only an inkling of the massive scale of the Philosopher's Stone conspiracy. But then, Lieutenant Colonel Maes Hughes uncovers a shocking secret...",
      release_date: "January 20th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1045.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 3",
      author: "Hiromu Arakawa",
      synopsis: "Accompanied by their bodyguard, Alex Louis Armstrong, our heroes seek out their closest childhood friend, mechanic Winry Rockbell, to fix their battered 'auto-mail' bodyparts. Soon their quest for the Philosopher's Stone takes them to the great central library, where the Stone's formula may be hidden...if the mysterious figure named Lust doesn't get there first! But the secret of the Philosopher's Stone may be even more frightening than the beings who guard it...",
      release_date: "September 21st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1046.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 18",
      author: "Hiromu Arakawa",
      synopsis: "Automail engineer Winry is captured and held hostage to force Edward to do her captor's bidding. Hawkeye discovers the disturbing truth about President Bradley's son. Our heroes have fortuitous and not-so-fortuitous reunions with old friends and enemies. And multiple intrigues and double-crosses ensue as some plot to save the world while others scheme to destroy it.",
      release_date: "December 22nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1047.jpg"},

      [genres[0], genres[1], genres[4], genres[9], genres[10]]
      ],
      [
{
      title: "Saiyuki Reload Volume 7",
      author: "Kazuya Minekura",
      synopsis: "Book by Kazuya Minekura",
      release_date: "August 15th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1048.jpg"},

{
      title: "Saiyuki Reload, Volume 9",
      author: "Kazuya Minekura",
      synopsis: "Ukoku is back and creepier than ever, and it's going to be the Seiten sutra vs. the Muten sutra if Sanzo has his way. Meanwhile, Hazel's past is revealed, along with his own knowledge of Ukoku and the Muten sutra.",
      release_date: "January 1st 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1049.jpg"},

{
      title: "Saiyuki, Vol. 3",
      author: "Kazuya Minekura",
      synopsis: "In the midst of battle with Sanzo and his team, a cursed human by the name of Rikudo impales the human leader, as he tries to protect Goku. In the melee, Goku's Youkai power limiter, the device that keeps his Youkai madness from taking over his soul, shatters, sending Goku into a violent rampage that yields for neither friend nor foe.",
      release_date: "January 1st 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1050.jpg"},

{
      title: "Saiyuki Reload, Volume 4",
      author: "Kazuya Minekura",
      synopsis: "New troubles and new characters are introduced in this exciting installment of 'Saiyuki Reload'. As the fearsome foursome continue on their latest adventure, what will happen when they are faced with a new kind of enemy? Rated for older teens.",
      release_date: "June 13th, 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1051.jpg"},

{
      title: "Saiyuki, Vol. 6",
      author: "Kazuya Minekura",
      synopsis: "With poison coursing through his veins, Sanzo's life dwindles as Goku and the others fight to discover a way out of their desert prison. Although Kougaiji offers a solution, there's a catch - Goku must first defeat him in combat! Goku's desperation grows as Sanzo's health rapidly fails, but there's no divine intervention if Goku loses control this time. Will Goku put Sanzo's life above everything...and everyone?",
      release_date: "April 27th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1052.jpg"},

{
      title: "Saiyuki, Vol. 5",
      author: "Kazuya Minekura",
      synopsis: "Violence drew them close, but something far more powerful kept them together. The story of how Sanzo, Goku, Gojyo, and Hakkai met is revealed at last.",
      release_date: "October 27th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1053.jpg"},

{
      title: "Saiyuki, Vol. 8",
      author: "Kazuya Minekura",
      synopsis: "Sanzo, Goku and Hakkai are out to find 'God'--and Gojyo. At the same time, Gojyo climbs a seemingly endless stairway to heaven and is assailed by a very maternal monster. The gang finally catches up to Gojyo, and as luck would have it, they've also found 'God'. But this dangerous deity is no ordinary opponent, and the quartet must get serious before they get crushed.",
      release_date: "2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1054.jpg"},

{
      title: "Saiyuki Reload Volume 1",
      author: "Kazuya Minekura",
      synopsis: "Book by Kazuya Minekura",
      release_date: "July 25th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1055.jpg"},

{
      title: "Saiyuki, Vol. 2",
      author: "Kazuya Minekura",
      synopsis: "Continuing their journey west and leaving a trail of dead Youkai in their wake, Genjyo Sanzo and company come upon a young woman who has quite a tale to tell.",
      release_date: "July 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1056.jpg"},

{
      title: "Saiyuki Reload, Volume 3",
      author: "Kazuya Minekura",
      synopsis: "In this action-adventure manga, readers see the explanation of many of the characters past as Sanzo and company celebrate the one-year anniversary of their journey west. Includes four full-color bonus inserts. Rated for older teens. (Graphic Novels)",
      release_date: "December 31st 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1057.jpg"},

{
      title: "Saiyuki, Vol. 7",
      author: "Kazuya Minekura",
      synopsis: "A set of twins barge in our heroes, one which is transformed into a monster. While Goku and Hakkai are sucked into the twin's magical gourd, Sanzou and Gojyo set off a hunt for the twin. They find that the demon twins escaped from their village and were taken under the wing of God, a mysterious figure who granted them whatever they wanted.",
      release_date: "January 1st 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1058.jpg"},

{
      title: "Saiyuki Reload, Volume 6",
      author: "Kazuya Minekura",
      synopsis: "Ukoku/Ni Jianyi returns! The renegade Sanzo priest tells Hazel of the Great Sage Equalling Heaven, how he is the most dangerous youkai in the land, and that the Sage is traveling with the Sanzo party. Hazel now has to make a new decision: Is his personal quest worth sacrificing a new friend? Meanwhile, the Sanzo party ends up in a mysteriously prosperous and youkai-free village. What kind of deal has the village headman made to maintain their safety? And what will happen when the fearsome foursome get involved?!",
      release_date: "February 15th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1059.jpg"},

{
      title: "Saiyuki Reload, Volume 5",
      author: "Kazuya Minekura",
      synopsis: "A group of youkai advance upon Goku, Hakkai, and Gojyo. To stop the onslaught against Sanzo and company, Hazel and Gat show up to exterminate the attackers. Our heroes start to disagree with one another when youkai children join the fray Is it morally wrong to slay those that are trying to kill you, even if they are children?",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1060.jpg"},

{
      title: "Saiyuki Reload 10",
      author: "Kazuya Minekura",
      synopsis: "Goku, Gojyo, and Hakkai arrive in time to rescue Sanzo from the darkness unleashed from the Maten Scripture, but the battle with Ukoku is far from over, as the 'Black Sanzo' still has another trick hidden up his sleeve - a pawn he has groomed from young, lured by the powers of resurrection. Whereabouts is the monster responsible for exorcist Filbert's death, and which side will Hazel stand on when the truth comes to light? For some the journey will continue on, but for some it has come to an end...",
      release_date: "May 28th, 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1061.jpg"},

{
      title: "Saiyuki, Vol. 9",
      author: "Kazuya Minekura",
      synopsis: "Feeling down in the dumps about losing in the battle against 'God', Goku attempts to raise everyone's spirits with a game of Mahjung (sp?). He wins match after match until he scolds them all to snap out of it and shape up, leading to them playing a whole day straight of the game. Ready for another round, the gang approaches 'The Gods Castle', where they run into a bit of trouble with talking toys, before finally reaching 'God'. They kick major ass and succeed in beating him in the end. There is a flashback of when Sanzou was younger and had a run-in with a young god, who was a disciple to Ukoku Sanzou Houshi, a very powerful and wise monk. With the 'game' over, the castle around them collapses, but they manage to escape. Amongst the ruins, Ugoku appears and picks up 'God's (I think his name is actually Kouryuu) fallen monk hat and announces that he's ready for another 'game'. Our heroes drive off into the distance, back to their usual bickering selves, but the story is far from over...",
      release_date: "March 27th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1062.jpg"},

{
      title: "Saiyuki Reload, Volume 8",
      author: "Kazuya Minekura",
      synopsis: "The bestselling series that has inspired the hit anime from Geneon continues with this eighth volume.",
      release_date: "June 15th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1063.jpg"},

{
      title: "Saiyuki Reload, Volume 2",
      author: "Kazuya Minekura",
      synopsis: "Sanzo faces off against his evil doppelganger. The progress westward is held up continually as new villains surface, and an old foe makes an appearance. While his companions wrestle with corporeal demons, Sanzo must face his inner fears.",
      release_date: "March 26th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1064.jpg"},

{
      title: "Saiyuki, Vol. 4",
      author: "Kazuya Minekura",
      synopsis: "The mysterious fortune-teller Chin Yisou takes great pleasure in pushing Hakkai's psychological boundaries, and Hakkai is frightened to find his bloody past nipping at his heels. When Chin Yisou starts targeting Sanzo and the others, our heroes find themselves not only fighting against him, but against each other.",
      release_date: "April 27th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1065.jpg"},

{
      title: "Saiyuki, Vol. 1",
      author: "Kazuya Minekura",
      synopsis: "It was a time of chaos, when Heaven and Earth were as one, and humans and demons - the youkai - lived together in peace. The foundations of civilization and religion were raised and reinforced in this land of Togenkyo, the paradise known as Shangri-la.But now, a great evil threatens harmony in this great land. Far to the West, in India, someone is attempting to resurrect the youkai lord Gyumaoh by mixing human science with youkai magic. This forbidden practice has created a Minus Wave of negative energy that is spreading across Shangri-la, poisoning the souls of the youkai and turning them into mindless monsters. The only hope lies in four legendary heroes: Genjyo Sanzo, a high priest with low morals; Son Goku, the hungry and mischievous Monkey King, just released from 500 years imprisonment; Sha Gojyo, a water sprite with an addiction for good smokes and bad women; Cho Hakkai, the legendary demon slayer, and his transforming dragon Hakuryu. To save Shangri-la, these unlikely companions, united by fate, must travel together ... INTO THE WEST! Having been assigned by the human elders the mission of stopping a mystical plague that has afflicted the Youkai with madness, Genjyo Sanzo assembles his team of Youkai warriors, desperately hoping that the disease will not affect them. He sets up qualifying tests that will help him determine the loyalty and worth of Cho Hakkai, Son Goku and Sha Gojyo. The team then journeys west to rid the land of madness.",
      release_date: "January 1st 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1066.jpg"},

      [genres[0], genres[1], genres[4]]
      ],
      [
{
      title: "PLUTO: Urasawa x Tezuka, Volume 005",
      author: "Naoki Urasawa",
      synopsis: "A robot may not harm or kill a human being. Article 13 of the Robot LawsAdolph, a member of a robot hate group, is being used as a pawn and hunted down by the members of his own brotherhood. He must now turn to his worst enemy for protection--Gesicht, the robot who he believes killed his own brother.Contains Chapters 32 to 39.",
      release_date: "September 15th, 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1067.jpg"},

{
      title: "PLUTO: Urasawa x Tezuka, Volume 007",
      author: "Naoki Urasawa",
      synopsis: "Who Killed Astro Boy? No Robots; Human vs. humanoid!Pluto has destroyed six out of the seven great robots of the world, and the pacifist robot Epsilon is the only one that remains. Will Epsilon, who refused to participate in the 39th Central Asian War, leave behind his war-orphaned charges to step onto the battlefield? It just might be that kindly Epsilon, who wields the power of photon energy, will be Pluto's greatest opponent of all!Contains Chapters 48 to 55.",
      release_date: "February 21st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1068.jpg"},

{
      title: "PLUTO: Urasawa x Tezuka, Volume 002",
      author: "Naoki Urasawa",
      synopsis: "In a distant future where sentient humanoid robots pass for human, someone or some thing is out to destroy the seven great robots of the world. Europol’s top detective Gesicht is assigned to investigate these mysterious robot serial murders—the only catch is that he himself is one of the seven targets. Atom, a boy robot whose sophisticated AI programming seamlessly blurs the distinction between man and machine, starts his own investigation into the serial murders of the great robots of the world. When he discovers that the killer’s motives may be connected with the geopolitical events of the recent past, he realizes that the case is far larger than anyone could have ever imagined.Contains Chapters 8 to 15.",
      release_date: "April 26th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1069.jpg"},

{
      title: "PLUTO: Urasawa x Tezuka, Volume 006",
      author: "Naoki Urasawa",
      synopsis: "A new vision based on Astro Boy - 'The Greatest Robot On Earth' Pluto… Sahad… Goji… Abullah… Mysterious figures somehow involved with the serial murders of the great robots of the world. Europol's top robot detective Gesicht has been put on the case, and he's mere steps away from discovering the horrifying truth behind the killer and his motives… Little does he realize that he's also steps away from discovering a horrifying truth of his own… Masterfully crafted science fiction and suspense at its best! In an ideal world where man and robots coexist, someone or some has destroyed the powerful Swiss robot Mont Blanc. Elsewhere a key figure in a robot rights group is murdered. The two incidents appear to be unrelated...except for one very conspicuous clue - the bodies of both victims have been fashioned into some sort of bizarre collage complete with makeshift horns placed by the victims' heads. Interpol assigns robot detective Gesicht to this most strange and complex case - and he eventually discovers that he too, as one of the seven great robots of the world, is one of the targets.Contains Chapters 40 to 47.",
      release_date: "July 18th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1070.jpg"},

{
      title: "PLUTO: Urasawa x Tezuka, Volume 008",
      author: "Naoki Urasawa",
      synopsis: "A new vision based on Astroboy - 'The greatest robot on earth'. Contains Chapters 56 to 65.",
      release_date: "June 30th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1071.jpg"},

{
      title: "PLUTO: Urasawa x Tezuka, Volume 003",
      author: "Naoki Urasawa",
      synopsis: "In a distant future where sentient humanoid robots pass for human, someone or some thing is out to destroy the seven great robots of the world. Europol’s top detective Gesicht is assigned to investigate these mysterious robot serial murders—the only catch is that he himself is one of the seven targets. ",
      release_date: "March 24th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1072.jpg"},

{
      title: "PLUTO: Urasawa x Tezuka, Volume 004",
      author: "Naoki Urasawa",
      synopsis: "A powerful, destructive force in the form of a tornado is killing the great robots of the world one by one. Who or what could be behind this whirlwind? Be it man or robot, it now has its sights set on Atom, the most advanced robot ever created--and Atom is ready to dive right into the eye of the storm.Contains Chapters 24 to 31.",
      release_date: "December 26th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1073.jpg"},

{
      title: "PLUTO: Naoki Urasawa x Ozamu Tezuka, Band 001",
      author: "Naoki Urasawa",
      synopsis: "In a distant future where sentient humanoid robots pass for human, someone or some thing is out to destroy the seven great robots of the world. Europol's top detective Gesicht is assigned to investigate these mysterious robot serial murders; the only catch is that he himself is one of the seven targets.",
      release_date: "September 30th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1074.jpg"},

     [genres[7], genres[8], genres[5]]
   ],
   [

{
     title: "Attack on Titan Vol. 1",
     author: "Hajime Isayama",
     synopsis: "In this post-apocalytpic sci-fi story, humanity has been devastated by the bizarre, giant humanoids known as the Titans. Little is known about where they came from or why they are bent on consuming mankind. Seemingly unintelligent, they have roamed the world for years, killing everyone they see. For the past century, what's left of man has hidden in a giant, three-walled city. People believe their 100-meter-high walls will protect them from the Titans, but the sudden appearance of an immense Titan is about to change everything.",
     release_date: "March 17, 2010",
     img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack1_b13gbw.jpg"},

 {
     title: "Attack on Titan Vol. 2",
     author: "Hajime Isayama",
     synopsis: "The Colossal Titan has breached humanity’s first line of defense, Wall Maria. Mikasa, the 104th Training Corps’ ace and Eren’s best friend, may be the only one capable of defeating them, but beneath her calm exterior lurks a dark past. When all looks lost, a new Titan appears and begins to slaughter its fellow Titans. Could this new monster be a blessing in disguise, or is the truth something much more sinister?",
     release_date: "July 16, 2010",
     img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack2_dg3fd2.jpg"},

 {
      title: "Attack on Titan Vol. 3",
      author: "Hajime Isayama",
      synopsis: "The last thing Eren remembers before blacking out, a Titan had bitten off his arm and leg and was getting ready to eat him alive. Much to his surprise he wakes up without a scratch on him, with a crowd of angry soldiers screaming for his blood. What strange new power has he awakened, and what will happen when the boy devoted to destroying the Titans becomes one himself? Includes special extras after the story!",
      release_date: "December 9, 2010",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack3_a5wigu.jpg"},

 {
      title: "Attack on Titan Vol. 4",
      author: "Hajime Isayama",
      synopsis: " The Survey Corps develop a risky gambit - have Eren in Titan form attempt to repair Wall Rose, reclaiming human territory from the monsters for the first time in a century. But Titan-Eren's self-control is far from perfect, and when he goes on a rampage, not even Armin can stop him! With the survival of humanity on his massive shoulders, will Eren be able to return to his senses, or will he lose himself forever?",
      release_date: "April 8, 2011",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack4_ezzmii.jpg"},

 {
      title: "Attack on Titan Vol. 5",
      author: "Hajime Isayama",
      synopsis: " Thanks to Eren, humanity has taken the town of Trost back from the Titans. Exhausted, Eren falls into a coma for three days - and wakes in shackles, staring at Erwin Smith, leader of the Survey Corps. Certain that Eren's father's research holds the key to the mystery of the Titans' rise, Smith wants an expedition to retrieve it from the house where Eren grew up. But that's deep in Titan territory, and to get there Eren will need to master a power he still doesn't fully nderstand...",
      release_date: "August 9, 2011",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack5_eyvyuk.jpg"},

 {
      title: "Attack on Titan Vol. 6",
      author: "Hajime Isayama",
      synopsis: "On the way to Eren's home, deep in Titan territory, the Survey Corps ranks are broken by a charge led by a female Titan! But this Abnormal is different - she kills not to eat but to protect herself, and she seems to be looking for someone. Armin comes to a shocking conclusion!",
      release_date: "December 9, 2011",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack6_kofxex.jpg"},

 {
      title: "Attack on Titan Vol. 7",
      author: "Hajime Isayama",
      synopsis: "The Survey Corps sets a cunning trap to capture the mysterious Abnormal Titan that broke through their ranks. As Arwin tries to determine the grotesque creature's identity and purpose, scouts report Titans closing in on all sides! But they don't seem to be after the humans - instead they're targeting the Titan!",
      release_date: "April 9, 2012",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack7_m0tkhn.jpg"},

 {
      title: "Attack on Titan Vol. 8",
      author: "Hajime Isayama",
      synopsis: "The expedition outside the wall was Eren's chance to prove himself. But it failed, and the female Titan is free once more! With his squad dead, Eren faces a royal summons. Will Mikasa and Armin have to betray their king to save their friend? And can they discover the female Titan's identity before she kills again? ? ?",
      release_date: "August 9, 2012",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack8_jrxfjz.jpg"},

 {
      title: "Attack on Titan Vol. 9",
      author: "Hajime Isayama",
      synopsis: "Eren is still resting from his brutal fight with the female Titan, when word reaches the interior that the impossible has happened: Wall Rose itself has been breached, and Titans are pouring through the gap! The emergency casts new urgency over Armin and Hange's questions about how the walls were built, and what humanity can do to restore them...",
      release_date: "December 7, 2012",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack9_maoghk.jpg"},

 {
      title: "Attack on Titan Vol. 10",
      author: "Hajime Isayama",
      synopsis: "With no combat gear and Wall Rose breached, the 104th scrambles to evacuate the villages in the Titans' path. On their way to the safety of Wall Sheena, they decide to spend the night in Utgard Castle. But their sanctuary becomes a slaughterhouse when they discover that, for some reason, these Titans attack at night!",
      release_date: "April 9, 2013",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack10_zbw0xq.jpg"},

 {
      title: "Attack on Titan Vol. 11",
      author: "Hajime Isayama",
      synopsis: "Thanks to Eren's timely arrival, the 104th has managed to turn the tide at Wall Rose. But this momentary victory forces two more traitors into a corner - and the identity of the Titans who have been destroying the walls is revealed! What can Eren do against the two most dangerous monsters humanity has ever faced? And who else might be an enemy in disguise?",
      release_date: "August 9, 2013",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack11_bwigkx.jpg"},

 {
      title: "Attack on Titan Vol. 12",
      author: "Hajime Isayama",
      synopsis: "Erwin and the Survey Corps desperately mount a rescue operation to take Eren back from the Colossus Titan and Armored Titan. But without the numbers to form up properly outside the walls, how can the humans catch up before they're all slaughtered? Just whose side is Ymir on? And will Eren ever see his friends again?",
      release_date: "December 9, 2013",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack12_pokfjs.jpg"},

 {
      title: "Attack on Titan Vol. 13",
      author: "Hajime Isayama",
      synopsis: "At great cost to the Garrison and the Survey Corps, Commander Erwin has managed to recover Eren from the Titans who tried to carry him off. But during the battle, Eren manifested yet another power he doesn't understand. As Eren and Krista find new enemies, the Survey Corps faces threats from both inside and outside the walls. And what will happen to Ymir, now that she has decided to make herself the Titans' prize?",
      release_date: "April 9, 2014",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack13_j6ytwp.jpg"},

 {
      title: "Attack on Titan Vol. 14",
      author: "Hajime Isayama",
      synopsis: "Commander Erwin has finally come to a decision: Putting their own wealth and position ahead of the survival of humanity, the royal government is no longer fit to lead. To execute their leader's most audacious plan yet, Eren and Krista will have to put themselves in peril yet again, and Armin, Mikasa, and the rest of the Survey Corps will have to turn from humanity's guardians into traitors. If they fail this time, they'll face not a Titan's gaping mouth, but the gallows...",
      release_date: "August 8, 2014",
           img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack14_ge2dqi.jpg"},

 {
      title: "Attack on Titan Vol. 15",
      author: "Hajime Isayama",
      synopsis: "Hange's interrogation of a Military Police squad has revealed that Krista (a.k.a. Historia Reiss) is the true heir to the throne. The Corps quickly moves to enthrone her as queen, but a homicidal MP leads a squad that abducts Eren and Krista and throws the Corps into disarray. With Erwin arrested and the Survey Corps on the edge of dissolution, are Levi and Hange finally out of options?",
      release_date: "December 9, 2014",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack15_q4jyxl.jpg"},

 {
      title: "Attack on Titan Vol. 16",
      author: "Hajime Isayama",
      synopsis: "Captured by Rod Reiss, the rightful king, Krista and Eren finally have their memories back. What exactly happened to Eren, and what was the crime his father committed? Meanwhile, the Survey Corps desperately hunts for Eren, while at the same time seeking to legitimize their military coup. As the situation inside the walls comes to a head, the mysteries of the world of the Titans seem on the cusp of being solved at last!",
      release_date: "April 9, 2015",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack16_gzpw7j.jpg"},

 {
      title: "Attack on Titan Vol. 17",
      author: "Hajime Isayama",
      synopsis: "Thanks to Rod Reiss, Eren finally knows the terrible truth behind how he acquired his Titan powers, and the depth of his father's crimes. The king orders his daughter Historia to kill Eren and restore the power of the Titans to its rightful place, but she chooses her own selfish path: survival. As the cavern crumbles around the Survey Corps, Eren must make another last-minute decision, with the lives of all his friends in the balance.",
      release_date: "August 7, 2015",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack17_zh3zlu.jpg"},

 {
      title: "Attack on Titan Vol. 18",
      author: "Hajime Isayama",
      synopsis: "The Survey Corps has overthrown the Royal Government and swept away the tyranny of the king. The next step: Move to retake Wall Maria, with the helpf of a newly-discovered metallic ore and Eren’s miraculous Titan hardening powers. But as humanity pulls together, its enemies also unite beyond the Walls… now that the Beast Titan has joined Reiner and Bertolt, what havoc will they wreak?",
      release_date: "December 9, 2015",
      img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/attack18_rjbrip.jpg"},

      [genres[11], genres[12]],
      ],
      [
{
      title: "Alice in the Country of Hearts, Vol. 03",
      author: "QuinRose",
      synopsis: "The hilarious--and dangerous--tale of Alice's adventures in wonderful Wonderland continues.",
      release_date: "June 10th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1075.jpg"},

{
      title: "Alice in the Country of Hearts, Vol. 01",
      author: "QuinRose",
      synopsis: "A clever retelling of the 'Alice in Wonderland' tale--manga-style--this title is releasing in time for the major motion picture directed by Tim Burton and starring Johnny Depp.",
      release_date: "July 10th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1076.jpg"},

{
      title: "Alice in the Country of Hearts, Vol. 2",
      author: "QuinRose",
      synopsis: "Kidnapped by a handsome man with rabbit ears, Alice Liddell finds herself abandoned in an odd place called Wonderland and thrust into a 'game,' the rules of which she has yet to learn. Alice, ever the plucky tomboy, sets off to explore and get the lay of this strange land, intent on finding her rude kidnapper and giving him a piece of her mind (and her fist). But little does she know that she's wandered right into the middle of a dangerous power struggle involving just about all of Wonderland's attractive, weapon-happy denizens. And the only way for Alice to return home is to get acquainted with the lot of them?! How in the world will she manage that and still manage to stay alive?!",
      release_date: "December 10th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1077.jpg"},

{
      title: "Alice in the Country of Hearts, Vol. 1",
      author: "QuinRose",
      synopsis: "Kidnapped by a handsome man with rabbit ears, Alice Liddell finds herself abandoned in an odd place called Wonderland and thrust into a 'game,' the rules of which she has yet to learn. Alice, ever the plucky tomboy, sets off to explore and get the lay of this strange land, intent on finding her rude kidnapper and giving him a piece of her mind (and her fist). But little does she know that she's wandered right into the middle of a dangerous power struggle involving just about all of Wonderland's attractive, weapon-happy denizens. And the only way for Alice to return home is to get acquainted with the lot of them?! How in the world will she manage that and still manage to stay alive?!",
      release_date: "January 10th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1078.jpg"},

{
      title: "Alice in the Country of Hearts, Vol. 04",
      author: "QuinRose",
      synopsis: "This is a clever retelling of the 'Alice in Wonderland' tale - manga-style! Sadness looms over Alice after Ace shows how life is treated in Wonderland. To cheer her up, Boris takes Alice to the amusement park, but when she comes home, Julius asks her if she wants to leave the clock tower. Where will Alice live now?",
      release_date: "September 1, 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1079.jpg"},

{
      title: "Alice in the Country of Hearts, Vol. 06",
      author: "QuinRose",
      synopsis: "A clever retelling of the Alice in Wonderland tale - manga-style! Sadness looms over Alice after Ace shows how life is treated in Wonderland. To cheer her up, Boris takes Alice to the amusement park, but when she comes home, Julius asks her if she wants to leave the clock tower. Where will Alice live now?",
      release_date: "December 15th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1080.jpg"},

{
      title: "Alice in the Country of Hearts, Vol. 05",
      author: "QuinRose",
      synopsis: "The NEW YORK TIMES bestselling manga continues!",
      release_date: "June 10th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1081.jpg"},

{
      title: "Alice in the Country of Hearts, Vol. 02",
      author: "QuinRose",
      synopsis: "Alice is kidnapped and brought to the strange world of Wonderland, where a war is waging between the Queen of Hearts and the Hatter gang syndicate, and Alice must find her way home while escaping their wrath.",
      release_date: "January 10th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1082.jpg"},

{
      title: "Alice in the Country of Hearts, Vol. 3",
      author: "QuinRose",
      synopsis: "Kidnapped by a handsome man with rabbit ears, Alice Liddell finds herself abandoned in an odd place called Wonderland and thrust into a 'game,' the rules of which she has yet to learn. Alice, ever the plucky tomboy, sets off to explore and get the lay of this strange land, intent on finding her rude kidnapper and giving him a piece of her mind (and her fist). But little does she know that she's wandered right into the middle of a dangerous power struggle involving just about all of Wonderland's attractive, weapon-happy denizens. And the only way for Alice to return home is to get acquainted with the lot of them?! How in the world will she manage that and still manage to stay alive?!",
      release_date: "December 15th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1083.jpg"},

      [genres[4], genres[13], genres[1]]
      ],

      [
{
      title: "Bakuman, Volume 13: Avid Readers and Love at First Sight",
      author: "Tsugumi Ohba",
      synopsis: "After being told their current series Perfect Crime Party will not be turned into an anime, Moritaka and Akito start planning on ways to create a second series. Their best chance might be to do well in a new contest where they will compete with their rivals over who can create the best romance story!",
      release_date: "January 1st 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1084.jpg"},

{
      title: "Bakuman, Volume 5: Yearbook and Photobook",
      author: "Tsugumi Ohba",
      synopsis: "The mystery behind manga-making revealed! Big changes are in store now that Moritaka and Akito have their very own series in Shonen Jump. Hanging out with their favorite manga creators, hiring assistants, keeping track of the weekly reader surveys—life as a professional manga artist is tough! Can these two survive the pressure…?",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1085.jpg"},

{
      title: "Bakuman, Volume 8: Panty Shot and Savior",
      author: "Tsugumi Ohba",
      synopsis: "The mystery behind manga-making revealed! Average student Moritaka Mashiro enjoys drawing for fun. When his classmate and aspiring writer Akito Takagi discovers his talent, he begs Moritaka to team up with him as a manga-creating duo. But what exactly does it take to make it in the manga-publishing world?Drama swirls around the manga creators as they try to move forward after being canceled from . Moritaka and Akito work hard on a new comedy story pitch while Aoki and Nakai struggle with some personal issues. But when Kaya uncovers Akito’s meetings with Aoki and Iwase, things might never be the same.",
      release_date: "April 30th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1086.jpg"},

{
      title: "Bakuman, Volume 7: Gag and Serious",
      author: "Tsugumi Ohba",
      synopsis: "Average student Moritaka Mashiro enjoys drawing for fun. When his classmate and aspiring writer Akito Takagi discovers his talent, he begs Moritaka to team up with him as a manga-creating duo. But what exactly does it take to make it in the manga-publishing world? Moritaka and Akito face the prospect of their series being canceled in Shonen Jump due to dropping popularity. Can the duo avoid the axe and keep fighting? And when Akito starts becoming friendly with fellow manga creator Ko Aoki, how will it affect his long-term relationship with Kaya? About The Author: Born in Tokyo, Tsugumi Ohba is the author of the hit series Death Note. His current series Bakuman. is serialized in Weekly Shonen Jump.",
      release_date: "March 4th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1087.jpg"},

{
      title: "Bakuman, Vol. 11",
      author: "Tsugumi Ohba",
      synopsis: "With Hattori, their former editor, helping out again, Moritaka and Akito do everything they can to make their new series the best it can be. Moritaka works on the character designs while Akito tries to come up with the perfect names for the characters and the series itself. But when it debuts in Weekly Jump magazine, can it take the top spot?!",
      release_date: "June 5th, 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1088.jpg"},

{
      title: "Bakuman, Vol. 1",
      author: "Tsugumi Ohba",
      synopsis: "Average student Moritaka Mashiro enjoys drawing for fun. When his classmate and aspiring writer Akito Takagi discovers his talent, he begs Moritaka to team up with him as a manga-creating duo. But what exactly does it take to make it in the manga-publishing world? Moritaka is hesitant to seriously consider Akito's proposal because he knows how difficult reaching the professional level can be. Still, encouragement from persistent Akito and motivation from his crush push Moritaka to test his limits!",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1089.jpg"},

{
      title: "Bakuman, Volume 15",
      author: "Tsugumi Ohba",
      synopsis: "With Nanamine's manga struggling, he makes an interesting challenge to Moritaka and Akito. But will the duo accept and risk what they've worked so hard to achieve? And when the news media puts the spotlight on their series for the wrong reasons, how will it affect Akito?",
      release_date: "January 1st 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1090.jpg"},

{
      title: "Bakuman, Vol. 12: Artist and Manga Artist",
      author: "Tsugumi Ohba",
      synopsis: "By the creators of Death Note! The mystery behind manga-making revealed! Average student Moritaka Mashiro enjoys drawing for fun. When his classmate and aspiring writer Akito Takagi discovers his talent, he begs Moritaka to team up with him as a manga-creating duo. But what exactly does it take to make it in the manga-publishing world? With their new series Perfect Crime Party doing well in Weekly Shonen Jump, Moritaka and Akito sets their sights on beating their rivals in the magazine. But just as their dreams seem within reach, some surprising news will deal them an unexpected setback.",
      release_date: "March 4th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1091.jpg"},

{
      title: "Bakuman, Vol. 16",
      author: "Tsugumi Ohba",
      synopsis: "Eiji Nizuma announces that if he can top the Weekly Shonen Jump survey results for ten straight weeks, he will have one of the manga series in the magazine canceled. But which series does Eiji want to cancel? And what will Ashirogi and the other manga creators do to stop him?!",
      release_date: "January 1st 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1092.jpg"},

{
      title: "Bakuman, Volume 4: Phone Call and the Night Before",
      author: "Tsugumi Ohba",
      synopsis: "Average student Moritaka Mashiro enjoys drawing for fun. When his classmate and aspiring writer Akito Takagi discovers his talent, he begs Moritaka to team up with him as a manga-creating duo. But what exactly does it take to make it in the manga-publishing world?When Akito is unable to come up with a storyboard within the time frame he promised, Moritaka decides to break up their partnership! As they go their separate ways to create manga, it may turn out that they're actually headed in the same direction...",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1093.jpg"},

{
      title: "Bakuman, Vol. 18",
      author: "Tsugumi Ohba",
      synopsis: "Moritaka and Akito complete their new story, Reversi, and hope it will finally lead to them getting an anime series. But standing in their way is Eiji Nizuma with his new story, Zombie Gun. This intense head-to-head battle may have ramifications for the entire manga industry!",
      release_date: "January 1st 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1094.jpg"},

{
      title: "Bakuman, Vol. 19",
      author: "Tsugumi Ohba",
      synopsis: "With their new series, Moritaka and Akito start beating Eiji Nizuma in the Shonen Jump rankings for the first time. But in the actual book sales, Eiji is somehow still on top. The duo is as determined as ever to achieve their dreams, but a new scandal threatens to destroy everything!",
      release_date: "January 1st 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1095.jpg"},

{
      title: "Bakuman, Vol. 17",
      author: "Tsugumi Ohba",
      synopsis: "As the veteran manga artists start taking over Weekly Shonen Jump, the younger artists feel the pressure. But what is behind this sudden surge of older artists making a comeback in the magazine? And what is the connection between Azuma and Moritaka’s late uncle?",
      release_date: "January 1st 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1096.jpg"},

{
      title: "Bakuman, Volume 2: Chocolate and Akamaru",
      author: "Tsugumi Ohba",
      synopsis: "After Moritaka and Akito collaborate on a manga together, they venture to publishing house Shueisha in hopes of capturing an editor's interest. As much potential as these two rookies have, will their story impress the pros and actually get printed?",
      release_date: "2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1097.jpg"},

{
      title: "Bakuman, Volume 9: Talent and Pride",
      author: "Tsugumi Ohba",
      synopsis: "The mystery behind manga-making revealed! Average student Moritaka Mashiro enjoys drawing for fun. When his classmate and aspiring writer Akito Takagi discovers his talent, he begs Moritaka to team up with him as a manga-creating duo. But what exactly does it take to make it in the manga-publishing world? With Aiko Iwase teaming up with Eiji to get a series in Shonen Jump, Moritaka and Akito have another major rival to contend with. Can the duo get their series serialized and succeed in Jump this time? And when Akito has to ask for permission to marry Kaya, he’ll have to face her father, a master in Karate!",
      release_date: "August 4th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1098.jpg"},

{
      title: "Bakuman, Volume 14: Psychological Warfare and Catchphrases",
      author: "Tsugumi Ohba",
      synopsis: "Average student Moritaka Mashiro enjoys drawing for fun. When his classmate and aspiring writer Akito Takagi discovers his talent, he begs Moritaka to team up with him as a manga-creating duo. But what exactly does it take to make it in the manga-publishing world?Is Moritaka and Akito’s newest rival also their greatest fan?! The duo is asked to judge a manga contest and the best entry reminds them of their own creations. But who is this mysterious new artist and what are his controversial methods of creating manga?",
      release_date: "2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1099.jpg"},

{
      title: "Bakuman, Volume 10: Imagination and Presentation",
      author: "Tsugumi Ohba",
      synopsis: "Average student Moritaka Mashiro enjoys drawing for fun. When his classmate and aspiring writer Akito Takagi discovers his talent, he begs Moritaka to team up with him as a manga-creating duo. But what exactly does it take to make it in the manga-publishing world? Moritaka and Akito will need to come up with an amazing new manga idea if they ever hope to get back into Weekly Jump magazine, and they only have six months to do it! But with Hattori, their former editor, helping behind the scenes, the duo might have everything in place to create the perfect story.",
      release_date: "October 4th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1101.jpg"},

{
      title: "Bakuman, Volume 3",
      author: "Tsugumi Ohba",
      synopsis: "Average student Moritaka Mashiro enjoys drawing for fun. When his classmate and aspiring writer Akito Takagi discovers his talent, he begs Moritaka to team up with him as a manga-creating duo. But what exactly does it take to make it in the manga-publishing world?",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1102.jpg"},

{
      title: "Bakuman, Volume 6: Recklessness and Guts",
      author: "Tsugumi Ohba",
      synopsis: "The mystery behind manga-making revealed! Moritaka and Akito’s hard work is paying off, and they start challenging their rival Eiji’s popularity in Shonen Jump. But just as they plan to take the next step, the team is hit with a surprising setback. Moritaka and Akito will need the help of their manga artist friends to overcome this hurdle!",
      release_date: "January 1st 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1103.jpg"},

{
      title: "Bakuman, Vol. 20",
      author: "Tsugumi Ohba",
      synopsis: "The mystery behind manga-making revealed! Average student Moritaka Mashiro enjoys drawing for fun. When his classmate and aspiring writer Akito Takagi discovers his talent, he begs Moritaka to team up with him as a manga-creating duo. But what exactly does it take to make it in the manga-publishing world?Reads R to L (Japanese Style) for teen audiences.",
      release_date: "April 19th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1104.jpg"},

      [genres[14], genres[15], genres[16]]
      ],
      [
{
      title: "Cardcaptor Sakura, Vol. 6",
      author: "CLAMP",
      synopsis: "Sakura has collected all of the Clow Cards, but her quest is not over yet. Unless she can pass the final trial, the cards will unleash a terrible curse. Yue, the Judge, doesn't think she has what it takes to become master of the cards. With everything she's ever held dear on the line, Sakura needs to give the performance of her lifetime.",
      release_date: "July 6th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1105.jpg"},


{
      title: "Cardcaptor Sakura, Vol. 1",
      author: "CLAMP",
      synopsis: "From Clamp comes the thrilling adventures of Sakura, a fourth-grader who accidentally finds an enchanted book called . The book once contained a set of magical Clow Cards, but they all escaped while the guardian of the book fell asleep. Now, Sakura is thrust into a mystical journey to capture all the cards before they wreak chaos and destruction!",
      release_date: "May 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1109.jpg"},

{
      title: "Cardcaptor Sakura, Omnibus 2",
      author: "CLAMP",
      synopsis: "The beautiful new teacher in Sakura's class, Kaho Mizuki, soon reveals that she's a shrine maiden with magic powers of her own. But as always, the struggle to capture the Clow cards is woven together with the mysterious - and complicated - threads of love and affection between Sakura and all the people in her life. Will her heart be strong enough as she faces the one who will judge her worthiness to master the cards at last?",
      release_date: "1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1110.jpg"},

{
      title: "Cardcaptor Sakura: Master of the Clow, Vol. 1",
      author: "CLAMP",
      synopsis: "Capturing Cards was only the beginning...Once upon a magic night, an English sorcerer mixed Western wizardry with Eastern enchantments to create a magical deck of cards called the Clow Cards. These cards were hidden inside a dusty old book for decades, their powers virtually wasted. Then one fateful day, a young girl named Sakura Kinomoto discovered the book in her father's library. When she opened it, however, the Clow Cards were gone—and so was life as she knew it. The book's magical guardian, a diminutive winged lion, named Sakura the Cardcaptor, and after many exciting adventures, she finally retrieved all of the cards. Now Sakura has earned the title Master of the Clow.An ominous force is brewing in Tomoeda. New enchantments are popping up all over the city, and Sakura's Clow Cards seem completely unable to stop them. But when Sakura taps into her inner power to fuel the Clow Cards, she unlocks a new magic of her own creation. Thus begins this 10-year-old's quest to become the greatest magician in the world!",
      release_date: "November 13th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1111.jpg"},

{
      title: "Cardcaptor Sakura, Vol. 5",
      author: "CLAMP",
      synopsis: "It's time for the school talent show and Sakura's class is putting on . Sakura is cast as the prince and you won't believe who the princess is! All seems to be going well with the performance until a Clow Card makes an unexpected entrance between acts! Can our prince break the spell, capture the card and save the day?",
      release_date: "April 1st 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1112.jpg"},

{
      title: "Cardcaptor Sakura, Vol. 3",
      author: "CLAMP",
      synopsis: "When missing Clow Cards begin turning up alarmingly close to Sakura's home, catching the cards isn't just a matter of responsibility--it's a matter of protecting the ones she loves! Meanwhile, the new teacher at school has taken a particular interest in Sakura and her friends. Could she be looking for the Clow Cards too?",
      release_date: "August 1st 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1115.jpg"},

{
      title: "Cardcaptor Sakura, Vol. 4",
      author: "CLAMP",
      synopsis: "The school field trip is the perfect getaway for Sakura. She loves the sea, making dinner with her friends, having no homework, telling ghost stories—and best of all, no worrying about Clow Cards! It's all a blast... until the students start disappearing, one by one! Sakura and company have fallen into a Clow Card trap! Can she defeat the unknown card to get her friends back?!",
      release_date: "December 1st 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1116.jpg"},

{
      title: "Cardcaptor Sakura: Master of the Clow, Vol. 4",
      author: "CLAMP",
      synopsis: "Capturing Cards was only the beginning...Once upon a magic night, an English sorcerer mixed Western wizardry with Eastern enchantments to create a magical deck of cards called the Clow Cards. These cards were hidden inside a dusty old book for decades, their powers virtually forgotten. Then one fateful day, a young girl named Sakura Kinomoto discovered the book in her father's library. When she opened it, however, the Clow Cards were gone--and so was life as she knew it. The book's magical guardian, Cerberus, declared Sakura the Cardcaptor, and after many exciting adventures, she finally retrieved all of the cards. Now Sakura has earned the title Master of the Clow.After defeating Clow Reed's latest batch of magical tests, Sakura must tackle her greatest challenge yet. No, not another enchantment, but the feelings in her heart. Young Sakura has long fostered deep feelings for the older boy, Yukito, and even though it's unlikely that he feels the same way about her, she cannot continue to keep her feelings secret. But even as Sakura prepares to pour out her heart, Eriol, the mysterious transfer student with an unknown link to Clow Reed, plots another dangerous trap for the new Master of the Clow.",
      release_date: "December 1st 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1117.jpg"},

{
      title: "The Art of Cardcaptor Sakura, Vol. 2",
      author: "CLAMP",
      synopsis: "Cardcaptor Sakura was the top-selling girls manga in Japan, and it's become the top-selling girls manga in America, too Now fans can collect all of the full-color artwork from Clamp featuring their favorite characters. Each volume of the Art of Cardcaptor Sakura contains over 100 full color pictures from the series, most of which have never before been seen in America.",
      release_date: "April 26th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1118.jpg"},

{
      title: "Cardcaptor Sakura: Master of the Clow, Vol. 3",
      author: "CLAMP",
      synopsis: "Capturing Cards was only the beginning...Once upon a magic night, an English sorcerer mixed Western wizardry with Eastern enchantments to create a magical deck of cards called the Clow Cards. These cards were hidden inside a dusty old book for decades, their powers virtually wasted. Then one fateful day, a young girl named Sakura Kinomoto discovered the book in her father's library. When she opened it, however, the Clow Cards were gone--and so was life as she knew it. The book's magical guardian, Cerberus, declared Sakura the Cardcaptor, and after many exciting adventures, she finally retrieved all of the cards. Now Sakura has earned the title Master of the Clow.The mysterious presence of Clow Reed continues to test Sakura with new dangers that require all of her energy to defeat. And this means that she no longer has the energy to support Yue, the Guardian of the Moon, and now he could disappear forever! Most of the time, Yue stays in his human form as Yukito, the boy Sakura has a crush on, but now that Yue is weakening, Yukito is deathly ill. If Sakura can't find a way to help him, boy and guardian will disappear forever!",
      release_date: "July 15th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1119.jpg"},

{
      title: "Cardcaptor Sakura, Omnibus 4",
      author: "CLAMP",
      synopsis: "The conclusion of the Cardcaptor Sakura saga Now is the time for people to admit the feelings for other people they've held secret . . . but there are so many feelings, running in so many directions What are the true desires of Eriol, the powerful young boy who is the reincarnation of Clow Reed . . . and why did he wish that Sakura would replace him as Master of the Clow?",
      release_date: "September 25th, 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1122.jpg"},

{
      title: "Cardcaptor Sakura, Vol. 2",
      author: "CLAMP",
      synopsis: "Sakura Kinomoto seems like your average fourth grader--loves P.E., hates math--but there's something about her that's not so normal... she can use magic! As the Cardcaptor, it is Sakura's job to use her powers to track down the missing Clow Cards before disaster befalls the Earth. But there's a new boy in town, Syaoran Li, who claims that the cards are his birthright. According to the Covenant, there can only be one Cardcaptor--did Kero-chan pick the wrong person?",
      release_date: "April 1st 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1124.jpg"},

{
      title: "Cardcaptor Sakura: Master of the Clow, Vol. 2",
      author: "CLAMP",
      synopsis: "Capturing Cards was only the beginning...Once upon a magic night, an English sorcerer mixed Western wizardry with Eastern enchantments to create a magical deck of cards called the Clow Cards. These cards were hidden inside a dusty old book for decades, their powers virtually wasted. Then one fateful day, a young girl named Sakura Kinomoto discovered the book in her father's library. When she opened it, however, the Clow Cards were gone--and so was life as she knew it. The book's magical guardian, Cerberus, declared Sakura the Cardcaptor, and after many exciting adventures, she finally retrieved all of the cards. Now Sakura has earned the title Master of the Clow.Sakura is quickly learning that not all mysteries come from magic cards. In fact, the greatest mysteries of all come from the heart. One person who is close to the hearts of many is the charismatic Yukito. Most of the time, he's a mild-mannered high school student with a big appetite, but Sakura knows that his true form is that of the majestic winged guardian, Yue. As Sakura struggles to reconcile her feelings for this mysterious older boy, she finds that she has two suitors of her own: Li Syaoran, her one-time rival, now a close friend, and Eriol Hiiragizawa, the enigmatic new transfer student. But in this world of enchantment, not everyone's intentions are what they appear to be...",
      release_date: "March 5th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1125.jpg"},

{
      title: "Cardcaptor Sakura: Master of the Clow, Vol. 5",
      author: "CLAMP",
      synopsis: "Capturing Cards was only the beginning...Once upon a magic night, an English sorcerer mixed Western wizardry with Eastern enchantments to create a magical deck of cards called the Clow Cards. These cards were hidden inside a dusty old book for decades, their powers virtually wasted. Then one fateful day, a young girl named Sakura Kinomoto discovered the book in her father's library. When she opened it, however, the Clow Cards were gone--and so was life as she knew it. The book's magical guardian, Cerberus, declared Sakura the Cardcaptor, and after many exciting adventures, she finally retrieved all of the cards. Now Sakura has earned the title Master of the Clow.The dreams come stronger now to young Sakura. Tokyo Tower... a city asleep... the sun eclipsed by the moon... Kero says it's a premonition, but what does it all mean? It must have something to with Clow Reed—it seems like everything is connected to him these days. He supposedly died many years ago, but his spirit has been present at all of the magical challenges Sakura's faced of late. Why would Clow attack Sakura? Kero chose her to be the new Master of the Clow! Unless that means... Kero chose the wrong heir? It's time for Sakura to face her mysterious opponent and find out once and for all.",
      release_date: "February 18th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1127.jpg"},

{
      title: "Cardcaptor Sakura: Master of the Clow, Vol. 6",
      author: "CLAMP",
      synopsis: "Capturing Cards was only the beginning...Once upon a magic night, an English sorcerer mixed Western wizardry with Eastern enchantments to create a magical deck of cards called the Clow Cards. These cards were hidden inside a dusty old book for decades, their powers virtually wasted. Then one fateful day, a young girl named Sakura Kinomoto discovered the book in her father's library. When she opened it, however, the Clow Cards were gone--and so was life as she knew it. The book's magical guardian, Cerberus, declared Sakura the Cardcaptor, and after many exciting adventures, she finally retrieved all of the cards. Now Sakura has earned the title Master of the Clow.Eriol Hiiragazawa, the source of power behind Sakura's recent trials, is returning to England. The ordeals that Sakura had to endure since capturing the Clow Cards enabled her to fully realize her magical potential, and now that Clow's mystery has been revealed and his heir determined, the Cardcaptor's journey is over. So why is it that Sakura still feels empty? When Li Syaoran announces that he must return to Hong Kong, Sakura must come to terms with her feelings before she loses her friend forever. Up until now, Sakura relied on the power of her star to guide her. For this, her final adventure, she must trust in the power of her heart.",
      release_date: "July 26th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1128.jpg"},

{
      title: "Cardcaptor Sakura, Omnibus 1",
      author: "CLAMP",
      synopsis: "Fourth grader Sakura Kinomoto finds a strange book in her father's library -- a book made by the wizard Clow to store dangerous spirits sealed within a set of magical cards. But when Sakura opens it up, there is nothing left inside but Kero-chan, the book's cute little guardian beast . . . who informs Sakura that since the Clow cards seem to have escaped while he was asleep, it's now her job to capture them!",
      release_date: "October 7th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1129.jpg"},

{
      title: "Cardcaptor Sakura, Omnibus 3",
      author: "CLAMP",
      synopsis: "Now that Sakura has proven herself as a magician, she finds that there are other unnatural forces threatening her town... forces linked, somehow, to two mysterious transfer students who''ve just arrived - one attracted to her brother, the other attracted to her Li and Sakura may be friends now instead of rivals, but if there''s a rival for Sakura''s affections, is he going back to Hong Kong?",
      release_date: "February 1st 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1130.jpg"},

{
      title: "The Art of Cardcaptor Sakura, Vol. 3",
      author: "CLAMP",
      synopsis: "Cardcaptor Sakura was the top-selling girls manga in Japan, and it's become the top-selling girls manga in America, too Now fans can collect all of the full-color artwork from Clamp featuring their favorite characters. Each volume of the Art of Cardcaptor Sakura contains over 100 full color pictures from the series, most of which have never before been seen in America.",
      release_date: "December 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1131.jpg"},

      [genres[4], genres[17]]
      ],
      [
{
      title: "Vampire Knight, Vol. 13",
      author: "Matsuri Hino",
      synopsis: "Yuki is attacked by another pureblood outside a graveyard for meddling in the ways of the vampire society. Injured, she returns home to Kaname, who shares with her his past memories and the truth behind the Kuran family.",
      release_date: "December 3rd 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1132.jpg"},

{
      title: "Vampire Knight, Vol. 18",
      author: "Matsuri Hino",
      synopsis: "Cross Academy is attended by two groups of students: the Day Class and the Night Class. At twilight, when the students of the Day Class return to their dorm, they cross paths with the Night Class on their way to school. Yuki Cross and Zero Kiryu are the Guardians of the school, protecting the Day Class from the Academy’s dark secret: the Night Class is full of vampires!Yukio and Zero team up to go after Kaname. Yuki and Kaname fight each other in the headquarters of the Hunter Society while Sara tries to control Zero through her blood. The female progenitor’s origin metal intervenes, and Yuki realizes there is only one way to stop Kaname…",
      release_date: "May 2nd 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1133.jpg"},

{
      title: "Vampire Knight, Vol. 4",
      author: "Matsuri Hino",
      synopsis: "Zero warns Yuki to stay away from Maria Kurenai, the new Night Class transfer student, although he won't tell Yuki why. Kaname is also wary, and he sends Ichijo to watch Maria so she doesn't start trouble. Who is this girl, and why does she have the entire Night Class on edge",
      release_date: "October 5th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1134.jpg"},

{
      title: "Vampire Knight, Vol. 1",
      author: "Matsuri Hino",
      synopsis: "Yuki Cross has no memory of her past prior to the moment she was saved from a vampire attack ten years ago. She was adopted by the headmaster of Cross Academy, and now works alongside Zero to guard the Academy's secret. Cross Adademy is attended by two groups of students: the Day Class and the Night Class. At twilight, when the students of the Day Class return to their dorm, they cross paths with the Night Class on their way to school. Yuki Cross and Zero Kiryu are the Guardians of the school, protecting the Day Class from the Academy's dark secret: the Night Class is full of vampires!",
      release_date: "July 5th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1135.jpg"},

{
      title: "Vampire Knight, Vol. 3",
      author: "Matsuri Hino",
      synopsis: "Kaname, the pureblood vampire, has kept to his room since learning of Yuki and Zero's forbidden act. However, the arrival of Ichijo's grandfather brings the entire Night Class together to greet one of the oldest vampires on the senate. Ichijo's grandfather says he's there merely to visit his grandson, but he's out for Kaname's blood.",
      release_date: "April 5th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1136.jpg"},

{
      title: "Vampire Knight, Vol. 5",
      author: "Matsuri Hino",
      synopsis: "Zero is suspected of killing Shizuka Hio, the pureblood vampire who murdered his family. Incensed, the vampire senate sends assassins to Cross Academy to execute him. Will the Night Class intervene, or will Kaname let Zero take the fall?",
      release_date: "April 5th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1137.jpg"},

{
      title: "Vampire Knight, Vol. 15",
      author: "Matsuri Hino",
      synopsis: "With Kaname missing, Yuki must now step in as acting head of her clan to maintain the fragile peace between the human and vampire societies. Will she be able to regain the trust of the vampire aristocrats, much less Aido?Reads R to L (Japanese Style) for T+ audiences.",
      release_date: "December 5th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1138.jpg"},

{
      title: "Vampire Knight, Vol. 11",
      author: "Matsuri Hino",
      synopsis: "The Night Class at Cross Academy has been abolished. Zero still attends the Day Class while carrying out his duties as a vampire hunter. Yuki now lives hidden away at the Kuran residence with Kaname, but can she embrace the life of a pureblood vampire?",
      release_date: "December 4th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1141.jpg"},

{
      title: "Vampire Knight, Vol. 2",
      author: "Matsuri Hino",
      synopsis: "Yuki and Zero go into town to do some shopping for the Headmaster, and they are attacked by a fiendish vampire called a 'Level E'. Two Night Class students, Takuma Ichijo and Senri Shiki, come just on time and slay it, and invite Yuki and Zero to their dormitory at midnight to find out why they killed one of their own kind...",
      release_date: "December 5th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1142.jpg"},

{
      title: "Vampire Knight, Vol. 17",
      author: "Matsuri Hino",
      synopsis: "The #1 hit series from Shojo Beat—a tale of vampire romanceCross Academy is attended by two groups of students: the Day Class and the Night Class. At twilight, when the students of the Day Class return to their dorm, they cross paths with the Night Class on their way to school. Yuki Cross and Zero Kiryu are the Guardians of the school, protecting the Day Class from the Academy's dark secret: the Night Class is full of vampires!Reads R to L (Japanese Style) for teen plus audiences.",
      release_date: "December 5th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1143.jpg"},

{
      title: "Vampire Knight, Vol. 9",
      author: "Matsuri Hino",
      synopsis: "Cross over to the night. Meet your knights in shining darkness. Cross Adademy is attended by two groups of students: the Day Class and the Night Class. At twilight, when the students of the Day Class return to their dorm, they cross paths with the Night Class on their way to school. Yuki Cross and Zero Kiryu are the Guardians of the school, protecting the Day Class from the Academy's dark secret: the Night Class is full of vampires! A war among vampires has started at Cross Academy, and even Day Class students are being attacked. Kaname finally reveals his hidden plan to Zero, and Zero must choose on which side he will fight. But in order for Zero to defeat the enemy, he will have to take part in an atrocious act...",
      release_date: "November 5th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1144.jpg"},

{
      title: "Vampire Knight, Vol. 14",
      author: "Matsuri Hino",
      synopsis: "The Vampire Hunter Society has imprisoned Aido in order to interrogate him about Kaname’s connection to Sara Shirabuki. Meanwhile, Yuki wants a fresh start with Kaname, but circumstances arise that may force them apart.",
      release_date: "June 3rd 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1145.jpg"},

{
      title: "The Art of Vampire Knight",
      author: "Matsuri Hino",
      synopsis: "The full-color artwork collection of the hit series Vampire Knight! Cross over into the world of Vampire Knight with the lush, full-color artwork of Matsuri Hino. Includes an extensive gallery with author comments, a how-to tutorial, and an exclusive poster.",
      release_date: "July 5th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1146.jpg"},

{
      title: "Vampire Knight, Vol. 16",
      author: "Matsuri Hino",
      synopsis: "The Night Class is back in session, but Yuki finds herself quickly becoming second fiddle to Sara Shirabuki. With Kaname gone, Yuki is now desperate for blood, so Zero offers her his own. Will she break her promise to Kaname and drink from Zero?",
      release_date: "May 2nd 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1147.jpg"},

{
      title: "Vampire Knight: Ice Blue Sin",
      author: "Ayuna Fujisaki",
      synopsis: "Cross Academy: Behind its gates, humans and vampires share the same halls, separated by Day and Night - a testament to the efforts of one man to promote their peaceful co-existence. Very soon, it will bear witness to a dramatic change in dynasty centuries old in the making. But Before that, stories from the past shall set future events in stone...In the hours of twilight, an intreprid Day Class girl sneaks into the most forbidden place on campus - the Moon Dormitory of te Night Class students. While these scions of vampire aristocracy do not usually take note of humans, Fuka was warmly received and even invited back among them. Something about her has got the Night Class talking, and when one becomes bewitched by the darkness, there can be no turning back...Born into a distinguished vampire hunter family, young Zero is destined to follow in the footsteps of his ancestors. Used to the safety and security of training with his master, the arrival of a senior disciple soon opens his eyes to the harsh reality that is the life of a vampire hunter. Before Cross Academy beckons, this one event shall forever reshape the boy's childhood and turn his eyes jaded to the world.",
      release_date: "2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1148.jpg"},

{
      title: "Vampire Knight, Vol. 12",
      author: "Matsuri Hino",
      synopsis: "It's been one year since Yuki left Cross Academy with Kaname, and tonight is her first vampire soirée as a pureblood. Her best friend Sayori has snuck into the party to see her, but will Yuki and Zero be able to protect a human girl amid a bevy of vampires?",
      release_date: "July 5th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1149.jpg"},

      [genres[7], genres[13], genres[15], genres[18]]
      ],
[
{
      title: "Rurouni Kenshin, Volume 19",
      author: "Nobuhiro Watsuki",
      synopsis: "It began with a sin, committed by Kenshin, back during his bloody days as hitokiri or a government-sanctioned slayer of men. Although stopping most of the assassins who still come seeking revenge should be easy enough, what of the innocent--Sanosuke and Yahiko (Kenshin's comrades), everyone at Akabeko Inn (Kenshin's friends), Kaoru (Kenshin's...?). For once there was another love in Kenshin's life, one which--given his nature--must by definition have been tragic. Can Kenshin escape the shades of his past, and find the will to fight for the real world--for the living--for reality?!",
      release_date: "February 4th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1150.jpg"},

{
      title: "Rurouni Kenshin, Volume 03",
      author: "Nobuhiro Watsuki",
      synopsis: "'Spider's Web'...like ordinary opium, but better processed. Half the cost to produce, but twice the profits! To the people of Aizu, Takani Megumi was a daughter in a famous family of doctors, in which everyone--women and children alike--studied medicine. But to grasping industrialist Takeda Kanryû, she is the hen who lays the golden egg--the only one who knows the Spider's Web formula! To stay with Kanryû is to send even more to their deaths. But to stay with Kenshin and the others is to invite theirs...",
      release_date: "February 2nd 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1151.jpg"},

{
      title: "Rurouni Kenshin, Vol. 1: Meiji Swordsman Romantic Story",
      author: "Nobuhiro Watsuki",
      synopsis: "Packed with action, romance and historical intrigue,  is one of the most beloved and popular manga series worldwide. Set against the backdrop of the Meiji Restoration, it tells the saga of Himura Kenshin, once an assassin of ferocious power, now a humble , a wandering swordsman fighting to protect the honor of those in need. ",
      release_date: "September 2nd 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1152.jpg"},

{
      title: "Rurouni Kenshin, Volume 15",
      author: "Nobuhiro Watsuki",
      synopsis: "At the madman Shishio Makoto's headquarters, the long-delayed duel between Kenshin and Shinomori Aoshi concludes, while at Aoi-Ya, those left behind wage their own, desperate battle against Shishio's Juppongatana or 'Ten Swords.' The strength of one swordsman in particular seems monstrous, and defeat imminent...that is, until Kenshin's former Hiten Mitsurugi master, Hiko Seijûrô, takes the field. Will the respect of one warrior for another succeed where all else has failed? Elsewhere, Kenshin and Sôjirô cross swords at last. Although well-matched, Kenshin's victory is by no means certain...",
      release_date: "May 1st 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1153.jpg"},

{
      title: "Rurouni Kenshin, Volume 20",
      author: "Nobuhiro Watsuki",
      synopsis: "To build a new age, must one truly be mad enough to turn from the extreme justice that political allegiance requires? Deep in the Japanese countryside, far from the gore-spattered streets of the capital, a man who never knew what happiness was begins a new life as husband to a woman who claims to have nowhere else to go. If a man cannot fight to protect the woman he loves, what will become of the nation? Can one woman alone be enough to hold back the madness?",
      release_date: "May 1st 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1154.jpg"},

{
      title: "Rurouni Kenshin, Volume 06",
      author: "Nobuhiro Watsuki",
      synopsis: "Kenshin's battle with Raijûta to decide the fate of Meiji Era swordsmanship is coming to a head. One fact is quickly becoming apparent: Raijûta will stop at nothing to ensure the supremacy of his own school of sword-fighting! Reunited with a member of the former Sekihô Army--that doomed civilian unit--Sanosuke runs into trouble of his own. Old alliances are challenged when a plan to topple the current government by any means necessary is shared...and as his friend puts it, Sano's either 'in,' or 'in the way.' Plus a bonus installment containing the first story Nobuhiro Watsuki ever published!",
      release_date: "August 4th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1156.jpg"},

{
      title: "Rurouni Kenshin, Volume 26",
      author: "Nobuhiro Watsuki",
      synopsis: "If there's one thing tough-as-nails street brawler--and ex-Sekihô Army cadet--Sagara Sanosuke can't stand, it's hypocritical, loudmouthed braggarts who talk the talk but are incapable of walking the walk. Finding himself in the middle of a provincial squabble between an old man and the local yakuza, Sano returns to his old 'fight merchant' ways and agrees to do some ad hoc butt kicking for pay. But the old man he's hired to tangle with might be his strongest foe to date.",
      release_date: "July 2nd 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1157.jpg"},

{
      title: "Rurouni Kenshin, Volume 27",
      author: "Nobuhiro Watsuki",
      synopsis: "Kenshin and his comrades have finally discovered the location of Enishi's island compound, but to free Kaoru from captivity, a good deal of fighting will be necessary. Woo Heishin, Enishi's mysterious second-in-command, meets them on the beach and brings his deadly bodyguards, the Sû-shin or the 'Four Stars,' to serve as a welcoming committee. Yahiko, Sanosuke, Saitô and Aoshi dive into combat with Woo Heishin's warriors as Kenshin prepares himself for his fateful, climactic duel with Enishi. Each of them a ferocious fighter, the Sû-shin are set on stopping Kenshin's friends dead in their tracks.",
      release_date: "September 3rd 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1158.jpg"},

{
      title: "Rurouni Kenshin, Volume 12",
      author: "Nobuhiro Watsuki",
      synopsis: "As Kenshin continues his re-education at the hand of his master in Hiten Mitsurugi, Hiko Seijûrô, he looks back also to the first, early years of that training...including the moment in his life in which he changed his name to 'Kenshin.' Meanwhile, the remaining members of the Juppongatana , or 'Ten Swords,' arrive in Kyoto, while the first phase of Shishio Makoto's plan for Japan finally gets underway. While Misao and the Oniwabanshu plan how best to pool their resources to stop Shishio from setting Kyoto ablaze, Kenshin, Sano, and Saitô--now reunited--must consider their own next course of action.",
      release_date: "September 4th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1160.jpg"},

{
      title: "Rurouni Kenshin, Volume 05",
      author: "Nobuhiro Watsuki",
      synopsis: "Isurugi Raijûta, a truly old-school swordsman, comes to Kenshin and requests his aid in reforming the state of swordsmanship schools, or kenjutsu dojo, in Japan. Although Kenshin is intrigued by Raijûta's ideals (chiefly, that there is a need for a nation-wide, unifying school), Raijûta's plan to 'weed out' the schools he deems unfit is not in accordance with Kenshin's deepest-held beliefs. Given the choice of either joining Raijûta's 'Shinko-ryû' movement or dying, Kenshin walks away, choosing neither. But Raijûta isn't willing to let Kenshin off the hook so easily...",
      release_date: "June 2nd 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1161.jpg"},

{
      title: "Rurouni Kenshin, Volume 16",
      author: "Nobuhiro Watsuki",
      synopsis: "Is there such a thing as divine will or guidance...? Seta Sôjirô, stopping for a moment in mid-battle with Kenshin, may be beginning to think so. When Sôjirô made the fateful decision to ally with the monomaniacal Shishio Makoto, his family paid the ultimate price. But is the flesh of the weak truly the sustenance of the strong, as Shishio insists? Kenshin, whose Hiten Mitsurugi school places the protection of the helpless before all else, would surely disagree. In a world where might makes right only too often, what choice have 'the wronged' but to wait for a savior? And when that savior comes too late...what then?",
      release_date: "July 4th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1162.jpg"},

{
      title: "Rurouni Kenshin, Volume 02",
      author: "Nobuhiro Watsuki",
      synopsis: "When the chief of the Police Sword Corps himself comes asking for favors, things must be bad. Hitokiri Udô Jin-e--a black-hatted, crazy-eyed slayer who fells both targets and innocent bystanders alike--is steadily working his way through a list of former Ishin Shishi patriots now ensconced within position of power in the Meiji government. Can Kenshin withstand the hypnotic, paralyzing effect of Jin-e...?",
      release_date: "December 2nd 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1163.jpg"},

{
      title: "Rurouni Kenshin, Volume 23",
      author: "Nobuhiro Watsuki",
      synopsis: "In order to discover more about the relationship that binds Kenshin and Enishi, Saitô Hajime makes a surprise appearance at Kamiya Dojo--only to find the aftermath of Kenshin, Sanosuke, and Yahiko's desperate life-or-death battles with Enishi's cabal of fighters. One member of the 'Six Comrades' remains standing--the mysterious and deadly Yatsume Mumyôi. Will the strength of Saitô Gatotsu be enough to fell this freakish warrior-of-the-shadows?!",
      release_date: "November 4th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1164.jpg"},

{
      title: "Rurouni Kenshin, Volume 21",
      author: "Nobuhiro Watsuki",
      synopsis: "Though he once killed in the name of the nascent Meiji government, even an infamous manslayer such as 'Hitokiri Battôsai' might grow weary and vow never to kill again. As a new age dawns, there are those who yet cling to the ways of bloodshed, and see the days of peace and prosperity Kenshin and others like him fought so hard to bring forth as betrayal. In ten days' time, the enemies of Kenshin will come for him, and all who stand beside him are in danger. Is the time of earthly justice truly at hand?",
      release_date: "July 3rd 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1165.jpg"},

{
      title: "Rurouni Kenshin, Vol. 5 #13-15",
      author: "Nobuhiro Watsuki",
      synopsis: "One of the most popular manga series in the world now in an omnibus format. Packed with action, romance and historical intrigue, Rurouni Kenshin is one of the most beloved and popular manga series worldwide.",
      release_date: "January 20th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1166.jpg"},

{
      title: "Rurouni Kenshin, Volume 13",
      author: "Nobuhiro Watsuki",
      synopsis: "The Great Kyoto Fire behind them (and casualties relatively slight), Kenshin and the others consider their next move. The Oniwabanshu may indeed be allies this time ('Now there's a weird twist,' as Sano says), but their leader, Shinomori Aoshi, is not. Is Kenshin truly, as it is claimed, the only one who can bring peace to the former Okashira or 'head' of the Kyoto-based spy group...? Elsewhere, madman Shishio Makoto has made his own plans for Kenshin and the others, plans involving a 'man-to-man,' death match-style battle to the finish…",
      release_date: "December 2nd 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1168.jpg"},

{
      title: "Rurouni Kenshin, Volume 09",
      author: "Nobuhiro Watsuki",
      synopsis: "A glimpse of the new Japan if the mad ambitions of Shishio Makoto should succeed is revealed when Kenshin arrives in Kyoto and meets him at last...although the epic battle between them will have to wait. Pitted against Shishio's soldiers, Kenshin's reversed-edge sakabatô is broken--can it be reforged? Should it be reforged? For time has once again begun to flow, and violence once more washes over the land. Although Kenshin has abandoned the ways of the hitokiri and has sworn to take life no longer, a new assassin has now arisen--one whose taste for blood and thirst for power knows no bounds…",
      release_date: "February 2nd 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1169.jpg"},

{
      title: "Rurouni Kenshin, Volume 08",
      author: "Nobuhiro Watsuki",
      synopsis: "In the 11th year of Meiji, on the day marked in the Western calendar as May 14th, time once again begins to flow. The shocking midday murder of Department of Internal Affairs Chief Ôûkubo a fait accompli, Kenshin leaves for Kyoto, scene of chaos and bloodshed--against the wishes of nearly everyone who knows him as the gentle 'rurouni.' Awaiting him there is Shishio Makoto, the hitokiri who replaced the cold-eyed assassin Himura Battôsai who forswore further killing and took up the reversed-blade sakabatô. But does Kenshin go to Kyoto for a duel...or for a death-match?!",
      release_date: "December 1st 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1172.jpg"},

{
      title: "Rurouni Kenshin, Volume 14",
      author: "Nobuhiro Watsuki",
      synopsis: "As the Juppongatana or 'Ten Swords' move to attack those at Aoi-Ya (Kaoru, Yahiko, Misao, and the rest of the Kyoto-based spy clan), Kenshin--accompanied by Sanosuke and Saitô--squares off against one of his most powerful opponents yet: Shinomori Aoshi, former Okashira or 'head' of the Oniwabanshû. Bound by promises to both return Misao's 'Aoshi-sama' to her safely, and to face Shinomori himself in a climactic, decisive battle, the time is now to learn once and for all who has the will to live, who has the will to die...and who has the will to fight.",
      release_date: "March 4th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1173.jpg"},

{
      title: "Rurouni Kenshin, Volume 24",
      author: "Nobuhiro Watsuki",
      synopsis: "To defeat an enemy in combat is one thing. To destroy an enemy's spirit by striking at what he holds dearest is another. Kenshin always felt that, so long as he wielded a sakabatô, those within his sight could be protected from harm, yet while he is incapacitated by the gargantuan Kujiranami of the 'Six Comrades,' Enishi seizes upon the opportunity to cripple Kenshin's resolve, and will to fight, for good. If Kaoru dies, will Kenshin's dream of a new Japan die with her?",
      release_date: "February 4th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1174.jpg"},

{
      title: "Rurouni Kenshin, Volume 17",
      author: "Nobuhiro Watsuki",
      synopsis: "The madness of Shishio Makoto may know no bounds, but what of his body? An eleventh-hour revelation suggests a possible weakness, but will the news come in time to help a critically wounded Kenshin, whose own strength is reaching its limit? In this new era of Meiji, it's getting harder and harder to tell the innocents from the outlaws. Perhaps, as Kenshin says, it should be for history to decide which side was right, and which side was wrong. The time for hitokiri such as Kenshin and Shishio has passed; let not the man decide the age...but the age, the man.",
      release_date: "October 3rd 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1175.jpg"},

{
      title: "Rurouni Kenshin, Volume 18",
      author: "Nobuhiro Watsuki",
      synopsis: "He may be one of the 'good guys' now (as Misao insists) but, even a month later, Kenshin still is haunted by Kyoto. How can he not be, when it was in Kyoto that, as the feared 'Hitokiri Battôsai,' he once made the streets flow red...? And yet, before he departs this place of so many memories, there are ghosts which must be put to rest. It's said that, when strong feelings are attached to a particular wound, so long as those feelings persist, the scar will remain. How did Kenshin get that cross-shaped scar on his face, and who was it that gave it to him?",
      release_date: "December 4th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1176.jpg"},

{
      title: "Rurouni Kenshin, Volume 11",
      author: "Nobuhiro Watsuki",
      synopsis: "With Misao's help, Kaoru finally manages to locate Kenshin in Kyoto--at the home of Hiko Seijûrô, his master in the school of Hiten Mitsurugi. Having convinced his master to resume (complete) his training, Kenshin assumes the role of pupil once more, while elsewhere in Kyoto, other forces come together. There is the arrival of Shinomori Aoshi, soon approached by the men of Shishio Makoto to join their cause; there is the arrival also of Saitô Hajime, who comes to free Sano from jail and also to join him in questioning 'Ten Swords' member Chô. The truth of Shishio's plan for Japan is beginning to be unveiled…",
      release_date: "June 4th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1178.jpg"},

{
      title: "Rurouni Kenshin, Volume 22",
      author: "Nobuhiro Watsuki",
      synopsis: "The ghosts of Kenshin's past come to wreak havoc on his future as the fight is literally brought to the doorstep of Kamiya Dojo. Three great battles--three great warriors! Myôjin Yahiko, the student of swords not yet a man, takes on a fighter more than twice his age. Sagara Sanosuke, the free-wheeling street fighter, learns a new humility and becomes stronger for it. And Himura Kenshin, the former slayer of men, begins to see a way to atone for the sins of the hitokiri ...",
      release_date: "September 2nd 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1179.jpg"},

{
      title: "Rurouni Kenshin, Volume 04",
      author: "Nobuhiro Watsuki",
      synopsis: "Shinomori Aoshi was once the leader of Edo Castle's elite guard, the Oniwabanshû. But with the fighting at an end and the shôgunate overthrown, the brilliant Aoshi and his four most loyal onmitsu, or spies, find themselves without a home or a purpose. When fighting is your life, loyalty to those lost ideals (and to the man who most symbolized them) may be the one thing left. But Megumi's life is at stake, and however sympathetic Kenshin may feel, he will fight on, to the last man if necessary...",
      release_date: "April 4th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1180.jpg"},

{
      title: "Rurouni Kenshin, Volume 07",
      author: "Nobuhiro Watsuki",
      synopsis: "The Shinsengumi--fearsome and formidable protectors of the Shôgunate. Kenshin knows them well, having done battle with them during the final days of the Meiji Restoration. One man in particular--Saitô Hajime, captain of the third unit--lingers in Kenshin's mind. Now an officer of the law and known as 'Fujita Gorô,' Saitô arrives on the steps of the Kamiya Dojo, challenging Kenshin to a duel that will force a reawakening of Kenshin's own past. But the confrontation with Saitô is just the beginning of something much larger, something that will involve the future of the new Japan...",
      release_date: "October 4th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1181.jpg"},

{
      title: "Rurouni Kenshin, Volume 25",
      author: "Nobuhiro Watsuki",
      synopsis: "Kujiranami, the giant whose right arm Kenshin severed during the Bakumatsu, escapes from prison and goes on the rampage. He is armed with a frightening new weapon, and the police force is helpless against his wrath. One warrior has the courage to stand up to him: Myôjin Yahiko, Kenshin's youthful ward and Kaoru's only student in Kamiya Kasshin-ryû. And while it's true that Yahiko's skill has increased, will he alone be able to stop a deranged Kujiranami? If Kenshin doesn't do something quick, this will certainly be Yahiko's greatest--and last--battle!",
      release_date: "April 2nd 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1182.jpg"},

{
      title: "Rurouni Kenshin, Volume 10",
      author: "Nobuhiro Watsuki",
      synopsis: "His sakabato broken in battle, Kenshin seeks out the man who forged it--Arai Shakkû--only to be turned away. Seikû;, son of the legendary swordsmith, had for a time been continuing his father's work (the forging of katana, meant for killing), but has since given up that calling and spends his time making humble cooking knives. Respecting Seikû's wishes, Kenshin leaves without the desired blade...but not before Shishio's spies learn that Shakkû has forged one last sword. Meanwhile, Shishio arrives in Kyoto with orders for his ten generals or 'Ten Swords' to join him and put into motion a plan to take over Japan. Chô, one of Shishio's 'swords,' learns early of Shakkû's final blade and determines to secure it at any cost. Now, armed only with his broken sakabatô, Kenshin must face Chô in battle...",
      release_date: "April 4th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1183.jpg"},

{
      title: "Rurouni Kenshin, Volume 28",
      author: "Nobuhiro Watsuki",
      synopsis: "As the feared assassin of the Bakumatsu, Himura Kenshin killed in the name of the new era. As the rurouni of Meiji, he wielded a sakabatô to protect those who couldn't protect themselves, all along holding true to his vow to never take another life. Now Kenshin's fight with Enishi has entered its final stage, as has his quest for atonement. Will another life be required to complete the circle? The road of redemption has been a long one for the world-weary swordsman, but now that Kenshin has found the will to live, can he muster the strength to survive?Find out in the final, unforgettable volume of Nobuhiro Watsuki's international manga sensation, Rurouni Kenshin.",
      release_date: "November 4th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1185.jpg"},

      [genres[1], genres[13], genres[10], genres[9]]
      ],
      [
{
      title: "High School Debut, Vol. 12",
      author: "Kazune Kawahara",
      synopsis: "Can a junior high jock turn high school sweetheart overnight? When Haruna hits 9th grade suddenly boys seem much more interesting than softball! Will Haruna’s high school debut end up in heartbreak hotel?For Yoh's birthday, Haruna makes plans for the two of them to go on an overnight trip. Wait a minute...overnight means...they'll be sharing a room?! Close quarters create an intimate setting for romance, but will that be the case for Haruna and Yoh?",
      release_date: "August 25th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1186.jpg"},

{
      title: "High School Debut, Vol. 06",
      author: "Kazune Kawahara",
      synopsis: "Can a junior high jock turn high school sweetheart overnight? When Haruna hits ninth grade suddenly boys seem much more interesting than softball! Will Haruna's high school debut end up in heartbreak hotel?A chance encounter on the train brings Haruna face-to-face with Yoh's ex-girlfriend. (Yes, the ex-girlfriend of 'the beads incident' fame!) Yoh reassures Haruna that he doesn't want to get back together with his ex, but is that how he truly feels?",
      release_date: "April 25th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1187.jpg"},

{
      title: "High School Debut, Vol. 10",
      author: "Kazune Kawahara",
      synopsis: "Can a junior high jock turn high school sweetheart overnight? When Haruna hits 9th grade suddenly boys seem much more interesting than softball! Will Haruna’s high school debut end up in heartbreak hotel?Friendship and love are put to the test when Asaoka reveals to Yoh that he likes Haruna. To settle things once and for all, Yoh and Asaoka strike a deal--whoever loses the school sports meet will give up his feelings for her! Who will win the meet  Haruna's heart?",
      release_date: "December 25th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1188.jpg"},

{
      title: "High School Debut, Vol. 05",
      author: "Kazune Kawahara",
      synopsis: "Hapless Haruna needs help finding a boyfriend! After failing to win the eye of any guy in high school, Haruna enlists the help of cute upperclassman Yoh to coach her on how to make herself more appealing to the male species. Yoh agress, with one catch: Haruna had better not fall for him! Just when things are going well for Haruna, in walks transfer student Leone Matsuzaka. Beautiful Leona's got only one thing in mind--to destroy Haruna's happiness! Who is this vengeful girl and why does she want to hurt Haruna so badly?",
      release_date: "January 25th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1189.jpg"},

{
      title: "High School Debut, Vol. 07",
      author: "Kazune Kawahara",
      synopsis: "Can a junior high jock turn high school sweetheart overnight? When Haruna hits ninth grade suddenly boys seem much more interesting than softball! Will Haruna’s high school debut end up in heartbreak hotel?With Yoh's parents out of town, it's up to Haruna to take care of Yoh when he becomes sick. No parents around, huh? Hmm...but Haruna wouldn't dream of taking advantage of this convenient situation...or would she?",
      release_date: "November 24th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1190.jpg"},

{
      title: "High School Debut, Vol. 08",
      author: "Kazune Kawahara",
      synopsis: "Back in junior high, Haruna Nagashima was only interested in two things: softball and manga. Now that she's starting high school, Haruna's focus has changed--she wants to snag a boyfriend and have the romance of her dreams!Yoh's worried that a freshman seems to have the hots for Haruna, but Haruna is as oblivious as ever. So when the boy in question makes a move on Haruna, how will Haruna respond? More importantly, how will Yoh react?",
      release_date: "March 23rd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1191.jpg"},

{
      title: "High School Debut, Vol. 09",
      author: "Kazune Kawahara",
      synopsis: "Can a junior high jock turn high school sweetheart overnight? When Haruna hits 9th grade suddenly boys seem much more interesting than softball! Will Haruna’s high school debut end up in heartbreak hotel?The school sports meet is coming up, so everyone's gearing up for some fierce competition! Even affairs of the heart become a competitive event when Yoh suspects his friend Asaoka may truly have feelings for Haruna...",
      release_date: "July 25th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1192.jpg"},

{
      title: "High School Debut, Vol. 11",
      author: "Kazune Kawahara",
      synopsis: "Can a junior high jock turn high school sweetheart overnight? When Haruna hits 9th grade suddenly boys seem much more interesting than softball! Will Haruna’s high school debut end up in heartbreak hotel?Haruna becomes worried when she sees Yoh hanging out with an unattractive classmate. (Yoh does seem to have strange taste in women after all...) She has good reason for feeling uneasy--it looks like this girl really does want to sabotage their relationship!",
      release_date: "April 25th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1193.jpg"},

{
      title: "High School Debut, Vol. 03",
      author: "Kazune Kawahara",
      synopsis: "Hopeless Haruna needs help finding a boyfriend! After failing to win the eye of any guy in high school, Haruna enlists the help of cute upperclassman Yoh to coach her on how to make herself more appealing to the male species. Yoh agrees, with one catch: Haruna had better not fall for him!But what does Haruna do when she  find herself liking Yoh? She starts acting weird and avoiding him, that's what! When he confronts her about her strange behaviour and encourages her to be honest with him, will she quash her feelings or confess her love?",
      release_date: "November 23rd 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1194.jpg"},

{
      title: "High School Debut, Vol. 04",
      author: "Kazune Kawahara",
      synopsis: "Can a junior high jock turn high school sweetheart overnight? When Haruna hits ninth grade suddenly boys seem much more interesting than softball! Will Haruna’s high school debut end up in heartbreak hotel?Haruna jumps to the conclusion that Yoh is interested in her friend Mami when she sees the two of them together. Instead of confronting him about it, she runs away! Will Haruna's insecurities end her relationship with Yoh?",
      release_date: "May 25th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1195.jpg"},

{
      title: "High School Debut, Vol. 02",
      author: "Kazune Kawahara",
      synopsis: "Hopeless Haruna needs help finding a boyfriend! After failing to win the eye of any guy in high school, Haruna enlists the help of cute upperclassman Yoh to coach her on how to make herself more appealing to the male species. Yoh agrees, with one catch: Haruna had better not fall for him!Haruna begins to develop feelings for Fumiya, Yoh's friend. Yoh talks her through her first-date jitters, but is Fumiya the right guy for Haruna? Especially when they walk in on Fuyima and Yoh's sister Asami...kissing?!",
      release_date: "July 23rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1196.jpg"},

{
      title: "High School Debut, Vol. 13",
      author: "Kazune Kawahara",
      synopsis: "Can a junior high jock turn high school sweetheart overnight? When Haruna hits 9th grade suddenly boys seem much more interesting than softball! Will Haruna’s high school debut end up in heartbreak hotel?Yoh faces a difficult choice: should he go to university all the way in Tokyo or stay near Haruna? Haruna wants to support Yoh's decision no matter what, but will her high school romance end with his graduation?",
      release_date: "December 25th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1197.jpg"},

{
      title: "High School Debut, Vol. 01",
      author: "Kazune Kawahara",
      synopsis: "When Haruna Nagashima was in junior high her life consisted of playing softball and reading comics. But now that she's going to high school, Haruna decides to put all of her energy towards getting a boyfriend and having the high school romance of a lifetime. To help in her quest, she enlists cute upperclassman Yoh Komiyama to coach her as she eschews her jock tendencies and turns herself into the kind of girl who can catch a guy. Yoh agrees, with one catch: Haruna had better not fall for him!",
      release_date: "March 25th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1198.jpg"},

      [genres[14], genres[13], genres[15]]
      ],
      [
{
      title: "Shugo Chara!, Vol. 6: Betrayal",
      author: "Peach-Pit",
      synopsis: "BETRAYAL Amu has three Guardian Characters who represent different sides of her ideal self-and a fourth who has gone over to work for the evil Easter Corporation! Amu must now face her renegade character while the Guardians try to foil Easter's sinister new scheme-all while dealing with a surprise traitor in their midst! Includes special extras after the story!",
      release_date: "January 1st 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1199.jpg"},

{
      title: "Shugo Chara!, Vol. 2: Friends in Need",
      author: "Peach-Pit",
      synopsis: "FRIENDS IN NEED Cute schoolgirl Amu has a secret: She has three magical companions. Only these enchanted Guardians know who Amu’s true self is, and they’ll do anything to help her unlock her heart! They’re searching for a magic egg, a powerful weapon that could mean trouble in the wrong hands. To find this egg, Amu will have to change her life–and finally learn to be true to herself. Includes special extras after the story![Rating logo:] Ages 13+",
      release_date: "January 6th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1200.jpg"},

{
      title: "Shugo Chara!, Vol. 5: The New Kids",
      author: "Peach-Pit",
      synopsis: "THE NEW KIDS! Amu and her Guardian Characters have found a home at an elite school. But now two new Guardians have been chosen, and each has a secret. One is more complex than Amu thought, and the other may be out to betray the Guardians to the evil Easter Corporation!",
      release_date: "November 20th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1201.jpg"},

{
      title: "Shugo Chara!, Vol. 1: Who Do You Want to Be?",
      author: "Peach-Pit",
      synopsis: "WHO DO YOU WANT TO BE? Everybody at Seiyo Elementary thinks that stylish and super cool Amu has it all: But nobody knows the real Amu, a shy girl who wishes she had the courage to truly be herself. Changing Amu’s life is going to take more than wishes and dreams–it’s going to take a little magic! One morning, Amu finds a surprise in her bed: three strange little eggs. Each egg contains a Guardian Character, an angel-like being who can give her the power to be someone new. With the help of her Guardian Characters, Amu is about to discover that her true self is even more amazing than she ever dreamed.",
      release_date: "January 1st 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1202.jpg"},

{
      title: "Shugo Chara!, Vol. 7: Black Cat",
      author: "Peach-Pit",
      synopsis: "BLACK CATAll The time they’ve been battling the Easter Corporation, Amu and her friends have never known which side mysterious bad boy Ikuto has been on. Now Ikuto is in trouble and has only one place to hide: Amu’s house! Will Amu finally learn Ikuto’s secret?",
      release_date: "July 6th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1203.jpg"},

{
      title: "Shugo Chara!, Vol. 4: Character Swap!",
      author: "Peach-Pit",
      synopsis: "CHARACTER SWAP! Amu has three Guardian Characters, reflections of her true self. But now a fourth egg has shown up at the start of a new school year. Everything has gone wrong, and Amu has no idea who she truly wants to be. Meanwhile, her rival Utau has rejected one of her own Guardian Characters. Is it time for the two to trade Guardians? Is that even possible?",
      release_date: "January 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1204.jpg"},

{
      title: "Shugo Chara!, Vol. 8: With a Little Help From Their Friends",
      author: "Peach-Pit",
      synopsis: "WITH A LITTLE HELP FROM THEIR FRIENDS Ikuto has disappeared, and it’s up to Amu and her fellow Guardians to save him. But what about Tadase’s mysterious past with Ikuto? And what does that mean for Amu and Tadase’s relationship? Plus, Rima learns the truth about Nagihiko’s double life! Includes special extras after the story!",
      release_date: "December 5th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1205.jpg"},

{
      title: "Shugo Chara!, Vol. 9: A Big Discovery",
      author: "Peach-Pit",
      synopsis: "A BIG DISCOVERY Amu and the Guardians are battling the Easter Corporation in order to save Ikuto. But during the fight, two surprising things happen: Ikuto’s troubled past is revealed, and the powerful Embryo appears! Who will catch the egg that makes dreams come true?",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1206.jpg"},

{
      title: "Shugo Chara!, Vol. 3: Can a Bad Guy Turn Good?",
      author: "Peach-Pit",
      synopsis: "CAN A BAD GUY TURN GOOD? Amu's Guardian Characters have been stolen by her teacher, a bitter man whose dreams died when his own egg was smashed. When Amu goes to reclaim her Characters, the School Guardians are there to help. But can they get Amu's eggs back and put the evil teacher's egg together again?",
      release_date: "January 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1207.jpg"},

{
      title: "Shugo Chara!, Vol. 10: A Heart's Desire...",
      author: "Peach-Pit",
      synopsis: "As Amu and Ikuto get to the heart of the Easter Corporation, the Embryo’s true owner is found, and the egg from Ikuto’s violin resurfaces! Later, as graduation approaches, relationships complicate. Who will prove the victor in this game of hearts?",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1208.jpg"},

      [genres[14], genres[17], genres[15]]
      ],
      [
{
      title: "Yotsuba!, Vol. 10",
      author: "Kiyohiko Azuma",
      synopsis: "Yotsuba loooooves playing games! When Daddy's the counter in hide-and-seek, he can never find Yotsuba, 'cos I'm such a good hider! And when we go to the park, Yotsuba's the bestest at swing-tag-shoe-races. Daddy says Yotsuba's making up the rules as we go along, but Yotsuba thinks Daddy's just a sour loser. But maybe Yotsuba will let him win once in a while...'Sementara ayahnya bekerja, Yotsuba bermain rumah-rumahan di bawah mejanya. Kemudian, terinspirasi oleh buku bergambar, Yotsuba pun mulai belajar bagaimana cara membuat pancake. Kisah-kisah lucu dan menyenangkan dalam keseharian Yotsuba!'",
      release_date: "November 27th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1209.jpg"},

{
      title: "Yotsuba!, Vol. 06",
      author: "Kiyohiko Azuma",
      synopsis: "Yotsuba recycles! Gets a bike! Learns about sticky notes! And drinks some super-yummy milk which she then decides she has to share with EVERYONE! But when she forgets to share with Fuuka, this spontaneous little milk lady takes her new bike and goes off on a heart-thumping little adventure of her own, much to her daddy's chagrin. What trouble will Yotsuba get into next?",
      release_date: "December 16th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1210.jpg"},

{
      title: "Yotsuba!, Vol. 03",
      author: "Kiyohiko Azuma",
      synopsis: "When Asagi brings her a gift from Okinawa, Yotsuba is determined to return the favor - no matter what! Her search for the perfect present takes her to the park, but what will Asagi think of this hand-picked offering? As night falls and fireworks season kicks in, the sparks will fly (and so will Jumbo)!",
      release_date: "November 27th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1211.jpg"},

{
      title: "Yotsuba!, Vol. 02",
      author: "Kiyohiko Azuma",
      synopsis: "More all ages comedy from the creator of Azumanga Daioh. Yotsuba hasn't gotten much smarter, and her neighbors still haven't gotten used to this wacky tike's exploits. A truly heartwarming comedy that will make you laugh out loud!",
      release_date: "April 27th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1212.jpg"},

{
      title: "Yotsuba!, Vol. 01",
      author: "Kiyohiko Azuma",
      synopsis: "Presents the story of the new kid in town - little Yotsuba, a green-haired and wide-eyed girl who doesn't have a clue... about anything! With no knowledge of the world around her, and an unnatural fear of air conditioners, Yotsuba has her new neighbors' heads spinning. This book is written by Kyohiko Azuma, creator of Azumanga Daioh.",
      release_date: "August 27th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1213.jpg"},

{
      title: "Yotsuba!, Vol. 09",
      author: "Kiyohiko Azuma",
      synopsis: "Beep-beep-beep! Yotsuba here, and riiiight on schedule! Every day is a fun day, and today’s gonna be even funner than the rest. We’re busy, busy, busy! We should write down a schedule so we don’t forget what we gotta do… like go to the bathroom! And go to the berry gair* store with Daddy! And try to fly! Omigosh, Yotsuba missed toilet time already! Noooo! What to do?! What to do?!(*Koiwai’s note: I think she means “teddy bear.”)",
      release_date: "November 27th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1214.jpg"},

{
      title: "Yotsuba!, Vol. 07",
      author: "Kiyohiko Azuma",
      synopsis: "Mooooo...! MOOOO...! Cows are neato! It's fun pretending to be a cow! And milk comes from cows, so I bet they're real nice too. 'Cos milk is super-yummy, right?! Yotsuba thinks so! And milk comes in lotsa flavors, so cows must come in different flavors too. How else is there white milk and coffee milk and chocolate milk?! Then there's the black and white cows, they've gotta make a super-secret special flavor, huh?! Yotsuba wants to know! Let's go ask the cows at the ranch, Daddy! Come on!",
      release_date: "October 15th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1215.jpg"},

{
      title: "Yotsuba!, Vol. 05",
      author: "Kiyohiko Azuma",
      synopsis: "It's the end of an endless summer, and Yotsuba is out to make the most of it. First, she'll go toe-to-toe with a cardboard robot, then help out the neighbors by eating their grapes and spearheading an impromptu trip to the beach. But when her ice cream is stolen by Yanda, Koiwai's understudy, Yotsuba may have to admit she's finally met her match!",
      release_date: "April 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1216.jpg"},

{
      title: "Yotsuba!, Vol. 04",
      author: "Kiyohiko Azuma",
      synopsis: "Having already tackled such diverse topics as cicadas and global warming, Yotsuba is back and ready to face a whole new set of challenges. See as she strives to master the complexities of rock-paper-scissors! Feel as she becomes one with the water during a weekend of fishing. Be confused as she tries to get money from strangers to buy her groceries! The mayhem continues in Volume 4.",
      release_date: "2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1217.jpg"},

      [genres[14], genres[15]]
      ],
      [

{
      title: "Nausicaä of the Valley of the Wind, Vol. 1",
      author: "Hayao Miyazaki",
      synopsis: "In a long-ago war, humankind set off a devastating ecological disaster. Thriving industrial societies disappeared. The earth is slowly submerging beneath the expanding Sea of Corruption, an enormous toxic forest that creates mutant insects and releases a miasma of poisonous spores into the air. At the periphery of the sea, tiny kingdoms are scattered on tiny parcels of land. Here lies the Valley of the Wind, a kingdom of barely 500 citizens; a nation given fragile protection from the decaying sea's poisons by the ocean breezes; and home to Nausicaä .Nausicaä, a young princess, has an emphatic bond with the giant Ohmu insects and animals of every creed. She fights to create tolerance, understanding and patience among empires that are fighting over the world's remaining precious natural resources.",
      release_date: "1982",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1218.jpg"},

{
      title: "Nausicaä of the Valley of the Wind, Vol. 6",
      author: "Hayao Miyazaki",
      synopsis: "In a long-ago war, humankind set off a devastating ecological disaster. Now the Earth is slowly submerging beneath the expanding Sea of Corruption, an enormous toxic forest filled with mutant fungi that release a miasma of poisonous spores into the air. Nausicaa, a compassionate young princess, and her allies fight to create peace between kingdoms fighting over the world's remaining precious natural resources. Nausicaa embarks on an inner, spiritual journey to the heart of the Sea of Corruption, where she discovers its surprising secret. She returns to the land of the living, compelled to share her discovery, but Nausicaa accidentally awakens a God Warrior - a biotechnological abomination of the war known as the Seven Days of Fire - from its stasis. And now the monstrous yet childlike God Warrior thinks Nausicaa is its mother!",
      release_date: "1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1219.jpg"},

{
      title: "Nausicaä of the Valley of the Wind, Vol. 3",
      author: "Hayao Miyazaki",
      synopsis: "Nausicaä finds herself on the edge of despair as she comes to realize the full extent of the ecological destruction that's ravaging Earth. Meanwhile, Queen Kushana of Torumekia plots to lead her troops back to the imperial capital and seize the crown. Nausicaä agrees to join Kushana and her people in the fight against the Doroks and her scheming brothers.",
      release_date: "1984",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1220.jpg"},

{
      title: "Nausicaä of the Valley of the Wind, Vol. 2",
      author: "Hayao Miyazaki",
      synopsis: "Princess Nausicaä has left the Valley of the Wind to join Princess Kushana's forces. However, Nausicaä gets separated from the Torumekian fleet and finds herself face to face with the mysterious Ohmu, who open their hearts to her. But will Nausicaä be able to interpret their urgent warning about the southern forest? And what of the war which rages all around her?",
      release_date: "August 25th 1983",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1221.jpg"},

{
      title: "Nausicaä of the Valley of the Wind: The Complete Series",
      author: "Hayao Miyazaki",
      synopsis: "Nausicaä of the Valley of the Wind is an epic fantasy tale written and illustrated by legendary Studio Ghibli director Hayao Miyazaki, creator of My Neighbor Totoro, Spirited Away and Howl’s Moving Castle. A modern masterpiece, the entire series is now available in this deluxe box set containing two hardcover volumes with interior color pages and a bonus poster.",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1222.jpg"},

{
      title: "Nausicaä of the Valley of the Wind, Vol. 7",
      author: "Hayao Miyazaki",
      synopsis: "Hayao Miyazaki was a budding filmmaker in 1982 when he agreed to collaborate on a project with the popular Japanese anime magazine Animage. This was Nausicaa, which would make Miyazaki's reputation as much as his 11 films and TV shows. Set in the far future, Nausicaa visualizes an Earth radically changed by ecological disaster. Strange human kingdoms survive at the edge of the Sea of Corruption, a poisonous fungal forest. Nausicaa, a gentle young princess, has a telepathic bond with the giant mutated insects of this dystopia. Her task is to negotiate peace between kingdoms battling over the last of the world's precious natural resources. Nausicaa took Miyazaki 12 years to create, in part because he worked with few or no assistants, doing both the writing and drawing using a meticulously detailed style that critics have compared to the work of the French artist Moebius.",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1223.jpg"},

{
      title: "Nausicaä of the Valley of the Wind, Vol. 4",
      author: "Hayao Miyazaki",
      synopsis: "A monk warns Nausicaä that omens of an apocalypse, Daikaisho, will appear soon and the forest will boil over to cover the land. His predictions appear to be coming true when she arrives in the Forest in the South and discovers Lord Miralupa has developed mutant spores for biological warfare, but the mould begins growing uncontrollably and there's no antidote.",
      release_date: "March 1st 1987",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1224.jpg"},

{
      title: "Nausicaä of the Valley of the Wind, Vol. 5",
      author: "Hayao Miyazaki",
      synopsis: "The Torumekian army is moving house, destroy all in its path, the remaining Doroks have set their sights on Torumekia and Emperor Namulith is plotting to form a joint Dorok-Torumekian kingdom. Meanwhile, four bodies of mold have spawned, expelling heavy miasma and eating everything in their path as they try and merge. Has the long period of purification begun?",
      release_date: "January 1st 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1225.jpg"},

      [genres[4], genres[5], genres[1]]
      ],
      [
{
      title: "Gakuen Alice, Vol. 05",
      author: "Tachibana Higuchi",
      synopsis: "The Alice Festival is coming to a close, but the surprises and fun aren't over for Mikan and her friends yet! Things get a little crazy for Narumi's musical when an accident takes out some of the performers, and Mikan has to step in as the star of the show. But what will happen when she and Luca have to kiss on stage?! And as if that's not enough, as soon as the kids are back in class, it's time for exams, and Mikan is in for some bad news when the scores come back! ",
      release_date: "July 16th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1226.jpg"},

{
      title: "Gakuen Alice, Vol. 03",
      author: "Tachibana Higuchi",
      synopsis: "The school cultural festival is approaching, and the special guest star is going to be Leo. But it turns out that Leo is apparently involved in a dangerous plot to kidnap Natsume for some mysterious purpose. It's up to Mikan and Sumire to break out of the school to follow the abductors.",
      release_date: "November 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1227.jpg"},

{
      title: "Gakuen Alice, Vol. 06",
      author: "Tachibana Higuchi",
      synopsis: "Young Mikan is the newest student at the mysterious and prestigious Alice Academy, where the most talented and powerful students in the country are united, but for what purpose? A series of mysterious incidents of Alices suddenly losing their powers strikes close to home when Prez's abilities suddenly disappear!",
      release_date: "November 19th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1228.jpg"},

{
      title: "Gakuen Alice, Vol. 02",
      author: "Tachibana Higuchi",
      synopsis: "Mikan is officially admitted into Alice Academy, but things still aren't exactly going smoothly. Natsume still bullies her, her class ranking couldn't be lower, some of the teachers are outright hostile, and she has been forbidden to contact anyone outside of the school. Will she be able to find others like her at the school, be betrayed?",
      release_date: "July 18th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1229.jpg"},

{
      title: "Gakuen Alice, Vol. 10",
      author: "Tachibana Higuchi",
      synopsis: "It's time for New Year's, which also makes it Mikan's birthday. But will her special day get lost in the latest whirl of crazy Academy celebrations? And what happens when you combine an invitation to the elite Flower Garden Association's New Year's party (a girls-only event!) with a very sticky prank? Natsume's definitely up to something, but Mikan is left baffled as to what it might be. Read on in the latest, loveliest volume of Gakuen Alice! (Tokyopop)",
      release_date: "April 19th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1230.jpg"},

{
      title: "Gakuen Alice, Vol. 07",
      author: "Tachibana Higuchi",
      synopsis: "Mikan and co. successfully broke into the Senior Division, trying to find the location of the secret wormhole that Z used to escape from campus. But they're all shocked to discover who the guardians of the wormhole turn out to be! And even once their hot pursuit of Z continues, getting a cure for Hotaru and bringing back Prez's Alice may well cost them their lives.",
      release_date: "March 18th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1231.jpg"},

{
      title: "Gakuen Alice, Vol. 08",
      author: "Tachibana Higuchi",
      synopsis: "Mikan and her friends have infiltrated Z's secret hideout, but their dangerous journey is far from over. A face-off between Mikan and the Alice-stealing woman with connections to Mikan's past is just the start of a tense battle to save Hotaru, Prez, and maybe even the lives of Mikan and her team!(Tokyopop)",
      release_date: "August 19th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1232.jpg"},

{
      title: "Gakuen Alice, Vol. 04",
      author: "Tachibana Higuchi",
      synopsis: "Mikan's daring rescue of Natsume has earned her an upgrade to One-star rank, and just in time for the School Festival to start. The festival is even more spectacular than Mikan had ever dreamed, and she and the rest of the Special Ability class are all set to knock visitor's socks off with their great new attraction.",
      release_date: "March 19th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1233.jpg"},

{
      title: "Gakuen Alice, Vol. 13",
      author: "Tachibana Higuchi",
      synopsis: "The exciting events of the Flower Palace may be finally concluded, but the drama never stops at Alice Academy! A lesson in the making of Alice Stones turns out to be fairly revealing, especially when the meaning behind the exchange of said stones is explained to poor Mikan!",
      release_date: "May 18th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1234.jpg"},

{
      title: "Gakuen Alice, Vol. 09",
      author: "Tachibana Higuchi",
      synopsis: "It's time for the Alice Academy Christmas party, and all the students are pitching in with their Alices to help with the preparations. But while Mikan has gotten a lot more comfortable with her own powers, how can 'nullification' help in a situation like this? Meanwhile, the holidays are bringing up a variety of confusing emotions all around, and quite a bit of speculation about romance! (Tokyopop)",
      release_date: "December 16th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1235.jpg"},

{
      title: "Gakuen Alice, Vol. 01",
      author: "Tachibana Higuchi",
      synopsis: "Young Mikan runs away to Tokyo following her best friend, Hotaru, who has been enrolled in an exclusive, secretive private school for geniuses. But it turns out that there is a lot more to Alice Academy than meets the eye. If Mikan wants to stay by Hotaru's side, she has to both pass the strange 'entrance exam' and face the even greater challenge of befriending her very odd new classmates. Whether it's Hotaru's gift for inventing gadgets, the cranky Natsume's fire-casting ability, or Professor Narumi's control of human pheromones, everyone at the school has some sort of special talent. But what ability, if any, does Mikan possess? Mikan is going to have to rely on her courage and spunk if she's going to stay in school, or even stay alive!",
      release_date: "January 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1236.jpg"},

{
      title: "Gakuen Alice, Vol. 11",
      author: "Tachibana Higuchi",
      synopsis: "Natsume has infiltrated the Flower Princess Palace's basement, but he's fallen into a trap. The dangerous abilities class discipline squad has been ordered to punish him and lock him in the basement forever! Will Mikan, Hotaru, Luca, and the rest of the gang be able to stop them from carrying out this deadly crime?",
      release_date: "September 19th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1237.jpg"},

{
      title: "Gakuen Alice, Vol. 12",
      author: "Tachibana Higuchi",
      synopsis: "Young Mikan runs away to Tokyo following her best friend, Hotaru, who has been enrolled in an exclusive private school for geniuses. But it turns out that Alice Academy has more than meets the eye. What ability, if any, does Mikan possess?",
      release_date: "December 19th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1238.jpg"},

{
      title: "Gakuen Alice, Vol. 14",
      author: "Tachibana Higuchi",
      synopsis: "Mikan and her friends are 6th graders now, but the new school year is starting off badly. The school president has created a Public Morals Squad, and it's clear whose behaviour they will be monitoring the most. To top it off, there's a new student in Mikan's class! But for a gentle girl with a sickly demeanour, she's up to something.",
      release_date: "September 19th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1239.jpg"},

      [genres[14], genres[13], genres[15]]
      ],
      [

{
      title: "Love Hina, Vol. 01",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name. Stumbling into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "March 17th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1226.jpg"},

{
      title: "Love Hina, Vol. 04",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name Stumbing into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "September 16th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1227.jpg"},

{
      title: "Love Hina, Vol. 13",
      author: "Ken Akamatsu",
      synopsis: "When Keitaro Urashima fails his entrance exams to get into Tokyo University for the second time, he's officially an unemployed and uneducated slacker. To make things worse, his parents have kicked him out of his house. Fortunately, his grandmother owns the fabulous Hinata Lodge and has agreed to take Keitaro in as caretaker. What he doesn't know is that the lodge is actually a girl's dorm and he's the only guy around! Most guys would kill to live with five sexy ladies, but if Keitaro's not careful, this job will kill him.",
      release_date: "October 17th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1228.jpg"},

{
      title: "Love Hina, Vol. 07",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name Stumbing into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "April 14th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1229.jpg"},

{
      title: "Love Hina, Vol. 02",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name Stumbing into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "April 16th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1230.jpg"},

{
      title: "Love Hina, Vol. 14",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name Stumbing into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "January 17th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1231.jpg"},

{
      title: "Love Hina, Vol. 05",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name Stumbing into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "November 17th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1232.jpg"},

{
      title: "Love Hina, Vol. 03",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name Stumbing into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "June 17th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1233.jpg"},

{
      title: "Love Hina, Vol. 10",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name Stumbing into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "January 17th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1234.jpg"},

{
      title: "Love Hina, Vol. 11",
      author: "Ken Akamatsu",
      synopsis: "When Keitaro Urashima fails his entrance exams to get into Tokyo University for the second time, he's officially an unemployed and uneducated slacker. To make things worse, his parents have kicked him out of his house. Fortunately, his grandmother owns the fabulous Hinata Lodge and has agreed to take Keitaro in as caretaker. What he doesn't know is that the lodge is actually a girl's dorm and he's the only guy around! Most guys would kill to live with five sexy ladies, but if Keitaro's not careful, this job will kill him.",
      release_date: "April 17th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1235.jpg"},

{
      title: "Love Hina, Vol. 06",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name Stumbing into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "February 17th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1236.jpg"},

{
      title: "Love Hina, Vol. 09",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name Stumbing into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "October 17th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1237.jpg"},

{
      title: "Love Hina, Vol. 12",
      author: "Ken Akamatsu",
      synopsis: "When Keitaro Urashima fails his entrance exams to get into Tokyo University for the second time, he's officially an unemployed and uneducated slacker. To make things worse, his parents have kicked him out of his house. Fortunately, his grandmother owns the fabulous Hinata Lodge and has agreed to take Keitaro in as caretaker. What he doesn't know is that the lodge is actually a girl's dorm and he's the only guy around! Most guys would kill to live with five sexy ladies, but if Keitaro's not careful, this job will kill him.",
      release_date: "July 17th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1238.jpg"},

{
      title: "Love Hina, Vol. 08",
      author: "Ken Akamatsu",
      synopsis: "At the age of 5, Keitaro and his childhood sweetheart promised to meet again as students at Japan's most prestigious university. Now 20, he can't pass his entrance exams...or even remember the girl's name Stumbing into a fluke job at an all-girls dormitory may be his last chance. In the series that inspired the new hit anime, Love Hina proves that love conquers all. Even stupidity.",
      release_date: "July 17th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1239.jpg"},

      [genres[14], genres[7], genres[13]]
      ],
      [
{
      title: "Vagabond, Vol. 9",
      author: "Takehiko Inoue",
      synopsis: "It's been one year since Yoshioka Denshichiro granted Musashi a reprieve for a rematch. Denshichiro may have been a better swordsman back then, but with Musashi before him now, he realizes the truly incredible strides his opponent has made in such a short period of time. By sheer force of will, a reluctant Denshichiro moves forward into the fight. And what will the deadly repercussions be for Musashi after this duel that's all but already won?",
      release_date: "October 19th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1240.jpg"},

{
      title: "Vagabond, Vol. 12",
      author: "Takehiko Inoue",
      synopsis: "Miyamoto Musashi and Sasaki Kojiro’s intertwining paths lead them toward what will be the greatest samurai duel in Japanese history. Sasaki Kojiro heads to Kokura for his new position as sword instructor for the powerful Hosokawa Clan. Meanwhile, Musashi is at a crossroads dealing with the aftermath of single-handedly destroying the mighty Yoshioka clan. After he starts to question his quest to be invincible and his whole reason for existence, will his confidence in himself ever be the same?",
      release_date: "March 17th 2015",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1241.jpg"},

      [genres[0], genres[7], genres[1], genres[9]]
      ],
      [

{
      title: "The Prince of Tennis, Volume 6: Sign of Strength",
      author: "Takeshi Konomi",
      synopsis: "As spies from rival schools continue to gather information about the Seishun players, Tezuka, the team captain, challenges Ryoma to a bitter duel to settle their differences. Which player will come out on top of the game? And what peril lurks behind the mask of St. Rudolph's manager and strategist Hajime Mizuki?",
      release_date: "December 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1242.jpg"},

{
      title: "The Prince of Tennis, Volume 11: Premonition of a Storm",
      author: "Takeshi Konomi",
      synopsis: "Practice games soar to a new level as the Seishun Academy intra-squad games get underway. Meanwhile, the semifinal match between Fudomine and Yamabuki at the City Tournament is put on ice when word reaches Kippei that his teammates were involved in a car accident. But the real fun begins when Seishun's Momo steps onto the court to play Yamabuki's Kiyosumi Sengoku. Momo sure wasn't prepared to face a player who uses a racket with an unusually low string tension...!",
      release_date: "December 4th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1243.jpg"},

{
      title: "The Prince of Tennis, Volume 12: Invincible Man",
      author: "Takeshi Konomi",
      synopsis: "The next round of games are underway, and Seishun's Takeshi Momoshiro 'Momo' encounters Kiyosumi in the No. 3 Singles. Momo's in for a hard day's work, as Kiyosumi proves to be a intimidating opponent from the moment he launches his 'Kohou' (Tiger Cannon), or wallop serve. Meanwhile, the Prince of Tennis Ryoma Echizen faces Yamabuki's Jin in the No. 2 Singles. Discover the 'reason' why Jin can't possibly lose...",
      release_date: "February 4th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1244.jpg"},

{
      title: "The Prince of Tennis, Volume 13: Akutsu's Pride/Ryoma's Courage",
      author: "Takeshi Konomi",
      synopsis: "Seishun Academy is in the finals of the District Preliminaries, and the only thing standing in their way is mean, violent, and ill-tempered Jin Akutsu of Yamabuki Junior High! Ryoma desperately needs to toughen up mentally, as Jin has figured out a way to punish him with his powerful shots. Meanwhile, Seishun holds more intra-squad games, and this time someone loses his spot on the starting team…!",
      release_date: "April 4th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1245.jpg"},

{
      title: "The Prince of Tennis, Volume 1: Ryoma Echizen",
      author: "Takeshi Konomi",
      synopsis: "There is a rumor going around that a twelve-year-old boy is going to enter the sixteen-year-old and under tennis group. How can someone so young ever hope to compete with kids much older and more experienced than him? This is no ordinary kid: he is none other than Ryoma Echizen, the Prince of Tennis! Ryoma's father was destined for greatness until he injured himself during a match, ending his career forever. His talent was passed on to his son, who is determined to be the best tennis player in the world. Can the prince gain the respect of his fellow teammates despite his small size and young age? Find out in this intense sports manga!",
      release_date: "January 7th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1246.jpg"},

{
      title: "The Prince of Tennis, Volume 17: Waltzing Toward Destruction",
      author: "Takeshi Konomi",
      synopsis: "Shusuke and Jiro's match continues! Both pull out all the stops, but it's the Hakugei, also known as the White Whale, that's the move to beat. Will it be enough? You gotta read to find out who the loser is in this one!",
      release_date: "February 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1247.jpg"},

{
      title: "The Prince of Tennis, Volume 9: Take Aim!",
      author: "Takeshi Konomi",
      synopsis: "The much-anticipated match between Seishun Academy 's Ryoma Echizen and St. Rudolph's Yuta is underway, and neither of them is giving in to each other's intimidation techniques. Upon orders from Hajime, St. Rudolph's cunning team manager, Yuta must aim for Ryoma's left eye, which was accidentally injured during his previous match. Battling all odds to secure his team's victory--as well as his own on-court safety--can Ryoma formulate a strategy to tame Yuta's killer twist spin shot? And is Yuta really that evil?",
      release_date: "July 4th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1248.jpg"},

{
      title: "The Prince of Tennis, Volume 2: Adder's Fangs",
      author: "Takeshi Konomi",
      synopsis: "Ryoma Echizen, the Prince of Tennis, has just enrolled at Seishun Academy after spending several years in America winning 4 consecutive US Junior Tournaments. His cool confidence raises the hackles of a few older students on the tennis team, and they challenge him to a game--but none of them even comes close to his skill and level of play. Now intramural matches to determine the starting members of the team for the upcoming city tournament are about to begin, and even though the rules don't allow 7th graders to play in tournaments, the captain has arranged for Ryoma to enter the ranking matches. Does he have what it takes to truly deserve the title Prince of Tennis? Find out in this amazing tennis manga!",
      release_date: "April 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1249.jpg"},

{
      title: "The Prince of Tennis, Volume 14: Seishun's Ultimate Man",
      author: "Takeshi Konomi",
      synopsis: "As more intra-squad games are played to determine the starting line-up, fellow Seishun Academy players Kunimitsu Tezuka and Sadaharu Inui duke it out for a slot. But the disparity in their skills becomes evident when everyone realizes that Kunimitsu has not budged since he delivered his serve. Meanwhile, Coach Banda of Yamabuki Junior High offers team captain Kunimitsu a chance to play overseas as an exchange student. Could this be the end of Kunimitsu's tour of duty at Seishun?",
      release_date: "July 4th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1250.jpg"},

{
      title: "The Prince of Tennis, Volume 4: The Black Unit",
      author: "Takeshi Konomi",
      synopsis: "The quest continues for the gritty players at Seishun Academy. With their sights dead-set on making it all the way to the Nationals, they must outclass every team that stands in their way. Next up is Fudomine, a group of belligerent players who were disqualified from the rookie games last year due to a tournament fracas. Tempers flare and talents soar when the battle begins with the very first serve. It might take more than 'Tsubame Gaeshi' to secure this victory!",
      release_date: "August 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1251.jpg"},

{
      title: "The Prince of Tennis, Volume 33: Kunimitsu in Kyushu",
      author: "Takeshi Konomi",
      synopsis: "The National Tournament quarterfinals against Hyotei continue, with Kunimitsu facing power player Munehiro Kabaji. During the match Seishun's captain flashes back to his time in Kyushu and the road that led him to the Nationals. Later, it's a battle of the Golden Pairs: Ryo Shishido and Chotaro Ohtori versus Oishi and Eiji!",
      release_date: "May 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1252.jpg"},

{
      title: "The Prince of Tennis, Volume 36: A Heated Battle! Seishun vs. Shitenhoji",
      author: "Takeshi Konomi",
      synopsis: "The semifinals of the National Tournament begin! Seishun is pitted against powerhouse team Shitenhoji. The first match is No. 3 Singles, with Shusuke up against the Shitenhoji captain, Kuranosuke Shiraishi. Shusuke may be Seishun's resident 'genius,' but the mysterious Kuranosuke is rumored to play 'perfect tennis,' a game with no flaws.",
      release_date: "January 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1253.jpg"},

{
      title: "The Prince of Tennis, Volume 34: Synchro",
      author: "Takeshi Konomi",
      synopsis: "Shuichiro and Eiji are down 3-6 at tie break in their quarterfinal match against Hyotei's Ohtori and Shishido. With their backs against the wall, the Golden Pair unveil their final technique: Synchro. And then it's down to the No. 1 Singles match, with all of Seishun's hopes resting on Ryoma's shoulders as he struggles against Hyotei's captain, Keigo Atobe.",
      release_date: "July 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1254.jpg"},

{
      title: "The Prince of Tennis, Volume 23: Rikkai's Law",
      author: "Takeshi Konomi",
      synopsis: "Seishun players spend sleepless nights anxiously awaiting the Kanto Tournament Finals against Rikkai. And they  be worried! Rikkai's diabolical doubles team of Bunta Marui and Jackal Kuwahara has some crazy moves that'll keep their opponents up for nights to come!",
      release_date: "April 2nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1255.jpg"},

{
      title: "The Prince of Tennis, Volume 27: Until the Very Last Shot",
      author: "Takeshi Konomi",
      synopsis: "The Kanto Tournament reaches its electrifying conclusion!All eyes are riveted on center court, where Ryoma and Genichiro Sanada are locked in a furious contest of strength, skill and willpower. Will Ryoma find a way to contain the tremendous power of Genichiro's 'Furin Kazan' shot? Or will Genichiro lead Rikkai to yet another victory?",
      release_date: "January 5th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1256.jpg"},

{
      title: "The Prince of Tennis, Volume 25: And Shusuke Smiles",
      author: "Takeshi Konomi",
      synopsis: "It's Seishun versus Rikkai in the Kanto Tournament Finals, and the action is heating up. Sadaharu must confront his childhood friend Renji Yanagi, while Shusuke faces off against Akaya Kirihara, Rikkai's brilliant--and ruthless--star player.",
      release_date: "September 3rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1257.jpg"},

{
      title: "The Prince of Tennis, Volume 24: Reunited",
      author: "Takeshi Konomi",
      synopsis: "All hope for a Kanto Tournament Finals win comes down to Eiji and Shuichiro, the Golden Pair. Can they handle a face-off against Rikkai's Masaharu 'The Con Artist' Nio and Hiroshi 'The Gentleman' Yagiyu?! Injuries, surprise secret moves and the ultimate courtside con may mean disaster for Seishun!",
      release_date: "July 2nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1258.jpg"},

{
      title: "The Prince of Tennis, Volume 35: Farewell, Hyotei Academy",
      author: "Takeshi Konomi",
      synopsis: "Ryoma and Keigo's incredible match turns into a battle of stamina and sheer will: whoever's left standing to make the last play will be the winner. Meanwhile, Fudomine's captain, Kippei Tachibana, plays his team's last quarterfinal match against Shitenhoji. His opponent is his ex-teammate, Senri Chitose. Can Kippei overcome the demons of his past and defeat his old friend?",
      release_date: "September 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1259.jpg"},

{
      title: "The Prince of Tennis, Volume 3: Street Tennis",
      author: "Takeshi Konomi",
      synopsis: "The Nationals are coming and Seishun Academy has started training harder than ever! During practice, Rikkai Junior High School's 8th-grader ace Akaya Kirihara spies on Seishun Academy's team. Luckily, he is caught and escorted off the courts. But on the way out, he bumps into none other than Ryoma Echizen, the Prince of Tennis. Tension soars as these two ace players size each other up knowing that someday they will engage in battle to see who is the stronger player. Soon after, Ryoma and Momo get drawn into a doubles match--street tennis style! Can these two star players ever learn how to use their legendary skills to play good doubles?",
      release_date: "June 2nd 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1260.jpg"},

{
      title: "The Prince of Tennis, Volume 37: The Terror of Comic Tennis",
      author: "Takeshi Konomi",
      synopsis: "Seishun's semifinal matches against Shitenhoji continue, and now it's Kaoru and Momo's turn in No. 2 Doubles. Their opponents, Koharu Konjiki and Yuji Hitoji, are highly skilled players but have a style that's a little...unusual. Next, two power players step onto the court for No. 2 Singles: Taka and Gin Ishida, the originator of Taka's Hadokyu shot. In this match of Hadokyu vs. Hadokyu, it's the last player standing who'll win!",
      release_date: "January 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1261.jpg"},

{
      title: "The Prince of Tennis, Volume 7: St. Rudolph's Best",
      author: "Takeshi Konomi",
      synopsis: "As the road to the Nationals narrows, Seishun Academy squares off with St. Rudolph. Through the maneuverings of Hajime, Saint Rudolph's cunning manager, Ryoma gets matched up with Yuta-known to many as 'Lefty Killer.' With an unorthodox game laced with reverse spins and angles, Yuta's game ignites against the seemingly inexperienced-against-lefties Ryoma. Meanwhile, the Seishun doubles tandem of Eiji and Shuichiro assume the Australian formation to break a tie. Is this a desperate attempt to win, or a well-calculated strategy?",
      release_date: "February 2nd 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1262.jpg"},

{
      title: "The Prince of Tennis, Volume 8: Change the Script!",
      author: "Takeshi Konomi",
      synopsis: "As far as winning strategies go, no effective game plan can be carried out without one essential factor--stamina. And when Seishun Academy's Eiji succumbs to exhaustion, their chances of securing the crucial win over St. Rudolph's fades with each drop of their hard-earned sweat. Then, Seishun's setback turns into an even more daunting situation when their team equalizer, Ryoma Echizen, treads unfamiliar ground in his match against the infamous lefty killer Yuta. With Yuta's impressive win-loss record of 16-0 against left-handers, Ryoma's in for one tricky match….",
      release_date: "May 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1263.jpg"},

{
      title: "The Prince of Tennis, Volume 5: New Challenge",
      author: "Takeshi Konomi",
      synopsis: "With only one victory away from advancing to the city tournament, Seishun Academy fields the Prince of Tennis, Ryoma Echizen, to compete against the mysterious and mumbling Shinji of the Fudomine Team. As the punishing battle of skills unfolds, Ryoma develops a muscle paralysis called 'Spot,' which leaves him with barely enough strength to grip the racket, much less swing it. Refusing to go down without a fight, Ryoma unleashes a 'two-sword fighting style' technique that only talented, ambidextrous players are able to execute. Will Ryoma have the strength to pull himself out of the ditch and beat Shinji? And what awaits his ex-pro tennis player father, Nanjiro, when a reporter tracks him down? Find out in the next volume of this intense sports manga!",
      release_date: "October 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1264.jpg"},

{
      title: "The Prince of Tennis, Volume 32: Two of a Cunning Kind",
      author: "Takeshi Konomi",
      synopsis: "The National Tournament moves into the quarterfinal stage, and the Seishun players find themselves pitted against their old rivals, Hyotei. Kicking things off is the No. 3 Singles match between Momoshiro and Hyotei's resident 'genius,' Yushi Oshitari. Will all of Momo's strength and cunning be enough to defeat the 'Player of a Thousand Techniques'?",
      release_date: "February 3rd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1265.jpg"},

{
      title: "The Prince of Tennis, Volume 38: Clash! One-Shot Battle",
      author: "Takeshi Konomi",
      synopsis: "Seishun's semifinal round against Shitenhoji continues with the No. 1 Doubles match, and now it's captain vs. captain as Kunimitsu and Senri square off for a fight. They're backed up by their partners Sadaharu and Hikaru... or are they?! Later Ryoma steps onto the clay against Shitenhoji's seventh-grade prodigy Kintaro, and this time neither of them are holding anything back.",
      release_date: "January 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1266.jpg"},

{
      title: "The Prince of Tennis, Volume 29: The Nationals Begin!",
      author: "Takeshi Konomi",
      synopsis: "After arriving at the Nationals, Seishun scouts their upcoming opponents: their old rivals Rokkaku and an unknown team from Okinawa, Higa Junior High. After watching Higa mow through their first-round match-ups, the Seishun players are taken aback by the team's dominance. But there's no time for doubt--the second round is starting, and it's Ryoma versus Higa's heavy hitter, the giant Kei Tanishi and his unreturnable 'Big Bang' serve.",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1267.jpg"},

{
      title: "The Prince of Tennis, Volume 30: The Boys from Okinawa",
      author: "Takeshi Konomi",
      synopsis: "As the match between Ryoma and Higa's giant Kei Tanishi continues, it's apparent to everyone that Tanishi is in control of the game--to everyone except Ryoma, that is. Higa continues to dominate in No. 2 Doubles, with Taka and Shusuke paired up against Hiroshi Chinen and Rin Hirakoba. Now Seishun's hopes rest on whether Shusuke can figure out how to effectively counter Rin's lethal 'Habu' shot.",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1268.jpg"},

{
      title: "The Prince of Tennis, Volume 10: Seize the Moment!",
      author: "Takeshi Konomi",
      synopsis: "In preparation for the City Tournament, Seishun Academy's team captain Kunimitsu Tezuka decides to hold intra-squad games. It's a routine way for the team players to get some much-needed practice matches, but it's all fun and games until someone's competitive nature surfaces. Ryoma is pitted against Shusuke, and Ryoma wastes no time in putting on the pressure against his teammate. But with his tenacious strategy known as 'Higuma Otoshi' (Bear Hunt), Shusuke's got a few tricks of his own....",
      release_date: "September 4th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1269.jpg"},

{
      title: "The Prince of Tennis, Volume 26: Ryoma Echizen vs. Genichiro Sanada",
      author: "Takeshi Konomi",
      synopsis: "The Kanto Tournament Finals are down to the last two matches, with the top players for the two best teams--Seishun and Rikkai--engaged in a fierce battle for dominance. As Shusuke and Akaya's match reaches its surprising end, the final showdown begins: Ryoma vs. 'Emperor' Genichiro Sanada.",
      release_date: "December 3rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1270.jpg"},

{
      title: "The Prince of Tennis, Volume 39: Flare-up! Barbecue Battle!!",
      author: "Takeshi Konomi",
      synopsis: "Before the Seishun boys hit the courts for the final round of the Nationals, they hit the yakiniku table for an all-out barbecue blitz! When the time comes for Seishun to take on Rikkai at the tournament, Ryoma is stuck in Karuizawa! Help comes from an unexpected quarter to get Ryoma to that stadium. The first game is the long-awaited match that will ignite the perfect storm: Seishun captain Kunimitsu vs. Rikkai's Sanada!",
      release_date: "January 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1271.jpg"},

{
      title: "The Prince of Tennis, Volume 22: Ryoma, Awake!",
      author: "Takeshi Konomi",
      synopsis: "As if taking on a totally new personality, Ryoma plays an unpredictable match, switching to his left hand and winning point after point. Where does his intensity come from? A bonus story about an entirely different player may shed some light on the The Prince of Tennis's skills!",
      release_date: "February 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1272.jpg"},

{
      title: "The Prince of Tennis, Volume 18: Ace in the Hole",
      author: "Takeshi Konomi",
      synopsis: "Seishun's chance at the Nationals all comes down to Kunimitsu. Will he have to forfeit to save his injured arm, or will he play to the end--and end his career?!",
      release_date: "April 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1273.jpg"},

{
      title: "The Prince of Tennis, Volume 28: Hyotei Rhapsody",
      author: "Takeshi Konomi",
      synopsis: "After Tokyo is chosen as the site for the upcoming Nationals, Hyotei gets a shot at redemption by being given an invitational berth in the tournament. Meanwhile, a prodigy from Kansai is making his way toward Tokyo. Packing serious power--and a temper to match--in his small frame, this wild 7th-grader has talent and skill that could rival even Ryoma's.",
      release_date: "April 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1274.jpg"},

{
      title: "The Prince of Tennis, Volume 16: Super Combo",
      author: "Takeshi Konomi",
      synopsis: "Takashi Kawamura battles the mysterious Kabaji of Hyotei Academy. Taka unleashes a brutal two-handed 'Hadokyu' (wave surge shot), which Kabaji dishes right back. Unbeknownst to Taka, Kabaji's special talent is his ability to mimic shots with accuracy and ease. Meanwhile, Sadaharu's honesty and keen eye for detail becomes Seishun's downfall when he volunteers that his winning smash was actually out. Can Seishun Academy afford another loss?",
      release_date: "December 4th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1275.jpg"},

{
      title: "The Prince of Tennis, Volume 20: Seishun vs. Rokkaku",
      author: "Takeshi Konomi",
      synopsis: "It's the Kanto Tournament semifinals! And Shusuke's not playing his best--meaning the advantage may once again go to last year's winner, Rokkaku!",
      release_date: "September 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1276.jpg"},

{
      title: "The Prince of Tennis, Volume 15: The Sadaharu-Kaoru Pair",
      author: "Takeshi Konomi",
      synopsis: "At the Kanto Tournament, the brillant play of Hyotei Academy's Gakuto and Yushi's drives Seishun's Momo and Eiji to assume the Australian formation, a technique they masterfully pulled off in a previous match. Meanwhile, the Seishun team of Kaoru and Sadaharu walk into a landmine filled with 'scud serves' and accurate, aggressive doubles play. But just when things look bleak, Sadaharu unleashes his well-planned counterattack...",
      release_date: "September 4th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1277.jpg"},

{
      title: "The Prince of Tennis, Volume 31: A Surprise Strategy: Eiji Plays Singles",
      author: "Takeshi Konomi",
      synopsis: "With Shuichiro out of play, the other half of Seishun's Golden Pair faces off against Higa's Yujiro Kai in No. 2 Singles. Can Eiji bring Seishun a victory without his partner's support? The final match of the round, No. 1 Singles, pits captain against captain: Kunimitsu, in his first game back from injury, versus Eishiro 'Killer' Kite.",
      release_date: "December 2nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1278.jpg"},

{
      title: "The Prince of Tennis, Volume 19: Tezuka's Departure",
      author: "Takeshi Konomi",
      synopsis: "Captain Kunimitsu is out! Now, without him, Seishun's up against a team coached by a four-time Japan Open winner. It's time for serious pressure, on and off the court!",
      release_date: "July 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1279.jpg"},

{
      title: "The Prince of Tennis, Volume 21: Kikamaru's New Step",
      author: "Takeshi Konomi",
      synopsis: "Rokkaku's not going down without a fight. And Rikkai is better than expected. It's up to Eiji--and Ryoma--to pull out all the stops for Seishun! Can their new moves turn the tables?",
      release_date: "December 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1280.jpg"},

      [genres[0], genres[14], genres[10], genres[19]]
      ],
      [

{
      title: "Lone Wolf and Cub, Vol. 3: The Flute of the Fallen Tiger",
      author: "Kazuo Koike",
      synopsis: "Join renegade samurai Itto Ogami and his infant son, Daigoro, in five more adventures on the dark road to Hell. What do three mysterious Shogunate assassins, a street entertainer, and the crests of the dead have in common? 'The Baby Cart Wolf' continues his dealing of death for gold and encounters one  who is bent on putting a stop to his journey. Will he succeed? Follow the monthly adventures of  one of the true classics of comics literature, available in America for the first time in over a decade! The Flute of the Fallen Tiger Half Mat, One Mat, A Fistful of Rice The White Path Between the Rivers The Virgin and the Whore Close Quarters",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1281.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 9: Echo of the Assassin",
      author: "Kazuo Koike",
      synopsis: "Water, death, and angry ninja take the foreground in this exciting volume of the legendary  series! A pitiful ferryboat girl discovers the tragic ways of &quot;A Wife of the Heart,&quot; as the Lone Wolf, Ogami Itto, stands against the man she loves. In &quot;Wayward Swords,&quot; a rogue swordsman-for-hire learns a valuable lesson about Bushido, the Way of the Warrior, from the Lone Wolf. Afterwards, Ogami once again must face the treachery of the Kurokuwa ninja clan, then becomes a river porter to foil the secret plans of his enemy, the Yagyu clan, and in doing so declares war against them all! The Lone Wolf's actions lead to a nationwide manhunt and an epic, bloody battle unlike any in comics. Don't dare miss a volume of the series that belongs on every bookshelf: Wife of the HeartWandering SamuraiEcho of the AssassinNaked WormsThe Yagyu Letter: Prologue",
      release_date: "May 29th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1282.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 26: Struggle in the Dark",
      author: "Kazuo Koike",
      synopsis: "One could believe the old adage about the grass being greener on the other side. But, if you're referring to the 'other side' of the Sanzu, the river between life and death, chances are it will be white, the color of a samurai's death robes. And a lot of that 'grass' was probably dispatched by the hand of Itto Ogami. The Yagyu 'grass,' spies planted for years in local citizenry, has been on the move, gathering in Edo for a final battle. The ronin Itto Ogami has walked a path of demons with Daigoro at his side, on a quest of vengeance and death that has shaken the very foundations of the samurai caste and the shögunate. No one has been able to stop him, not even the crafty, Abeno Kaii and it looks like he's about see his final day, but he won't go out without a battle of wits! Only three more volumes until the long-awaited conclusion of . And when it's over, you'll only want to read it again. Tales of the Grass: Nindo Ukon Struggle in the Dark Song of the Spirit Great Reversals Scarlet Summer, Silver Fall",
      release_date: "October 29th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1283.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 27: Battle's Eve",
      author: "Kazuo Koike",
      synopsis: "Hooooo doggy! The tension is getting so thick, a  wielded by the strongest samurai would have a hard time cutting through it! Just two more volumes left until one of the world's most classic pieces of comic-book literature reaches its exciting and emotional conclusion. Two swords remain planted in the ground, awaiting the final duel between the conniving Retsudo and the vengeful Itto, and little Daigoro guards the two blades with his life. Indeed, his life is threatened when a stampede of villagers escaping a burning village almost plow him into the dirt. Impressed townfolk decide to stop and help him, staying for a while on the same beach. For once, Daigoro experiences the joy of being a child, playing with the other children, but that peace won't last long. Yaygu Retsudo, imprisoned in the castle of the shögun, deceives his way to freedom and commands the very last members of the Yagyu ninja to kill Itto! But knowing swords alone won't kill him, Yagyu sends a strange and fascinating weapon to the battlefield, the exploding ninja! To Protect and Defend For Whom to Die Way of the Warrior, Way of Man Battle's Eve Grass that Never Flowers",
      release_date: "November 22nd 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1284.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 1: The Assassin's Road",
      author: "Kazuo Koike",
      synopsis: "Shogunate executioner Ogami Itto is framed as a traitor by the agents from a rival clan. With his wife murdered and with an infant son to protect, Ogami chooses the path of the ronin, the masterless samurai. The Lone Wolf and Cub wander feudal Japan, Ogami's sword for hire, but all roads will lead them to a single destination: vengeance.",
      release_date: "1970",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1285.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 11: Talisman of Hades",
      author: "Kazuo Koike",
      synopsis: "The #1-selling graphic-novel sensation continues! The Lone Wolf and his cub, father and son, are separated by the hatred of the Yagyu -- and the path to togetherness is lined with blood and honor. As Ogami continues his search for little Daigoro, he must battle deadly Yagyu assassins and aspiring, cocky samurai. He prepares to give them a taste of his blade... Meanwhile, Daigoro visits a crazed old woman living under a bridge, and teaches her a valuable lesson. In these and other stories in this volume, Lone Wolf and Cub continue to unlock the mystery of the Yagyu, one step closer to the truth behind his quest for vengeance. Prepare for more legendary action, in a handy size that fits in your back pocket! Talisman of Hades Ailing Star Thirteen Strings A Poem for the Grave",
      release_date: "July 25th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1286.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 16: Gateway into Winter",
      author: "Kazuo Koike",
      synopsis: "The Lone Wolf's arch-enemy, Yagyu Retsudo, begins to reach the end of his rope, as he sends his only daughter and last child after the blood-storm that is Itto Ogami! Meanwhile, Ogami and Daigoro happen upon another clue about the mysterious Yagyu Letter in a final showdown with the Kurokuwa ninja clan. A desperate Retsudo puts a bounty on Ogami's head, and two of Japan's most deadly bounty hunters hunt for the Lone Wolf and his Cub, while a poor woodcutter must decide between the bounty and his life by sheltering Ogami and Daigoro! All this and much more awaits in one of comics' most legendary series.",
      release_date: "December 21st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1287.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 25: Perhaps in Death",
      author: "Kazuo Koike",
      synopsis: "The mortal enemy of our ronin hero, Retsudo Yagyu has been imprisoned in Edo castle by the shogun. It seems the conniving poisoner, Abeno Kaii, has exposed the Yagyu letter! And Yagyu's jailer is none other than the poisoner himself, determined to feed Retsudo the dose that will end his life in a pit of dishonor. But Yagu has spies even in Edo caslte, and a message is sent to his 'grass,' members of the clan hiding in secret, living as normal townspeople throughout Japan. It is up to them to give their lives in this final hour of desperate need. Meanwhile, Itto Ogami is living in a shack and training his little boy for the day when he must protect the battlefield with his own little hands. Still, two swords remain in this field of death, awaiting the two hands that will draw them from the soil and bring us closer to the end of our tale.",
      release_date: "September 24th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1288.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 6: Lanterns for the Dead",
      author: "Kazuo Koike",
      synopsis: "The legend of Lone Wolf and Cub continues to grow in this latest chapter of Koike and Kojima's epic samurai masterpiece chronicling the wanderings of Japan's deadliest assassin, Itto Ogami, and his infant son, Daigoro. In this volume, Ogami takes on the most dangerous killer of the countryside, foils the plans of a deceptive gambling troupe, tricks an evil lord into exposing his weak underbelly, and pits himself against the Shogun's dangerous and deadly Kurokawa ninja! Drawing extensively from Sun Tzu's The Art of War, and featuring the saddest puppy-dog story ever published, this must-have volume is packed with action and emotion.",
      release_date: "February 27th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1289.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 20: A Taste of Poison",
      author: "Kazuo Koike",
      synopsis: "A quest for vengeance wouldn't be complete without a little poison. Having tired of his retainer's futile attempts at reining in the unstoppable samurai, the shogun himself sends Abeno Kaii, a master of poison, to join the Yagyu in their hunt for ronin Itto Ogami and his little boy Daigoro. Armed with a sack full of poison and a network of streetwalking spies, Abeno creeps ever closer to the father and son. Soon Ogami and Daigoro find themselves surrounded on all sides, facing deadly secret agents, murderously seductive prostitutes, and a river of poison flowing all around them! The Eisner and Harvey Award winning series rolls ever onward with five more stories of intrigue and intensity.",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1290.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 24: In These Small Hands",
      author: "Kazuo Koike",
      synopsis: "Holy hand grenades! Edo is flooded, and by flooded, we mean crazy-flooded. Bridges are crumbling, rivers are washing past retaining walls, and everything in Edo is floating away, including our vengeful ronin, his foe, and his little boy. In an ironic show of samurai respect, little Cub Daigoro gets saved by the conniving Retsudo Yagyu. And proving he can lend a hand, too, Lone Wolf Ogami pulls someone to safety as well &mdash; but maybe he should have let him drown. Eventually, the two opposing master swordsmen dry off and go head to head in a sword fight of a thousand stances and couple of days length. This seems like it could be the deciding bout between the two, unless that nasty, Abeno Kaii gets in the way, and he seems to do that a lot lately.The true meaning of  the warrior code, oozes from every page of this volume. A little boy desperately attempts to drag his  father to safely, even if it costs him his own life; that same wandering samurai and his mortal enemy work together to save the frostbitten fingers of the same little boy, knowing they will eventually match swords again in a battle to the death; another samurai bites his own tongue, killing himself and locking a dark secret in his grave. The code of the samurai is complex and rich with irony, which is why so few carry this code through life. But as we draw closer to the conclusion of this epic struggle, the true bushi are stepping forth and showing their colors. It will truly be a fight to the finish. So, in these final days, a  and his young boy will visit the grave of their murdered wife and mother. It just might be the last Spring the two will share, like the many petals falling from branches. Child of the Fields In These Samll Hands Kaii Triumph The Last Cherry Blossoms Stone Upon Stone",
      release_date: "1989",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1291.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 22: Heaven and Earth",
      author: "Kazuo Koike",
      synopsis: "Rain. Poison. Explosives. Vengeance. It's a deadly combination that forms a volatile mixture of deceit, betrayal, and hate as the final showdown between Lone Wolf assassin Ogami Itto and his nemesis Retsudo begins. While the torrential rains continue to pound Edo, the fiery Retsudo and his bloodthirsty Yagyu army rush along the banks of the swelling Hatcho River, racing to beat a load of explosives that's traveling down the other side, heading right into the hands of the vengeful samurai Ogami. Meanwhile, the cunning poisoner Abeno sees his chance to destroy both sides as they run headlong on their collision course  he's going flood all of Edo! Forced to put their battle aside, Ogami and Retsudo find themselves fighting side by side to save all of Edo from the floods, while Ogami's little son Daigoro wanders alone, fighting for his life and searching for his father! It's a deluge of evil, and it threatens to wash away all that stands in its path!",
      release_date: "1989",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1292.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 18: Twilight of the Kurokuwa",
      author: "Kazuo Koike",
      synopsis: "The Shogun himself has given Retsudo a stern warning: do something about Itto Ogami, the Lone Wolf, or the Yagyu clan will fall out of favor. Now Retsudo must turn to the Fire Watchers, a select band of warriors, for help &mdash; as well as the last surviving members of the legendary Kurokuwa ninja clan! As death stalks him, Ogami is confronted by desperate, impoverished peasants who want him to share his fortune with the suffering. With Ogami's cub, Daigoro, caught in the middle, what will he decide? Find out what everyone can't stop talking about. Firewatchers of the Black Gate The Immortal Firewatchers Paper Money Lifeline Twilight of the Kurokuwa",
      release_date: "1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1293.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 23: Tears of Ice",
      author: "Kazuo Koike",
      synopsis: "Holy hand grenades! Edo is flooded, and by flooded, we mean crazy-flooded. Bridges are crumbling, rivers are washing past retaining walls, and everything in Edo is floating away, including our vengeful ronin, his foe, and his little boy. In an ironic show of samurai respect, little Cub Daigoro gets saved by the conniving Retsudo Yagyu. And proving he can lend a hand, too, Lone Wolf Ogami pulls someone to safety as well -- but maybe he should have let him drown. Eventually, the two opposing master swordsmen dry off and go head to head in a sword fight of a thousand stances and couple of days length. This seems like it could be the deciding bout between the two, unless that nasty, Abeno Kaii gets in the way, and he seems to do that a lot lately.",
      release_date: "July 30th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1294.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 19: The Moon in Our Hearts",
      author: "Kazuo Koike",
      synopsis: "The time for delay is past. Itto Ogami and Daigoro are headed for Edo, to face Retsudo of the Yagyu once and for all! Stalked by bounty hunters and killers after their reward money, the Lone Wolf now faces deadlier enemies still. Retsudo has called out the nation's most accomplished rifleman, and dispatched a cannon-laden man of war, to intercept the father and son as they navigate treacherous cliffs and the high seas of Japan! ",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1295.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 5: Black Wind",
      author: "Kazuo Koike",
      synopsis: "This volume contains five powerful, classic tales of the assassin Itto Ogami, the Lone Wolf, as he continues his journey to hell. The Yagyu clan, fearful of the growing legend surrounding Lone Wolf, has decided to protect itself by sending its own assassin after him, and later pit the greatest swordsman of a rival clan against him. Also, Lone Wolf must face the leader of a bounty-hunting gang who seeks revenge against Ogami for slaying his young lord years ago, and a master gunsmith who values the art of warfare above all else and will change his life forever. Don't miss a single volume of the acclaimed epic series that belongs on every bookshelf: Trail MarkersExecutioner's HillBlack WindDecapitator AsemonThe Guns of Sakai",
      release_date: "January 30th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1296.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 7: Cloud Dragon, Wind Tiger",
      author: "Kazuo Koike",
      synopsis: "There is more than just blood between parent and child Itto Ogami and his son Daigoro have seen more blood flowing from more bodies than anyone in Edo. but what connects them is their spirit and path. . In this collection of classic stories. Itto must protect a young girl after her family is destroyed by a cunning courtesan. Meanwhile. Ittos arch-enemy. Yagyu Retsudo. has sent the civilian police force to round up the Lone Wolf as a common criminal . and before long. Daigoro is coincidentally tangled in a messy pair of crimes. And. most dramatically. Itto returns to the scene of one of his past executions to enter a tender and honorable sword fight against an executed lords former retainer.This volume contains the following stories: DragnetNight StalkerCloud Dragon. Wind TigerInn of the Last ChrysanthemumPenal Code Ar...",
      release_date: "March 27th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1297.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 10: Hostage Child",
      author: "Kazuo Koike",
      synopsis: "The six paths and four lives are split asunder. as Itto Ogami and Daigoro become separated in one of this series most powerful stories to date The Lone Wolfs arch-enemy. Yagyu Retsudo. pursues! Ogami to retrieve the secret letter stolen from him. only to watch dozens of his men fall victim to the Lone Wolfs hungry sword! But Yagyu drives father and son apart as they tumble down a cliff and must survive on their own! Little Daigoro must begin . his honorable search for his father But with Yagyus henchmen hunting high and low for the Lone Wolf and his cub. the net drags closer and the danger wraps tighter. but the blood flows ever freely ... This volume contains the following stories: The Yagyu LetterThe Tears of DaigoroThe Fisherwomans LoveDrifting ShadowsStraw Boy",
      release_date: "June 26th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1298.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 4: The Bell Warden",
      author: "Kazuo Koike",
      synopsis: "Dark Horse continues its presentation of the entirety of Japan's Lone Wolf and Cub, one of the unquestioned landmarks of graphic fiction, packaged in the digest format preferred by creator Goseki Kojima. The fourth volume of this ambitious monthly program collects four classic Lone Wolf tales, including one never before seen in America, where little Daigoro searches for his lost father while amazing a well-known samurai with his warrior's eyes and cool demeanor. Also, the Lone Wolf takes on the sons of the war-bell warden, legions of organized crime bosses, and a mysterious tattooed lady with a dark story and impeccable killing skills. It's bloody and romantic...and among the best the comics medium has to offer.",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1299.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 8: Chains of Death",
      author: "Kazuo Koike",
      synopsis: "The journey of vengeance in blood and honor continues. Under the itinerant thumb of Yagyu Retsudo, the Shogun's secret ninja warriors, the Kurokuwa clan, attempt to ensnare Ogami. Can the Lone Wolf break the chains? If so, there are many in line behind Yagyu waiting to challenge the masterful swordsman, such as a vengeful widow, numerous police, and the freezing cold of winter itself. Plus, read the story of Ogami's rise to the position of the Shogun's Officer of Death, feel the seething root of Retsudo Yagyu's bitterness against Ogami, and watch Ogami teach a proud thief about true honor and the wages of deception. Five action-packed chapters, including never-before-translated material, are included in the latest volume of this classic series. Read it on the bullet train to Edo!Tidings of the GeeseThe Frozen CraneChains of DeathThe Infinite PathThread of TearsBeku-no-ji",
      release_date: "1987",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1300.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 21: Fragrance of Death",
      author: "Kazuo Koike",
      synopsis: "As the trail of blood and honor gets deeper and longer, corruption and double crossings abound. Two considerably evil and ambitious forces, previously teamed to finally kill the vengeful samurai Itto Ogami, clash in the torrential rains that continue to pound Edo. Determined to be the first to reach Ogami Itto and his Diagoro, the shogun's own poisoner waits in a temple where the samurai and his toddler boy left their cart, reflecting on the path that has led him to this point, and brewing his most deadly poison. And the fiery Retsudo won't be stopped in his quest to kill Ogami, however now he must be wary of the poisoner's crafty ways. Meanwhile, the Lone Wolf and Cub enlist the aid of a tailor to help them prepare for what could be their last stand! There's something in the air, and it smells like death!",
      release_date: "January 1989",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1301.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 17: The Will of the Fang",
      author: "Kazuo Koike",
      synopsis: "The epic journey of Ogami Itto and Daigoro continues in this stunning volume! A female yakuza and her band are ordered to catch Lone Wolf and Cub, but the authorities aren't counting on a woman's heart. Meanwhile, the Yagyu have called in Japan's most deadly bounty hunters, and offer an even greater reward &mdash; can the Lone Wolf trust anyone around him, when the lure of wealth tempts even seemingly harmless peasant folk? And with Daigoro feverish and near death's door, can Lone Wolf and Cub make it through a winter gale to safety? To a Tomorrow That Never Comes Bounty Demons The Will of the Fang When the Wolf Comes Life in Death",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1302.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 28: The Lotus Throne",
      author: "Kazuo Koike",
      synopsis: "What exactly needs to be said in solicitation copy for the VERY LAST VOLUME OF ? It's the moment you've all been waiting years and years to read. It's the end of the long path the  father and son have been on since the boy's birth. Through unimaginable violence and bad weather, across hundreds of miles of blood-soaked roadbeds, over years of tragedy and anguish, to this final still-epic story, Itto and Daigoro have kept us holding on to what little hope exists in a world where honor is all but forgotten and warriors are obsolete. It's a bloody battle all the way to the finish, with dramatic twists and turns right up to the final page. Stay with us as we conclude the translation of what will always be considered one of the finest examples of comic-book mastery ever created, This volume contains the following stories: Corpse Tree Flute and Wave The Lotus Throne Empty Stirrups Arms",
      release_date: "January 9th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1303.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 14: Day of the Demons",
      author: "Kazuo Koike",
      synopsis: "As the flames draw nearer, the fire gets hotter. Ronin assassin Ogami Itto seeks to learn what's written on the secret messages from the corrupt Yagyu clan to the Shogun, and leaves a river of blood in his path. Elsewhere, a shamed woman attempts to force her husband to name his own child, but his job and honor stand in the way. Daigoro makes a new friend in another samurai fated to  &mdash; ritual suicide &mdash; and defends the honor of a young playmate. The world keeps turning as the Lone Wolf and his Cub wander the land seeking revenge and answers, the questions to which are written in blood and ink. One Rainy Day O-Shichiri Man The Kyushu Road Day of the Demons",
      release_date: "June 1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1304.jpg"},

{
      title: "Lone Wolf and Cub, Vol. 2: The Gateless Barrier",
      author: "Kazuo Koike",
      synopsis: "The epic continues! Among the five stories in this issue: Cub has been captured while Lone Wolf lies unconscious! All of Cub's captors are cruel, all but the  (the lowest maid). But her help may be her undoing. The household waits for the feared Lone Wolf to come looking for his son...and when he does...pick up Volume Two to find out what happens &mdash; plus four other great stories, as this classic epic continues!Red CatThe Coming of the ColdTragic O-SueThe Gateless BarrierWinter Flower",
      release_date: "1971",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1305.jpg"},

      [genres[0], genres[7], genres[9]]
      ],
      [

{
      title: "Bleach, Volume 25",
      author: "Tite Kubo",
      synopsis: "No Shaking Throne: Ichigo's recent battles with the Arrancars have proven that if he wants to protect his friends he must get stronger, and the only way to do that is to control his inner Hollow. Ichigo turns to the Visoreds, ex-Soul Reapers who have been Hollowfied, to teach him. But before his training begins, Ichigo must do battle against his Hollow self—winner takes his soul!",
      release_date: "December 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1306.jpg"},

{
      title: "Bleach, Volume 14",
      author: "Tite Kubo",
      synopsis: "White Tower Rocks: Ichigo and Yoruichi race to save Ichigo's friends from Rukia's cold-blooded brother, Byakuya Kukichi. They arrive to find Ganju in tatters, and Rukia with him. Ichigo is bent on defeating her brother this time, but he is nowhere near prepared. Can he learn decades' worth of skill in just a matter of days?",
      release_date: "September 3rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1307.jpg"},

{
      title: "Bleach, Volume 26",
      author: "Tite Kubo",
      synopsis: "The Mascaron Drive: Ichigo and all his friends are training like mad, spurred on by the looming threat of Aizen's wicked plans. But while Uryū and Chad increase their powers, Orihime finds out that she has to sit out the coming fight, leaving her friends without her protection. And Ichigo, despite his intensive training with the Vizards, can't control his Hollowfied self long enough to battle. With the war against the Arrancars ramping up, can the team afford to have two fighters on the sidelines?",
      release_date: "February 2nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1308.jpg"},

{
      title: "Bleach, Volume 03",
      author: "Tite Kubo",
      synopsis: "Memories in the Rain: Ichigo Kurosaki was a little boy when his mother passed away. One rainy day, Ichigo, whose ability top see the undead is a blessing and curse, tried to stop young girl from drowning in a nearby river. His mother, Masaki, ran after them, frantically trying to rescue her only son. Then everything went black, and Ichigo awoke only to discover his mother dead and the little girl gone. It's the anniversary of Masaki's death, and the entire Kurosaki clan, along with former Soul Reaper Rukia Kuchiki, head to the cemetary to pay their respects. Sleeping demons rarely ever stay still and pretty soon Ichigo confronts the Grand Fisher, the Hollow that may be responsible for his mother's demise.",
      release_date: "June 4th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1309.jpg"},

{
      title: "Bleach, Volume 29",
      author: "Tite Kubo",
      synopsis: "The Slashing Opera: Ichigo and his friends knew invading Hueco Mundo wouldn't be easy, but even the lesser Arrancars are pushing them to their limits! Can Ichigo, Uryū and Chad find the inner strength to overcome the first line of attack, or will Orihime be stuck in Hueco Mundo forever?!",
      release_date: "August 3rd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1310.jpg"},

{
      title: "Bleach, Volume 04",
      author: "Tite Kubo",
      synopsis: "Quincy Archer Hates You: A new reality-show craze is sweeping the nation, garnering legions of screaming fans (the majority of them being teenaged girls). But this program comes with a supernatural twist - the host, a media-savvy spiritualist, travels to local hotspots and performs exorcisms, live on national TV! Surly Soul Reaper Ichigo Kurosaki has his doubts about this primetime prima donna, and his assumptions are about to be put to the test - the show is heading straight for his neighborhood. what effect will this unprovoked media presence have on the fragile balance between Earth and the spirit world?",
      release_date: "September 4th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1311.jpg"},

{
      title: "Bleach, Volume 19",
      author: "Tite Kubo",
      synopsis: "The Black Moon Rising: The long-awaited showdown between Ichigo and Byakuya Kuchiki has finally begun. Has Ichigo succeeded in mastering , the highest level of power that a Soul Reaper can attain, to face Byakuya as an equal?In the aftermath of Rukia's last-minute rescue, Yoruichi faces her former subordinate Soi Fun in mortal combat, while the 13 Court Guard Companies teeter on the brink of civil war. Meanwhile, Ichigo and Byakuya Kuchiki square off in the final bloody duel that will decide Rukia's fate - and their own!",
      release_date: "October 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1312.jpg"},

{
      title: "Bleach, Volume 01",
      author: "Tite Kubo",
      synopsis: "Hot-tempered 15-year-old Ichigo Kurosaki, the hero of the popular fantasy-adventure , has the unsettling ability to see spirits who are unable to rest in peace. His sixth sense leads him to Rukia, a Soul Reaper who destroys  (soul-devouring monsters) and ensures the deceased find repose with the Soul Society. When she's injured in battle, Rukia transfers her sword and much of her power to Ichigo, whose spiritual energy makes him a formidable substitute Soul Reaper. But the orange-haired teenager isn't sure he wants the job: too many risks and moral dilemmas.",
      release_date: "January 5th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1313.jpg"},

{
      title: "Bleach, Volume 24",
      author: "Tite Kubo",
      synopsis: "Immanent God Blues: Ichigo and the Soul Reapers wage a furious battle against the Arrancars who are attacking Karakura Town. But this enemy is unlike anything they have ever fought before, and these aren't even the strongest of the Arrancars! If Ichigo and his friends can barely face them, how can they hope to fight off the elite Arrancar warriors, the dreaded Espada?",
      release_date: "October 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1314.jpg"},

{
      title: "Bleach, Volume 05",
      author: "Tite Kubo",
      synopsis: "Right Arm of the Giant: Ichigo Kurosaki thought that Soul Reapers were the only ones hunting Hollows, but he was wrong. Enter Uryū Ishida, a Quincy, and possibly the last member of a powerful clan that died out over 200 years ago. Unlike Soul Reapers who strive to cleanse Hollows of their sins and send them to the Soul Society, Quincies adopt a more direct approach - they kill Hollows without hesitation. To demonstrate the supremacy of the Quincies' ways, Uryū challenges Ichigo to a contest - bait is spread around the city, attracting a large number of unstable Hollows. Whoever defeats the most wins, regardless of the danger. Also, Orihime and Chad, confronted with a host of Hollows terrorizing their friends, awaken to their own psychic abilities. Who is the strongest? Find this out and more in the action-packed fifth volume of Tite Kubo's !",
      release_date: "November 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1315.jpg"},

{
      title: "Bleach, Volume 13",
      author: "Tite Kubo",
      synopsis: "The Undead: Chad has stormed his way into the heart of the Soul Society, the Seireitei, only to meet his match in the devastatingly efficient Captain Kyôraku. Meanwhile, Ichigo struggles in his battle against Kenpachi Zaraki, the captain of the 11th company. Although Ichigo succeeds in drawing blood, the secret of Kenpachi's zanpaku-tô may be his undoing. Before Ichigo realizes it, Kenpachi's blade has pierced his heart!",
      release_date: "June 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1316.jpg"},

{
      title: "Bleach, Volume 11",
      author: "Tite Kubo",
      synopsis: "A Star and a Stray Dog: Ichigo successfully defeats Ikkaku of the Eleventh Company and is rewarded with a valuable piece of information - the location of where Rukia is being detained as she awaits execution. However, Ichigo's companion, the pyrotechnics-wielding Ganju, is having a much harder time with his Soul Reaper opponent. Meanwhile, Orihime and Uryū confront the younger brother of the gargantuan gatekeeper whom Ichigo defeated a little while ago. It's time for Uryū to put all his training to the test and prove to everyone (and himself) how much more powerful he has become.",
      release_date: "December 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1317.jpg"},

{
      title: "Bleach, Volume 09",
      author: "Tite Kubo",
      synopsis: "Fourteen Days For Conspiracy: The race to save Rukia from the Soul Society is officially on, and Ichigo and company have come to their first roadblock, a very, very big roadblock. Jindanbô, the monstrous, fez-sporting gatekeeper hasn't let a single soul enter the Western Gate he guards in over 300 years, and he isn't about to change his mind about it just because Ichigo's crew wants to go through either. But, in a where-the-rubber-meets-the-road kind of way, Ichigo wasn't expecting his assault on the Soul Society to be a piece of cake either. After all, that'd just be boring.",
      release_date: "August 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1318.jpg"},

{
      title: "Bleach, Volume 23",
      author: "Tite Kubo",
      synopsis: "The Arrancars: Hollows that have attained Soul Reaper-like powers, have descended on Karakura Town. Led by Grimmjow Jaegerjaques, they plan to eliminate anyone who poses a threat to them. And their deadly hunt doesn't stop with Ichigo and the Soul Reapers--the Arrancars are after anyone with even a trace of spiritual powers!",
      release_date: "August 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1319.jpg"},

{
      title: "Bleach, Volume 06",
      author: "Tite Kubo",
      synopsis: "The Death Trilogy Overture: Now Ichigo finds himself in a deadly contest with Uryū Ishida, a 'Quincy' who hates Soul Reapers - whoever defeats the most Hollows wins! But in no time the neighborhood of Karakura is swarming with ravenous Hollows!!",
      release_date: "December 20th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1320.jpg"},

{
      title: "Bleach, Volume 12",
      author: "Tite Kubo",
      synopsis: "Flower on the Precipice: With reports of powerful intruders defeating a number of assistant captains, the inner sanctum of the Soul Society - the Seireitei, the home of the Soul Reapers - is put on a state of high alert. Matters are further compounded by the mysterious death of a prominent captain. Is his death a cover-up to prevent a valuable secret from being exposed? Meanwhile, Ichigo confronts Kenpachi Zaraki, captain of the eleventh company, and by far the most brutal fighter in the Seireitei!",
      release_date: "March 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1321.jpg"},

{
      title: "Bleach, Volume 15",
      author: "Tite Kubo",
      synopsis: "Beginning of the Death of Tomorrow: During a bloody confrontation with a sadistic Soul Reaper, Uryu chooses a path that will temporarily grant him enormous power, at great personal cost. Meanwhile, Ichigo races to master a powerful technique that will help him fight Byakuya and, hopefully, save Rukia from execution.",
      release_date: "December 3rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1322.jpg"},

{
      title: "Bleach, Volume 07",
      author: "Tite Kubo",
      synopsis: "The Broken Coda: Rukia Kuchiki, the ex-Soul Reaper responsible for Ichigo's transformation, is on the lam. Her brethren at the Soul Society are quite displeased with the fact that she transferred the powers of a Soul Reaper to a human and have dispatched two of their strongest agents to neutralize the situation. Their mission is twofold: to return Rukia to the Soul Society so that she may pay for her crime and to deal with Ichigo - permanently. But an unlikely third party is standing in their way: Uryū Ishida, the Quincy!",
      release_date: "March 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1323.jpg"},

{
      title: "Bleach, Volume 08",
      author: "Tite Kubo",
      synopsis: "The Blade and Me: Ichigo knows that to retrieve Rukia from the Soul Society, he'll have to enter that world himself. But his fight with Rukia's brother Byakuya showed, in no uncertain terms, that Ichigo still has a great deal of rigorous study and training ahead of him. Deep beneath Kisuke's Urahara Shoten, Ichigo practices his fighting and hones his spiritual energies, and now he must face the most daunting challenge of all: prevent his Chain of Fate from consuming itself, or be forever transformed into a soul-devouring Hollow!",
      release_date: "June 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1324.jpg"},

{
      title: "Bleach, Volume 18",
      author: "Tite Kubo",
      synopsis: "The Deathberry Returns: The execution of Ichigo's friend Rukia has begun, yet Ichigo himself is nowhere in sight. In a matter of seconds, the power of one million zanpaku-to will slice through Rukia as punishment for sharing her Soul Reaper powers with Ichigo. Is this really how things are going to end?!",
      release_date: "August 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1325.jpg"},

{
      title: "Bleach, Volume 22",
      author: "Tite Kubo",
      synopsis: "Conquistadores: The noose is tightening around Ichigo. His inner Hollow can't wait to consume him, the sinister transfer student has him tapped for a mysterious job, and now powerful new enemies have landed in his hometown to destroy him.After a fateful encounter with Soul Reaper, Rukia Kuchiki, Ichigo becomes a Soul Reaper himself. So, when Rukia is arrested and sentenced to death, Ichigo travels to the Soul Society to rescue her; and in the process uncovers a fiendish plot. But the conspirators escape and Ichigo returns to the world of the the living.Now a Deputy Soul Reaper, Ichigo spends his days fighting Hollows. But his life soon gets even more bizarre with the appearance of a new menace, the Arrancar; and the discovery that his own father is a Soul Reaper! And still more disturbing, Ichigo is confronted with the possibility that his own inner demon may be far more terrible than he ever imagined.",
      release_date: "May 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1326.jpg"},

{
      title: "Bleach, Volume 16",
      author: "Tite Kubo",
      synopsis: "Night of Wijnruit: The scheduled execution of former Soul Reaper Rukia Kuchiki has been moved up and is now just hours away. Meanwhile, the Soul Society is in chaos, with Soul Reapers drawing swords against one another. Something is rotting at the core of the Soul Society, but who, or what, could be behind it?",
      release_date: "March 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1327.jpg"},

{
      title: "Bleach, Volume 10",
      author: "Tite Kubo",
      synopsis: "Tattoo on the Sky: With the help of Kūkaku - a one-armed explosives expert and old friend of the mysterious talking cat Yoruichi - Ichigo and crew are one step closer to infiltrating the Soul Society and rescuing their friend Rukia before she is executed. For Kūkaku's plan to work, Ichigo must control his enormous reservoir of spiritual energy - and there's no telling how much collateral damage this will cause. Meanwhile, the Soul Society hasn't been twiddling their collective thumbs, and quickly dispatches a delegation of captains to give the unwanted visitors the rudest of welcomings imaginable.",
      release_date: "November 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1328.jpg"},

{
      title: "Bleach, Volume 02",
      author: "Tite Kubo",
      synopsis: "Goodbye Parakeet, Good Night My Sister: Immediately after checking into the Kurosaki Clinic with a mysterious scar on his back, the muscle-bound Chad goes AWOL. Accompanying Chad is a talking parakeet imbued with the soul of a young boy named Yūichi. It doesn't take newbie Soul Reaper Ichigo Kurosaki long to surmise that a Hollow must be involved. By far the strongest spirit he's faced to date, Ichigo is about to discover that not every soul is bound for the Soul Society, especially if it's tainted with innocent blood.",
      release_date: "March 4th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1329.jpg"},

{
      title: "Bleach, Volume 28",
      author: "Tite Kubo",
      synopsis: "Baron's Lecture Full-Course: Ichigo, Chad and Uryū are determined to rescue Orihime from Aizen's vile machinations. But though the Arrancars' fortress is in sight, the would-be heroes must first pass Tres Cifras--the land of the disgraced Arrancars, who see destroying Ichigo and his friends as a way to redeem their honor!",
      release_date: "June 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1330.jpg"},

{
      title: "Bleach, Volume 17",
      author: "Tite Kubo",
      synopsis: "Rosa Rubicundior, Lilio Candidior: The rebellion within the Soul Society grows as doubts spread about the death sentence of ex-Soul Reaper Rukia Kuchiki. Determined to save her, Rukia's childhood friend Renji vows to cut down the captain of his own squad, unaware of the terrifying fate that awaits him.",
      release_date: "June 3rd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1331.jpg"},

{
      title: "Bleach, Volume 20",
      author: "Tite Kubo",
      synopsis: "End of Hypnosis: The shocking truth behind the collapse of the Soul Society is finally revealed! The magnitude of the conspiracy is far-reaching, and the perpetrators wield staggering power. Is this the end of the Soul Society?Having achieved Bankai, Ichigo rescues Rukia in the nick of time and defeats the fearsome Byakuya Kuchiki!Meanwhile, Soul Reaper Tōshirō Hitsugaya discovers the corpses of the Council of 46 and hurries to get to Momo before the murderer does! And as Rukia and Renji race for safety, they find themselves facing a foe far worse than those they have fled ...",
      release_date: "December 2nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1332.jpg"},

{
      title: "Bleach, Volume 60",
      author: "Tite Kubo",
      synopsis: "Everything But the Rain: As the rain falls in Karakura Town, Isshin faces off against a mysterious Black Hollow. But when a familiar face joins the fight, Isshin will need all the help he can get. Ichigo's dark past is revealed, but can he recover from the shock of finally learning the truth?!",
      release_date: "August 2nd 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1333.jpg"},

{
      title: "Bleach, Volume 21",
      author: "Tite Kubo",
      synopsis: "Be My Family or Not: Ichigo and his friends return to the World of the Living, where life goes on as usual. But the arrival of a new transfer student raises disturbing questions, for outside school he carries a zanpaku-tô and wears the mask of a Hollow...  ",
      release_date: "March 3rd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1334.jpg"},

      [genres[0], genres[4], genres[1], genres[10], genres[18]]
      ],
      [

{
      title: "Dogs: Bullets & Carnage, Volume 2",
      author: "Shirow Miwa",
      synopsis: "A stylish, intense action series - with the emphasis on the action. R to L (Japanese Style). In her search for the assassin who 'stole her past,' Naoto follows Heine and Badou to go see the head of one of the Underground's gangs. But what starts out as a simple quest for information ends up as a rampageous firefight. And just when it seems things couldn't get worse, the Hardcore Twins, Luki and Noki, show up to 'play.' Which is when things really get interestingâ�¦ Boasting furious action, switchback plotting, magnetic characters and dazzling art,  tells the story of four people struggling to survive a dystopian urban future by gun and sword and courage and luck. Driven by their ghosts--both dead and alive--and a desire for truth, their paths converge in the dark, labyrinthine heart of the city streets.",
      release_date: "January 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1335.jpg"},

{
      title: "Dogs: Bullets & Carnage, Volume 3",
      author: "Shirow Miwa",
      synopsis: "Dogs: v. 3 The third volume in a new series Dogs, boasting furious action, switchback plotting, magnetic characters and dazzling art. Full description",
      release_date: "January 1st 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1336.jpg"},

{
      title: "Dogs: Bullets & Carnage, Volume 4",
      author: "Shirow Miwa",
      synopsis: "As Campanella Frühling's train speeds on, bearing disaster to the Underground and its denizens, Bishop gives Heine more clues to his past. But the aims of Bishop, who wears his own 'collar', are unclear: why is he revealing these things now, and why did he save Heine in the first place? Meanwhile, Badou takes on another freelance job from Granny Liza to gather information - and soon discovers it was the information that his brother died pursuing...",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1337.jpg"},

{
      title: "Dogs: Bullets & Carnage, Volume 5",
      author: "Shirow Miwa",
      synopsis: "Mihai enters the stage just in time to save Badou from starring in his own death scene, but now the two of them are a captive audience to Beltheim's display of his lethal skills. As bad as things are in the Above, though, they're even worse in the Below: under Giovanni's command, the dog soldiers have started their final assault against the underground city. As the streets around them burn, Heine and Giovanni become locked in a savage fight to settle their rivalry once and for all.",
      release_date: "January 1st 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1338.jpg"},

{
      title: "Dogs: Bullets & Carnage, Volume 8",
      author: "Shirow Miwa",
      synopsis: "An action-packed, stylish shoot-’em-up.Boasting furious action, switchback plotting, magnetic characters and dazzling art, Dogs tells the story of four individuals struggling to survive a dystopian urban future by gun and sword and courage and luck. The devastating assault launched from the Below creates unrest among the residents of the Underground. When Miss Liza learns the truth behind the kidnapping of the Lost Children, the mutual distrust and anger only grow, with potentially fatal results. Heine’s partnership with Badou is also badly strained, but his biggest problem by far lies in Naoto’s hands: the black sword made to fight against his kind, the one weapon that can kill him. When figures from Heine’s past return to confront him, will Naoto act as his ally…or his enemy?Reads R to L (Japanese Style) for mature audiences.",
      release_date: "December 19th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1339.jpg"},

{
      title: "Dogs: Bullets & Carnage, Volume 6",
      author: "Shirow Miwa",
      synopsis: "Boasting furious action, switch-back plotting, magnetic characters, and dazzling art, 'Dogs' tells the story of four individuals struggling to survive a dystopian urban future by gun and sword--and courage and luck.",
      release_date: "February 18th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1340.jpg"},

      [genres[0], genres[5]]
      ],
      [

{
      title: "One Piece, Volume 03: Don't Get Fooled Again",
      author: "Eiichirō Oda",
      synopsis: "Sure, lots of people say they want to be the King of the Pirates, but how many have the guts to do what it takes? When Monkey D. Luffy first set out to sea in a leaky rowboat, he had no idea what might lie over the horizon. Now he's got a crew--sort of--in the form of swordsman Roronoa Zolo and treasure-hunting thief Nami. If he wants to prove himself on the high seas, Luffy will have to defeat the weird pirate lord Buggy the Clown. He'll have to find a map to the Grand Line, the sea route where the toughest pirates sail. And he'll have to face the Dread Captain Usopp, who claims to be a notorious pirate captain...but frankly, Usopp says a lot of things...",
      release_date: "June 4th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1341.jpg"},

{
      title: "One Piece, Volume 52: Roger and Rayleigh",
      author: "Eiichirō Oda",
      synopsis: "In his effort to save Camie the mermaid from being sold to the highest bidder, Luffy's attack on an exalted Celestial Dragon has given the Navy the green light to send the Admirals in after him. But the Straw Hats get help from an unexpected source--a mysterious outlaw who knows all about Gold Roger, the original King of the Pirates!",
      release_date: "December 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1342.jpg"},

{
      title: "One Piece, Volume 32: Love Song",
      author: "Eiichirō Oda",
      synopsis: "As the epic battle between the Straw Hats and almighty Eneru moves toward a dramatic finish, the crew must work together if they can ever hope to defeat this powerful enemy. Will they be able to ring the Golden Bell and save Skypiea? Or will this be a foe that even the Straw Hats cannot defeat?",
      release_date: "March 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1343.jpg"},

{
      title: "One Piece, Volume 18: Ace Arrives",
      author: "Eiichirō Oda",
      synopsis: "The Straw Hats at long last reach Alabasta! But their stay is cut short when Luffy attracts too much attention from the Navy. They're not the only ones interested in Luffy--someone from his past has been waiting for him too! Meanwhile, the Baroque Works' agents are summoned together when their leader, the dastardly Mr. Zero, aka Sir Crocodile, learns that Luffy is still alive and orders his immediate extermination!",
      release_date: "April 4th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1344.jpg"},

{
      title: "One Piece, Volume 01: Romance Dawn",
      author: "Eiichirō Oda",
      synopsis: "As a child, Monkey D. Luffy was inspired to become a pirate by listening to the tales of the buccaneer 'Red-Haired' Shanks. But his life changed when he accidentally ate the fruit of the Gum-Gum Tree and gained the power to stretch like rubber...at the cost of never being able to swim again! Years later, still vowing to become the king of the pirates, Luffy sets out on his adventure...one guy alone in a rowboat, in search of the legendary 'One Piece,' said to be the greatest treasure in the world...",
      release_date: "December 24th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1345.jpg"},

{
      title: "One Piece, Volume 55: A Ray of Hope",
      author: "Eiichirō Oda",
      synopsis: "A Ray of Hope: Luffy's got some backup in his former enemies Buggy the Clown, Mr. 2 Bon Clay and Mr. 3 as he tries to rescue his brother from Impel Down prison. But now Warden Magellan, with his Venom-Venom powers, is out to stop him! Can Luffy survive such a dangerous attack from a person whose very breath is a deadly weapon, or could his ace in the hole possibly be a 'queen'?",
      release_date: "September 4th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1346.jpg"},

{
      title: "One Piece, Volume 15: Straight Ahead!",
      author: "Eiichirō Oda",
      synopsis: "Nami's sick! Now the Merry Go is without her navigator! Luffy and crew have but one choice--find land and hopefully a doctor. They miraculously stumble upon Drum Island where it is eternally winter, but upon arriving they find out the island has only one doctor--and she's a witch! With Nami's life on the line, Luffy sets out through the snow-laden fields to find this doctor, witch or not!",
      release_date: "September 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1347.jpg"},

{
      title: "One Piece, Volume 12: The Legend Begins",
      author: "Eiichirō Oda",
      synopsis: "Luffy narrowly escapes being executed by his old nemeses Lady Alvida and Buggy the Clown, but now he has the Navy hot on his trail. Leading the hunt is the relentless Captain Smoker, a man who has never let a pirate escape from his jurisdiction!",
      release_date: "February 2nd 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1348.jpg"},

{
      title: "One Piece, Volume 54: Unstoppable",
      author: "Eiichirō Oda",
      synopsis: "With his brother Ace locked up in the Naval prison Impel Down, Luffy doesn't have much time to rescue him before his imminent execution. While he may have found a way to sneak into the maximum-security prison, finding Ace isn't going to be as easy. But a chance reunion with some former enemies just might be a blessing in disguise!",
      release_date: "June 4th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1349.jpg"},

{
      title: "One Piece, Volume 04: The Black Cat Pirates",
      author: "Eiichirō Oda",
      synopsis: "Captain Kuro of the Black Cat Pirates was the most feared evil genius on the high seas...until he vanished. Most people believe he's dead, but only his crew knows the truth: Captain Kuro has been laying low in a small seaside village, posing as a mild-mannered butler until the time for pillage is just right. Now that time has come, and the ruthless Black Cat Pirates are about to attack...Unless, of course, Monkey D.Luffy can stop them! All Luffy has on his side are the sword-wielding first mate, Zolo; his thieving navigator, Nami; Usopp, a local kid with a knack for telling lies; and his own bizarre rubber-limbed powers. If these four amateur pirates want to stop the entire Black Cat crew, they'll have to come up with a pretty slick plan...",
      release_date: "August 4th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1350.jpg"},

{
      title: "One Piece, Volume 07: The Crap-Geezer",
      author: "Eiichirō Oda",
      synopsis: "Don Krieg's evil pirate armada attempts to hijack the oceangoing restaurant Baratie, but the pirate cooks put up a fierce resistance until Krieg reveals one of the greatest secret weapons in his arsenal--Invincible Pearl! When sous chef Sanji steps into the fray, it turns out that he and Chef Zeff have some unfinished business concerning the loss of the latter's leg! Will their differences come between them or make the Baratie stronger? Either way, unfortunately for Luffy, it turns out that Don Krieg harbors an even deadlier weapon--Gin, the very man whose life Sanji once saved with a square meal!",
      release_date: "March 4th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1351.jpg"},

{
      title: "One Piece, Volume 66: The Road Toward the Sun",
      author: "Eiichirō Oda",
      synopsis: "The battle for Fish-Man island continues as a giant ship threatens to collide with the island and destroy everything. Can the Straw Hat pirates defeat Hody Jones and create a new bond between humans and Fish-Men? And what strange new adventures await the crew and they finally step into the New World!",
      release_date: "May 2nd 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1352.jpg"},

{
      title: "One Piece, Volume 65: To Nothing",
      author: "Eiichirō Oda",
      synopsis: "The Straw Hat crew are the only ones standing in the way of the New Fish-Man pirates taking complete control over Fish-Man Island. And when Hody puts his diabolical plan into action, only Luffy can stop him. Luffy may have become much more powerful thanks to his training, but how can he hope to defeat a Fish-Man at the bottom of the ocean?!",
      release_date: "February 3rd 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1353.jpg"},

{
      title: "One Piece, Volume 09: Tears",
      author: "Eiichirō Oda",
      synopsis: "Luffy and crew must contend with 'Saw-Tooth' Arlong and his nasty Fish Man pirates, who specialize in using mafia tactics to squeeze the lifeblood from innocent villagers. Needless to say, it comes as a big surprise to everyone that pirate-hating Nami is actually a member of Arlong's crew!",
      release_date: "July 2nd 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1354.jpg"},

{
      title: "One Piece, Volume 67: COOL FIGHT",
      author: "Eiichirō Oda",
      synopsis: "Now that they’ve reached the New World, the Straw Hat pirates are up against things they’ve never seen before! Dragons, centaurs and deadly samurai are just the tip of the iceberg compared to the true dangers of Punk Hazard! Can Luffy and his mates uncover the dark secrets of this mysterious island?!",
      release_date: "August 3rd 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1355.jpg"},

{
      title: "One Piece, Volume 53: Natural Born King",
      author: "Eiichirō Oda",
      synopsis: "When the Straw Hats come in contact with Bartholomew Kuma's bare paw, this Warlord of the Sea's teleportation power sends them flying to an unknown location. Luffy lands on a maiden island where he battles the local Amazons. But with the crew scattered all around the world, will they ever be able to meet up again?!",
      release_date: "March 4th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1356.jpg"},

{
      title: "One Piece, Volume 05: For Whom the Bell Tolls",
      author: "Eiichirō Oda",
      synopsis: "Once upon a time, Usopp was just a local boy with a talent for tall tales. Everyone in his little seaside village knew him as the joker who claimed to be a pirate captain and woke people up in the mornings by shouting 'Pirates are coming!' But then real pirates landed on the beach…Now Usopp's village is under attack by the Black Cat Pirates, one of the most legendary and feared crews on the high seas. And three young would-be pirates have joined him in defending the village: Nami the thief, Zolo the swordsman, and Luffy, the straw-hatted wannabe pirate with incredible rubber powers. Usopp is about to find out how an imaginary pirate stands up to the real thing… and what it means to be a real pirate. His neighbors would never believe it in a million years...",
      release_date: "October 2nd 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1357.jpg"},

{
      title: "One Piece, Volume 35: Captain",
      author: "Eiichirō Oda",
      synopsis: "Luffy and crewmate Usopp try hard to find a way to repair the Merry Go, but after Usopp is attacked and the money they had saved to repair the ship is stolen, Luffy must make the most difficult decision as a captain yet. What will become of their beloved ship? And where did Robin disappear to...?",
      release_date: "November 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1358.jpg"},

{
      title: "One Piece, Volume 06: The Oath",
      author: "Eiichirō Oda",
      synopsis: "Luffy's pirates thought they were just stopping in for a quick bite...but now Luffy's been made a busboy on Baratie, the oceangoing restaurant, and it turns out some of the worst-mannered pirates on the Grand Line are just dying for a meal.Always one to look on the bright side, Luffy sets his sights on Sanji, the smart-talking, skirt-chasing assistant chef on the Baratie, as the Merry Go's new cook. But it'll take more than a vicious pirate battle and a little sweet talking from Nami to convince him to leave the Baratie and join Luffy's team. His oath to feed any and all pirates in need keeps getting in the way. The question is: what do you do when the very same pirates you just fed now want to serve you up for dinner?",
      release_date: "December 3rd 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1359.jpg"},

{
      title: "One Piece, Volume 02: Buggy the Clown",
      author: "Eiichirō Oda",
      synopsis: "As a kid, Monkey D. Luffy vowed to become King of the Pirates and find the legendary treasure called the 'One Piece.' The enchanted Gum-Gum Fruit has given Luffy the power to stretch like rubber--and his new crewmate, the infamous pirate hunter Roronoa Zolo, strikes fear into the hearts of other buccaneers! But what chance does one rubber guy stand against Nami, a thief so tough she specializes in robbing pirates...or Captain Buggy, a fiendish pirate lord whose weird, clownish appearance conceals even weirder powers? It's pirate vs. pirate in the second swashbuckling volume of One Piece!",
      release_date: "April 3rd 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1360.jpg"},

{
      title: "One Piece, Volume 33: Davy Back Fight",
      author: "Eiichirō Oda",
      synopsis: "After exploring the newest island, Long Ring Long Land, the Straw Hats meet the Foxy Pirates. Led by Foxy the Silver Fox, these new foes waste no time in challenging Luffy to a high stakes Davy Back Fight. Will Luffy accept the challenge of these dangerous new enemies?",
      release_date: "June 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1361.jpg"},

{
      title: "One Piece, Volume 11: The Meanest Man in the East",
      author: "Eiichirō Oda",
      synopsis: "After almost drowning at the hands of 'Saw-Tooth' Arlong, captain of the nasty Fish-Man pirates, Luffy bounces back with a few tricks up his sleeve. The fate of Coco Village, if not the rest of the East Blue, rests upon the outcome of their final battle!",
      release_date: "December 2nd 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1362.jpg"},

{
      title: "One Piece, Volume 49: Nightmare Luffy",
      author: "Eiichirō Oda",
      synopsis: "In their effort to help their new friend Brook regain his shadow from Gecko Moria and his army of zombies, Luffy, Sanji and Zolo lose their shadows too! A human with no shadow will die if sunlight hits them! Can the crew defeat one of the Seven Warlords of the Sea to get their shadows back before the sun rises?",
      release_date: "March 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1363.jpg"},

{
      title: "One Piece, Volume 16: Carrying On His Will",
      author: "Eiichirō Oda",
      synopsis: "Avalanche! Luffy and Sanji surf a tree down a mountain on a fast-moving wave of snow and just avoid being buried alive. But then the demented King Wapol suddenly appears and orders Luffy and Sanji's deaths. With no time to lose, Luffy evades their attacks, when out of the blue an unlikely friend comes to his rescue! A friend who was just trying to kill him only hours before!",
      release_date: "December 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1364.jpg"},

{
      title: "One Piece, Volume 08: I Won't Die",
      author: "Eiichirō Oda",
      synopsis: "If Luffy wants to get out of a year's worth of chore-boy duty on the oceangoing restaurant Baratie, he's got to rid the seas of the evil Don Krieg. Unfortunately, Krieg's armed to the teeth and aided by his 'Demon Man,' Commander Gin. The battle takes a surprising turn as Krieg reveals his increasingly deadly military might! Meanwhile, Nami has sailed off on the Merry Go with treasure in tow, and she's headed to Arlong Park, home of creepy Captain Arlong and his Fish-Man Pirates. What business does Nami have at Arlong Park, anyway? Something fishy is going on and Luffy's crew just may be in over their heads!",
      release_date: "April 30th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1365.jpg"},

{
      title: "One Piece, Volume 50: Arriving Again",
      author: "Eiichirō Oda",
      synopsis: "The Straw Hats are in a desperate battle against time and Gecko Moria to get their shadows back before dawn. Gecko Moria unleashes his devastating power of a thousand shadows, but Luffy counters back with his 'Gear' powers. To save his crew, will Luffy have to make the ultimate sacrifice?",
      release_date: "June 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1366.jpg"},

{
      title: "One Piece, Volume 19: Rebellion",
      author: "Eiichirō Oda",
      synopsis: "Luffy and pals are headed for the fabled Rainbase, the town of dreams. There they accidentally attract the unwanted attention of the Baroque Works security as well as their old 'pal' Captain Smoker! While beating a hasty retreat from both, Ms. All Sunday invites the crew to the casino's VIP room, which turns out to be a trap. To make matters worse, Vivi gets separated from the others and is pursued by the Baroque Works! Will she be able to shake her pursuers and spring her friends?!",
      release_date: "July 4th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1367.jpg"},

{
      title: "One Piece, Volume 17: Hiriluk's Cherry Blossoms",
      author: "Eiichirō Oda",
      synopsis: "It's the final showdown with the metallic King Wapol! He wants his castle back and he's not taking 'no' for an answer. Well, Luffy, Sanji and their newfound friend Tony Tony Chopper aren't giving up so easily! But our heroes have their hands full--especially with Wapol's ability to modify his body depending on what he eats! Meanwhile, down the mountain in Big Horn village the people are devastated as their beloved leader lies in the snow, badly injured. But all is not lost when Wapol's deadly 20 Doctors make an unbelievable announcement!",
      release_date: "February 2nd 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1368.jpg"},

{
      title: "One Piece, Volume 51: The Eleven Supernovas",
      author: "Eiichirō Oda",
      synopsis: "Camie the mermaid offers to take Luffy and the crew to Fish-Man Island if they'll help rescue her boss Hachi from the notorious Flying Fish Riders. Ignoring all of the warning signs (hint: her boss sounds suspiciously like an old enemy!), the crew agrees to help their mermaid friend, only to end up losing Camie to other kidnappers!",
      release_date: "September 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1369.jpg"},

{
      title: "One Piece, Volume 14: Instinct",
      author: "Eiichirō Oda",
      synopsis: "Someone has given Dorry the Giant exploding ale and he's not happy! Assuming it was Luffy and crew, he launches an all-out attack and is soundly defeated by the rubbery power of the Gum-Gum Rocket! But a mystery is afoot--if Luffy didn't slip the giant the exploding brew, just who did?",
      release_date: "July 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1370.jpg"},

{
      title: "One Piece, Volume 20: Showdown at Alubarna",
      author: "Eiichirō Oda",
      synopsis: "When leaving Rainbase to head off the rebels in the capital city of Alubarna, Luffy gets pulled aside by Crocodile for some cozy one-on-one time! With only three minutes to fight, can Luffy take on the sand pirate on his domain?! The rest of the crew must help Vivi stop the rebels, but the formidable Officer Agents have been waiting for them at the city gates! Will Vivi be in time to stop the inevitable clash between the rebels and the Army?!",
      release_date: "September 4th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1371.jpg"},

{
      title: "One Piece, Volume 10: OK, Let's Stand Up!",
      author: "Eiichirō Oda",
      synopsis: "Luffy's navigator, Nami, has been working all along for 'Saw-Tooth' Arlong to steal enough treasure to buy back her village. In return, the pirate has handed over her fortune to the Navy! Now Luffy and his crew prepare to risk their lives for Nami's sake against their most ruthless opponent yet.",
      release_date: "October 4th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1372.jpg"},

{
      title: "One Piece, Volume 13: It's All Right!",
      author: "Eiichirō Oda",
      synopsis: "No sooner have Luffy and crew escaped the bounty hunters of Whisky Peak than they become the target of a sinister criminal outfit known as Baroque Works. But the Straw Hat pirates have bigger worries, now that they've agreed to protect a very important person in return for untold riches.",
      release_date: "April 28th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1373.jpg"},

      [genres[0], genres[4], genres[1], genres[10], genres[20]]
      ],
      [

{
      title: "Ranma 1/2, Vol. 22",
      author: "Rumiko Takahashi",
      synopsis: "Ranma's latest nemesis is Herb of the legendary Musk Dynasty, a Chinese warrior tribe with the powers of animals. Herb, and his companions Lime and Mint, have come to Japan in search of a particular treasure - but they have to go through Ranma, Ryoga, and Mousse first!",
      release_date: "1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1374.jpg"},

{
      title: "Ranma 1/2, Vol. 23",
      author: "Rumiko Takahashi",
      synopsis: "Series Description: From the best-selling manga author of Inu-Yasha, Ranma features a martial artist with a curse: When he gets doused with cold water, he turns into a voluptuous girl! And his friends -- and enemies -- turn into various cute animals! Ranma 1/2, a heady blend of action, adventure, and romantic comedy, is the longest-running manga in the United States. In this installment of the enduring series, Ranma's fight against Herb, Mint, and Lime continues. Does he have a chance of defeating Herb when even his ultimate move has failed against this Chinese warrior? Then a new teacher comes to Furinkan High with a rep for dealing harshly with delinquents! Unfortunately for Ranma, she also has martial arts skills so deadly even Happosai is scared of her! Finally, Akane tries to recover a memory from her past, only to find that the mysterious boy she recalls from childhood has no idea who she is...",
      release_date: "1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1375.jpg"},

{
      title: "Ranma 1/2, Vol. 32",
      author: "Rumiko Takahashi",
      synopsis: "When a well-meaning, yet eternally clueless Ranma suggests that Akane's chest size may be shrinking, Akane is hard-pressed to decide how to best use barbells: to pump up her chest or bust Ranma's face! Rated for older teens.",
      release_date: "August 1st 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1376.jpg"},

{
      title: "Ranma ½, Vol. 20",
      author: "Rumiko Takahashi",
      synopsis: "When Genma took baby Ranma away from his mother, he made her a solemn promise - he would see to it that the boy would grow up manly, or he would see them both dead by ritual seppuku! Well, Nodoka 'Missus' Saotome has finally shown up at the Tendo Dojo doorstep, and she can't wait to catch a glimpse of her dearly beloveds. But will the sight of her 'son' in girls' clothes and her 'husband' as a panda possess Nodoka to perform the seppuku on them herself...?",
      release_date: "June 1st 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1377.jpg"},

{
      title: "Ranma 1/2, Vol. 24",
      author: "Rumiko Takahashi",
      synopsis: "Series Description: From the best-selling manga author of Inu-Yasha, Ranma features a martial artist with a curse: When he gets doused with cold water, he turns into a voluptuous girl! And his friends--and enemies--turn into various cute animals! Ranma 1/2, which features action, adventure, and romantic comedy, is the longest-running manga in the United States. Akane's encounter with the mysterious boy Shinnosuke from her childhood brings new and pressing problems--he's only kept alive by the magical water of Ryugenzawa, the same water that makes animals grow into giants! Worse yet, when Ranma tries to bring Akane home, he suspects she may have fallen in love with poor, doomed Shinnosuke. Will he risk everything to help his rival, even if it means losing Akane?",
      release_date: "1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1378.jpg"},

{
      title: "Ranma 1/2, Vol. 15",
      author: "Rumiko Takahashi",
      synopsis: "Author and artist Takahashi, the world's most popular and prolific female manga creator, continues her series about a teenage martial artist named Ranma Saotome. Also an anime series, all seven TV seasons (over 150 episodes) are now available on DVD from Viz.",
      release_date: "1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1379.jpg"},

{
      title: "Ranma 1/2, Vol. 36",
      author: "Rumiko Takahashi",
      synopsis: "",
      release_date: "1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1380.jpg"},

{
      title: "Ranma 1/2, Vol. 35",
      author: "Rumiko Takahashi",
      synopsis: "Ranma Saotome never thought a martial arts training mission to China would turn out like this! An accidental dunk in a cursed spring changes boy Ranma into a young girl, every time he is splashed with cold water. Hot water reverses the effect - but only until next time! Ranma rescues a hapless child being attacked by a flock of evil birdmen. The little kid turns out to be none other than the daughter of the infamous cursed springs' guide! She tells Ranma that the secret map of the springs must be protected from the bird-brained bandits or the very springs themselves will dry up! Ranma and friends are thrust into battle when Shampoo is taken over by the leader of the bird people. Can Ranma beat the birds and save the springs, or will the feathered fiends get the best of him/her?",
      release_date: "1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1381.jpg"},

{
      title: "Ranma 1/2, Vol. 14",
      author: "Rumiko Takahashi",
      synopsis: "The legendary Dragon's Whisker! Described by a reluctant Ranma as the seal that keeps something terrible from happening, four steamed little buns have come all the way from Qinghai Province, China, in search of it. But what can it be? Ranma wants it...the martial-artist burns want it...Genma wants it. It looks like a simple pigtail-holder, but it's got to be more than that. According to Cologne, once hair kept bound by the Dragon's Whisker is gone, it's gone for good. Ranma's really cutting it close, this time...",
      release_date: "1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1382.jpg"},

{
      title: "Ranma 1/2, Vol. 17",
      author: "Rumiko Takahashi",
      synopsis: "Sure, the only one who recognizes the engagement between Ukyo and Ranma may be Ukyo herself, but that still counts for something, doesn't it? Ten years ago, Ukyo made a special okonomiyaki sauce - which Ranma secretly ruined. Unaware of what Ranma had done, Ukyo to this day can't quite understand why Ranma's being extra nice to her despite the phenomenal failure of her special sauce. Akane's onto Ranma, though, and one way or another, he's going to pay. Which will it be, Ranma? The okonomiyaki frying pan, or the fire that comes from slurping down that nasty sauce itself...?",
      release_date: "1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1383.jpg"},

{
      title: "Ranma 1/2, Volume 29",
      author: "Rumiko Takahashi",
      synopsis: "Ranma Saotome never thought a martial arts training mission to China would turn out like this! An accidental dunk in a cursed spring changes boy Ranma into a young girl, every time he is splashed with cold water. Hot water reverses the effect - but only until next time!",
      release_date: "April 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1384.jpg"},

{
      title: "Ranma 1/2, Vol. 28",
      author: "Rumiko Takahashi",
      synopsis: "For Ryoga, whose alter ego is of course P-chan, Akane's cute widdle pet pig, what could possibly be a better love connection than someone who breeds pigs for a living? Latest in a line of sumo-wrestling pig breeders, the passionate-about-porkers Akari is impressed when Ryoga easily bests a 14th generation Yokozuna champion. Does an ever-hopeful Ryoga dare take her professions of undying love at face value, or will his transformation into P-chan be the cause of some terrible misunderstanding...?",
      release_date: "1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1385.jpg"},

{
      title: "Ranma ½, Vol. 4",
      author: "Rumiko Takahashi",
      synopsis: "Series Description: From the best-selling manga author of Inu-Yasha, Ranma features a martial artist with a curse: When he gets doused with cold water, he turns into a voluptuous girl And his friends--and enemies--turn into various cute animals Ranma 1/2, which features action, adventure, and romantic comedy, is the longest-running manga in the United States. Ryoga appears in human form to take Ranma out of the duel and pair up with Akane The female Ranma and Ryoga end up together and turn the duel into a brawl. In the process, Akane falls into an ice pool and the duo jump in to save her, with Ryoga turning into a pig on contact Next, a strange Chinese girl named Shampoo is under a village edict to kill any stranger of the same sex who defeats her--even if that stranger turns out to be Ranma",
      release_date: "1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1386.jpg"},

{
      title: "Ranma 1/2, Vol. 13",
      author: "Rumiko Takahashi",
      synopsis: "You're the only man I consider my rival, Ryoga... The Mark of the Gods (actually a doodle representing a school of martial-arts calligraphy) is now upon Ryoga, and the only way he can lose the doodle is to lose a fight -- hopefully to Ranma! Fox Fu, Feline Fu, Flat-Frog Fu - not one of Ranma's ultimate desperation strikes seems to be working! For Akane, it's just too crazy to believe that P-chan may secretly be Ryoga! Better use some extra-hot water to wash that doodle off P-chan, though, just in case...",
      release_date: "1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1387.jpg"},

{
      title: "Ranma ½, Vol. 3",
      author: "Rumiko Takahashi",
      synopsis: "From the best-selling manga author of InuYasha, Ranma 1/2 features a martial artist with a curse: When he gets doused with cold water, he turns into a voluptuous girl. His friends--and enemies--turn into various cute animals due to a curse similar to Ranma's. Ranma 1/2, which features action, adventure, and romantic comedy, is the longest-running manga in the United States. In this entry, Ranma in female form engages in a gymnastic duel with the duplicitous Kodachi, Kunou's younger sister, who has fallen in love with the male Ranma. Like her brother, she refuses to see that the two Ranmas are the same person. Next up is an ice-skating duel. Skater Azusa, who collects 'cute' things, wants to wrest P-chan away from Akane, who won't give him up. Worse still, Azusa's male partner Sanzenin kisses female Ranma--which aggravates Ranma no end since it's his first kiss. When the Ranma and Akane team up against Azusa and Sanzenin, the prize is P-chan",
      release_date: "1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1388.jpg"},

{
      title: "Ranma ½, Vol. 6",
      author: "Rumiko Takahashi",
      synopsis: "Series Description: From the best-selling manga author of Inu-Yasha, Ranma features a martial artist with a curse. When he gets doused with cold water, he turns into a voluptuous girl And his friends--and enemies--turn into various cute animals Ranma 1/2, which features action, adventure, and romantic comedy, is the longest-running manga in the United States. Extensive training helps Ranma defeat Shampoo's grandmother by assuming his invincible-cat mode. Akane in turn tames 'cat Ranma, ' in the process gaining the antidote to Ranma's inability to tolerate hot water. Just as Ranma returns to male form, Ryoga arrives, only to be tied into knots by Ranma. Ryoga turns to the old woman for more training, and learns Bakusaitenketsu, a technique that teaches how to explode a rock through pressure points. Soon Ranma must face a more powerful Ryoga, and the outcome isn't at all certain",
      release_date: "1989",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1389.jpg"},

{
      title: "Ranma 1/2, Vol. 8",
      author: "Rumiko Takahashi",
      synopsis: "In this volume, Ryoga teams up with Ukyo, goes on a date with Akane, and meets his long-lost fiancé e. Meanwhile, Ranma and Akane both swallow 'love pills' supposed to make them fall for the first person they see.",
      release_date: "1989",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1390.jpg"},

{
      title: "Ranma 1/2, Vol. 19",
      author: "Rumiko Takahashi",
      synopsis: "'Father knows best.' Then you grow up, and suddenly you're challenging everything he says. Pity poor Genma Saotome, who once took treats from baby son Ranma with impunity, but now he gets pummeled instead. Will the dreaded 'Cradle From Hell' technique teach the boy to respect his old man? Next, Akane makes some magic mochi. Do the marks that appear on the faces of those who eat it portend true fortune-telling ability, or just (as Ranma says) a 'dagger of agony through (the) skull?' Finally, it's the dawn of the 'Mariko Konjo, Cheerleader of L-O-V-E' storyline. One, two, three, four! Buy this book and read some more!",
      release_date: "1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1391.jpg"},

{
      title: "Ranma ½, Vol. 2",
      author: "Rumiko Takahashi",
      synopsis: "Follows the adventures of half-boy, half-girl martial artist Ranma, whose transforming gender problems began at the Accursed Springs in China when he became cursed to turn into a girl when splashed with cold water, and back into a boy with hot water.",
      release_date: "1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1392.jpg"},

{
      title: "Ranma 1/2, Volume 11",
      author: "Rumiko Takahashi",
      synopsis: "Whenever male martial artist Ranma gets splashed with cold water he becomes a buxom young girl! Now, Ranma's arch-rival Ryoga has discovered how to reverse the transformation. But before Ranma can learn the secret, his strength is sapped by evil 'sensei' Happosai. Is he doomed to spend his life being beaten up by infants and little old ladies?",
      release_date: "February 5th 1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1393.jpg"},

{
      title: "Ranma 1/2, Vol. 12",
      author: "Rumiko Takahashi",
      synopsis: "Ranma's recent weakness has convinced him he needs a new technique, and he's gone to the wilds of Japan to train. Cologne shares her knowledge of Hiryû Shôten Ha, the 'Heaven Blast of the Dragon,' a technique that harnesses a combatant's battle aura and unleashes it into a powerful blast...but the learning curve is more challenging than he ever expected. Then, the sound of a bell brings Shampoo a new suitor, Akane takes swimming lessons, and Genma gains a new friend.",
      release_date: "1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1394.jpg"},

{
      title: "Ranma 1/2, Vol. 26",
      author: "Rumiko Takahashi",
      synopsis: "Ranma's mother Nadoka Saotome hasn't seen her son since her husband Genma took him away for a training mission over a decade ago. So, is it any wonder that when a mysterious young stranger drops a scroll with the word 'Ranma' scrawled on it, she assumes it's her long-lost boy? Soon, this stranger takes up residence in the Tendo Dojo and starts passing himself off as his mother's son! It doesn't take long for these two 'Ranmas' to begin fighting over their legacies, a special scroll, and a secret martial arts technique...",
      release_date: "1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1395.jpg"},

{
      title: "Ranma ½, Vol. 5",
      author: "Rumiko Takahashi",
      synopsis: "First Ranma & Co. enjoy a trip to the beach, despite all the COLD WATER. Then, camping out in the woods turns out to have a lot of hazards, not the least of which is the toxic cooking of Akane, Ranma's reluctant fiancee.... Finally, Ranma competes in two bizarre tests of skill. Who will triumph in the Anything Goes Martial Arts Tea Ceremony and the no-holds-barred Martial Arts Fast Food Restaurant Takeout Race?",
      release_date: "1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1396.jpg"},

{
      title: "Ranma 1/2, Vol. 7",
      author: "Rumiko Takahashi",
      synopsis: "Akane gets the lead in the school play and Ranma learns that kissing is such sweet sorrow. Ryoga and Ranma try to find the legendary 'Spring of Drowned Man,' and twisted sister Kodachi Kuno concocts poisoned treats to snare Mister Saotome.",
      release_date: "1989",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1397.jpg"},

{
      title: "Ranma 1/2, Vol. 33",
      author: "Rumiko Takahashi",
      synopsis: "While traveling, the Tendo and Saotome families are forced to take shelter from the rain in a spooky old mansion. Whilst here, girl-type Ranma slips on a banana peel and accidentally uncovers a cursed mirror that makes a love-hungry copy of her. This crazy cope is actually the spirit of a girl who died right before going on a date. From there, wackiness ensues as this kooky copy kisses everyone she can get her hands on, including boy type Ranma! The caretaker of the estate, an old butler, drops off a magical compact that can be used to capture the copy. But hings take an unexpected turn as Ranma and Akane get trapped inside the compact! How will they ever escape and capture the boy-crazy Ranma copy?",
      release_date: "November 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1398.jpg"},

{
      title: "Ranma 1/2, Vol. 9",
      author: "Rumiko Takahashi",
      synopsis: "Shampoo's spurned suitor Mousse wants revenge on Ranma for stealing the object of his affection. He's kidnapped Akane, and made her the star attraction of a circus act where she turns into a duck.",
      release_date: "1989",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1399.jpg"},

{
      title: "Ranma 1/2, Vol. 25",
      author: "Rumiko Takahashi",
      synopsis: "Can Ranma prevent his teacher, Miss Hinako, from stealing his 'ki' and transforming into her grown-up, more dangerous form? More summer silliness comes when scheming Ukyo invites not just Ranma but Akane as well to a haunted seaside cave.",
      release_date: "1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1400.jpg"},

{
      title: "Ranma 1/2, Vol. 18",
      author: "Rumiko Takahashi",
      synopsis: "It's the same old song. Ryoga-confronts-Ranma-and-Ranma-defeats-Ryoga (pause) Ryoga-confronts-Ranma-again-and-Ranma-defeats-Ryoga-again (fade out). Powerful martial artist though he may be, Ryoga has yet to defeat Ranma, and how depressing is that? Not every technique is suited to every martial artist (at least that's what Ranma's dad Genma says). What Ryoga needs is a technique suited to his own unique strengths - to his depression, that is! Sure, asking Akane to say 'I hate you!' may be the quickest way for Ryoga to power up, but even if Ryoga's body survives his new technique's blast, will his heart be able to withstand the blow?",
      release_date: "1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1401.jpg"},

{
      title: "Ranma 1/2, Vol. 21",
      author: "Rumiko Takahashi",
      synopsis: "Pantyhose Taro's back, and so is his thirst for vengeance--a thirst he plans to quench by dunking Happosai, the one responsible for the ridiculous name, in water from the Spring of the Drowned Pious Man--in order to get his name back.",
      release_date: "January 1st 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1402.jpg"},

{
      title: "Ranma 1/2, Vol. 16",
      author: "Rumiko Takahashi",
      synopsis: "When Ranma finds his fellow cursed martial artists unconscious in pantyhose, he discovers a demon is tracking down everyone on the Jusenkyo visitors’ registry. Worse yet, the ox-headed, crane-winged monster has kidnapped Akane! Ryoga, Ranma, Mousse, and Shampoo must set aside their differences to save her.",
      release_date: "1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1403.jpg"},

{
      title: "Ranma 1/2, Vol. 27",
      author: "Rumiko Takahashi",
      synopsis: "The Egg of the Phoenix - legendary treasure and pounding headache for Ranma. Unless Ranma can force-feed the bird into maturity (and thus free himself from its attacks), he'll be on the bottom of the pecking order for the next 100 years. Will the bird ahve teh final word? Elsewhere, a pair of poisonous twins are making life difficult for Shampoo. Can Ranma rescue her? Then, a body-jumping demon causes chaos, while a penny-pinching Nabiki takes on her greatest challenge yet. Will she reign supreme as the Queen of Schemes?...",
      release_date: "1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1404.jpg"},

{
      title: "Ranma 1/2, Vol. 10",
      author: "Rumiko Takahashi",
      synopsis: "Akane gets all sorts of magical power-ups, first when Shampoo feeds her some magical Chinese steamed treats, then from some soba noodles that give her super strength. What she didn't count on were the disastrous after-effects.",
      release_date: "1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1405.jpg"},

{
      title: "Ranma 1/2, Vol. 31",
      author: "Rumiko Takahashi",
      synopsis: "Ah, to be little boys again! Ryoga and Ranma will stay forever young unless they eat a special mushroom at the perfect time. Eat the right mushroom size, and your age adds up accordingly! Five centimeter? You're five years old! Ten centimeters? Ten years old! Can the two 'boys' survive their squabbling over not wanting to share, being naughty, getting spanked by Akane, and the terror that is 'Uncle' Soun's whiskers until the mushrooms are 16 centimeters tall? Grow, mushrooms, grow! Grow before everyone's childhood memories turn into rancid shiitakes!",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1406.jpg"},

{
      title: "Ranma 1/2, Vol. 34",
      author: "Rumiko Takahashi",
      synopsis: "Ranma Saotome never thought a martial arts training mission to China would turn out like this An accidental dunk in a cursed spring changes boy Ranma into a young girl, every time he is splashed with cold water. Hot water reverses the effect - but only until next time. Akane Tendo is shocked when she wins a contest by being the 10,000th girl at the beach who isn't able to swim! The locals reward her with an enchanted jellyfish bathing suit that has the uncanny power to enable its wearer to swim. In return for this prize she must enter a long-distance swimming competition against a group of girls all wearing the same magical bathing suit. Akane takes the lead, but a dangerous surprise awaits her at the finish line! Will Ranma dive in and save her in time?",
      release_date: "1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1407.jpg"},

{
      title: "Ranma 1/2, Vol. 30",
      author: "Rumiko Takahashi",
      synopsis: "When the monk-in-residence of a faraway temple is only too eager to 'give' Ranma, Genma, and Soun a legendary martial arts outfit said to endow its wearer with ultimate power, you'd think they would know something was up. But then again, the monk throws in such other lovely gifts...Back at the Tendo Dojo, the true nature of the outfit is revealed: the dôgi chooses its own wearer! The outfit picks Akane - much to Ranma's chagrin - and what once was a minor annoyance turns into an issue of pride when Ranma is unable to defeat Akane in battle. Will he have to confess his true feelings to get through to her...?",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1408.jpg"},

{
      title: "Ranma ½, Vol. 1",
      author: "Rumiko Takahashi",
      synopsis: "Ranma Saotome never thought a martial arts training mission to China would turn out like this! An accidental dunk in a cursed spring changes boy Ranma into a young girl, every time he is splashed with cold water. Hot water reverses the effect - but only until next time!",
      release_date: "May 1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1409.jpg"},

      [genres[14], genres[19]]
      ],
      [

{
      title: "Love★Com, Vol. 13",
      author: "Aya Nakahara",
      synopsis: "Someone didn't make it into college, and it wasn't Ôtani! Suzuki, thrown by his family's harsh expectations, failed the college entrance exam. And now some bruiser who did get accepted wants Chiharu for himself! Ôtani jumps to the rescue by claiming Suzuki is a judo expert who will fight for Chiharu's hand! But is one week really enough time to turn Suzuki into a black belt?",
      release_date: "April 25th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1410.jpg"},

{
      title: "Love★Com, Vol. 5",
      author: "Aya Nakahara",
      synopsis: "Heartbroken by Ôtani's rejection, Risa had decided to give up on ever getting together with him. But a chance encounter with her musical hero Umibôzu helps Risa get back in the fighting spirit. With a new surge of self-confidence, Risa is ready to go after Ôtani. He'll never know what hit him. ",
      release_date: "June 25th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1411.jpg"},

{
      title: "Love★Com, Vol. 9",
      author: "Aya Nakahara",
      synopsis: "Risa Koizumi is the tallest girl in class, and the last thing she wants is the humiliation of standing next to Atsushi Otoni, the shortest guy. Fate and the whole school have other ideas, and the two find themselves cast as the unwilling stars of a bizarre romantic comedy duo. Rather than bow to the inevitable, Risa and Atsushi join forces to pursue their true objects of affection. But in the quest for love, will their budding friendship become something more complex?",
      release_date: "November 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1412.jpg"},

{
      title: "Love★Com, Vol. 7",
      author: "Aya Nakahara",
      synopsis: "Risa Koizumi is the tallest girl in class, and the last thing she wants is the humiliation of standing next to Atsushi Otoni, the shortest guy. Fate and the whole school have other ideas, and the two find themselves cast as the unwilling stars of a bizarre romantic comedy duo. Rather than bow to the inevitable, Risa and Atsushi join forces to pursue their true objects of affection. But in the quest for love, will their budding friendship become something more complex?",
      release_date: "February 25th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1413.jpg"},

{
      title: "Love★Com, Vol. 1",
      author: "Aya Nakahara",
      synopsis: "Risa Koizumi is the tallest girl in class, and the last thing she wants is the humiliation of standing next to Atsushi Otoni, the shortest guy. Fate and the whole school have other ideas, and the two find themselves cast as the unwilling stars of a bizarre romantic comedy duo. Rather than bow to the inevitable, Risa and Atsushi join forces to pursue their true objects of affection. But in the quest for love, will their budding friendship become something more complex?",
      release_date: "2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1414.jpg"},

{
      title: "Love★Com, Vol. 2",
      author: "Aya Nakahara",
      synopsis: "Risa's getting really confused about her feelings for Ôtani--she doesn't know if she wants to help him get back together with his ex-girlfriend or keep him all to herself!",
      release_date: "July 25th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1415.jpg"},

{
      title: "Love★Com, Vol. 12",
      author: "Aya Nakahara",
      synopsis: "Risa and Otani's relationship finally seems to be going right, just in time for college woes to ruin their lives! Risa only has a few months to decide which tech school she wants to attend, but she can't even decide what she wants to study. What kind of degree can you get for playing video games and listening to Umibozu all day?",
      release_date: "December 22nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1416.jpg"},

{
      title: "Love★Com, Vol. 8",
      author: "Aya Nakahara",
      synopsis: "Risa Koizumi is the tallest girl in class, and the last thing she wants is the humiliation of standing next to Atsushi Otoni, the shortest guy. Fate and the whole school have other ideas, and the two find themselves cast as the unwilling stars of a bizarre romantic comedy duo. Rather than bow to the inevitable, Risa and Atsushi join forces to pursue their true objects of affection. But in the quest for love, will their budding friendship become something more complex?",
      release_date: "July 23rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1417.jpg"},

{
      title: "Love★Com, Vol. 11",
      author: "Aya Nakahara",
      synopsis: "Risa's love life is finally on a roll, now that Otani has confessed his love to her. But can her happiness be complete if her best friend is miserable? Nobu's grandma is moving to Hokkaido for health reasons, and Nobu has decided to go to college nearby. Nakao wants to be supportive, but the thought of being that far away from Nobu is driving him crazy. Will their relationship crack under the pressure?",
      release_date: "July 25th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1418.jpg"},

{
      title: "Love★Com, Vol. 4",
      author: "Aya Nakahara",
      synopsis: "Risa has finally realized that she has feelings for Otani, and can't wait to confess her love. But dense Otani won't take her hints! With the help of all their friends and a romantic beach vacation, can Risa get her affections past his thick head?",
      release_date: "February 25th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1419.jpg"},

{
      title: "Love★Com, Vol. 10",
      author: "Aya Nakahara",
      synopsis: "Risa Koizumi is the tallest girl in class, and the last thing she wants is the humiliation of standing next to Atsushi Otoni, the shortest guy. Fate and the whole school have other ideas, and the two find themselves cast as the unwilling stars of a bizarre romantic comedy duo. Rather than bow to the inevitable, Risa and Atsushi join forces to pursue their true objects of affection. But in the quest for love, will their budding friendship become something more complex?",
      release_date: "March 25th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1420.jpg"},

{
      title: "Love★Com, Vol. 14",
      author: "Aya Nakahara",
      synopsis: "Risa thought life was going great, but she didn't count on her grandpa returning from abroad and taking an instant disliking to her boyfriend. Granpa is determined to save his beloved granddaughter from an unsuitable match. But will he go so far as to hire a busty beauty to seduce Ôtani?!",
      release_date: "July 14th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1421.jpg"},

{
      title: "Love★Com, Vol. 16",
      author: "Aya Nakahara",
      synopsis: "Love Matters, Not Size; The Long and the Short of First Love; They put the Comedy back in Complex R to L (Japanese Style). Risa and her friends are named to the graduation committee and get busy working on the yearbook and class performance. When Ôtani's photos go missing from the class album and other pranks highlight his height (or lack thereof), all fingers point to Risa. Who is behind this mischief--and why?! Risa Koizumi is the tallest girl in class, and the last thing she wants is the humiliation of standing next to Atsushi Ôtani, the shortest guy. Fate and the whole school have other ideas, and the two find themselves cast as the unwilling stars of a bizarre romantic comedy duo.",
      release_date: "March 13th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1422.jpg"},

{
      title: "Love★Com, Vol. 6",
      author: "Aya Nakahara",
      synopsis: "Ôtani wins tickets to the Umibôzu concert and asks Risa to go with him. Could this be the answer to her dreams—their first date?! But as fate would have it, Ôtani gets sick the day before the concert. Concerned (about her friend  the date) Risa visits his sick bed and gets her first kiss! Or does she? Was it an accident? Does Ôtani even  it?",
      release_date: "October 24th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1423.jpg"},

{
      title: "Love★Com, Vol. 15",
      author: "Aya Nakahara",
      synopsis: "Love Matters, Not Size; The Long and the Short of First Love; They put the Comedy back in Complex R to L (Japanese Style). When Risa and Ôtani are invited to Mighty and Jody's wedding on a tropical island--all expenses paid--the world couldn't seem sunnier! But when they arrive with the gang, Risa and Ôtani discover they're expected to share a room. Will the stress of the uncomfortable situation cast clouds on the festivities? Risa Koizumi is the tallest girl in class, and the last thing she wants is the humiliation of standing next to Atsushi Ôtani, the shortest guy. Fate and the whole school have other ideas, and the two find themselves cast as the unwilling stars of a bizarre romantic comedy duo.",
      release_date: "December 25th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1424.jpg"},

{
      title: "Love★Com, Vol. 3",
      author: "Aya Nakahara",
      synopsis: "Risa Koizumi is the tallest girl in class, and the last thing she wants is the humiliation of standing next to Atsushi Otani, the shortest guy. Fate and the whole school have other ideas, and the two find themselves cast as the unwilling stars of a bizarre romantic comedy.A new student starts out as Risa's rival for love, but ends up proving how important it is to be honest with yourself!",
      release_date: "October 25th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1425.jpg"},

{
      title: "Love★Com, Vol. 17",
      author: "Aya Nakahara",
      synopsis: "Love Matters, Not Size; The Long and the Short of First Love; They put the Comedy back in Complex R to L (Japanese Style). Love Matters, Not Size; The Long and the Short of First Love; They put the Comedy back in Complex   The comedy duo eventually evolved into a couple, but the pair had some growing pains to deal with before they met in junior high school...and before they were introduced to their other love, the music of Umibozu! Plus: join the gang at the beach to see what they're up to after graduation!",
      release_date: "2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1426.jpg"},

      [genres[14], genres[13], genres[15]]
      ],
      [
{
      title: "Dragon Ball, Vol. 9: Test of the All-Seeing Crone",
      author: "Akira Toriyama",
      synopsis: "Having defeated the Red Ribbon Army single-handedly and taken their Dragon Balls, Goku finds that one is still missing! To locate it, he goes to the palace of the All-Seeing Crone, Baba Uranai, who can find anything in the world...for a price! The crone agrees to find the Dragon Ball for free if Goku and his friends--Yamcha, Pu'ar, Kuririn and Upa--can best her five supernatural champions in one-on-one combat. but even if they can beat Dracula, the Mummy, and the Devil, the final challenger just might give Goku the shock of his life!",
      release_date: "September 10th 1987",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1427.jpg"},

{
      title: "Dragon Ball Z, Vol. 2: The Lord of Worlds",
      author: "Akira Toriyama",
      synopsis: "Goku is dead--but his journey is just beginning. Now he must travel through the afterlife along the million-kilometer Serpent Road to find Kaiô-sama, the Lord of Worlds, who will teach him martial arts techniques so powerful they're reserved for the gods! And he'd better hurry, too, because Earth has only nine months until the evil Saiyans, Vegeta and Nappa, will arive to wipe the planet clean of life. While the archdemon Piccolo trains Goku's son Gohan to reach his full power potential, the alien spaceships rocket ever closer...bearing a power so awesome that even Earth's six strongest heroes may not be a match for it!!!",
      release_date: "July 10th 1989",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1428.jpg"},

{
      title: "Dragon Ball Z, Vol. 13: The Red Ribbon Androids",
      author: "Akira Toriyama",
      synopsis: "Three years ago, the time traveler Trunks came from the future to warn Earth's heroes about terrifying androids. Now, the future has become the present: Dr. Gero has unleashed his creations, Androids #19 and #20, to get revenge against Goku for defeating the Red Ribbon Army! But even three years of advance warning may not be enough to prepare the heroes to face robots more powerful than Super Saiyans! And when Trunks returns to join in the fight, they discover that time travel can be dangerous...because sometimes the future changes in ways you don't expect...",
      release_date: "March 10th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1429.jpg"},

{
      title: "Dragon Ball Z, Vol. 17: The Cell Game",
      author: "Akira Toriyama",
      synopsis: "Now in his Perfect Form, Cell is stronger than any creature alive--even the muscled-out new form of the mighty Saiyans. Finding no competition on Earth, Cell invades a TV studio and gives the world an ultimatum: produce a fighter who can beat him in one-on-one combat, or he will methodically slaughter every living thing! But does the human race…or even the Saiyan race…have a champion who can go up against Cell? Plus the alternate-timeline story of Trunks' origin!",
      release_date: "December 26th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1430.jpg"},

{
      title: "Dragon Ball Z, Vol. 22: Mark of the Warlock",
      author: "Akira Toriyama",
      synopsis: "The Lord of Lords, mightiest of the deities, has come to Earth--and he needs the help of Goku, Gohan and Vegeta! From across aeons of time, from across the stars, the evil wizard Bobbidi has returned, gathering chi energy to resurrect the imprisoned djinn Boo, the most powerful creature that ever existed. Beneath the ground in a buried spaceship, Bobbidi has assembled a menagerie of vicious beasts from across the galaxy, ready to defeat our heroes and feed their power to the djinn. But the most vicious enemy of all is already standing in the heroes' ranks...",
      release_date: "August 4th 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1431.jpg"},

{
      title: "Dragon Ball Z, Vol. 14: Rise of the Machines",
      author: "Akira Toriyama",
      synopsis: "Our heroes' worst fears have come true: androids #17 and #18,who in time traveler Trunks's future have already destroyed the world, have been activated! And along with them is #16, an android even Trunks doesn't know! With Goku almost dead from a virus, only Super Saiyan Vegeta has a chance against them--unless Piccolo's plan to merge with his ancient enemy Kami-sama will make him the new strongest being on Earth! But something even worse than androids has come back from the future...",
      release_date: "June 10th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1432.jpg"},

{
      title: "Dragon Ball, Vol. 7: General Blue and the Pirate Treasure",
      author: "Akira Toriyama",
      synopsis: "Only Goku, Bulma and Kuririn stand between the Red Ribbon Army and the seven Dragon Balls which can grant any wish in the world! Using a submarine loaned by Kame-Sen'nin, the heroic trio explores a pirate's undersea cave in search of the next , but gun-toting bad guys are on their tail! Now they must face not only perilous pirate traps but the sinister General Blue, a martial artist with powers even Goku doesn't have! Can they escape the cave alive? As the battle continues, Goku and General Blue go to Penguin Village, the home of the weird scientist  and one of the strangest places on Earth!",
      release_date: "May 8th 1987",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1433.jpg"},

{
      title: "Dragon Ball, Vol. 2: Wish Upon a Dragon",
      author: "Akira Toriyama",
      synopsis: "With the (reluctant) help of the shapeshifting pig Oolong, Goku and Bulma have found almost all the Dragon Balls they need to get their wish! To get the sixth Dragon Ball, the fearsome Ox King sends Goku on a mission: to find Kame-Sen'nin, the Turtle Hermit, whose mighty powers can put out the raging fires of Fry-Pan Mountain! But the sleazy old martial artist might just make it more trouble than it's worth! Then, with the bandits Yamcha and Pu'ar on their trail, our heroes continue their quest for the seventh and final Dragon Ball. But can they get it from little Emperor Pilaf, who wants to use his wish to rule the world?!!",
      release_date: "January 10th 1986",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1434.jpg"},

{
      title: "Dragon Ball Z, Vol. 11: The Super Saiyan",
      author: "Akira Toriyama",
      synopsis: "With an entire planet for their battleground, Goku and Freeza continue their showdown to see who's strongest in the universe! But Goku's determination turns to horror as he realizes that his enemy has just been toying with him...and at just 50% of his full power, Freeza is more than strong enough to beat Goku! Gohan, Piccolo and Kuririn distract Freeza while Goku powers up for a gigantic genki-dama--the last-ditch 'energy sphere' technique. Soon, the heroes have no choice but to hope for a miracle...",
      release_date: "August 7th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1435.jpg"},

{
      title: "Dragon Ball Z, Vol. 16: The Room of Spirit and Time",
      author: "Akira Toriyama",
      synopsis: "Cell has fused with android #17, becoming practically invincible--but not for long! Training in the Room of Spirit and Time, where a year passes for every day outside, Vegeta and Trunks have gone beyond the Super Saiyan, reaching a level of power even greater than second-stage Cell! Now Cell is the one who is outmatched--but Vegeta hates a boring fight. Succumbing to his pride, Vegeta agrees to help Cell fuse with android #18, the last element he needs to become 'perfect,' so he can have the honor of defeating the strongest being in the world!",
      release_date: "November 2nd 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1436.jpg"},

{
      title: "Dragon Ball, Vol. 11: The Eyes of Tenshinhan",
      author: "Akira Toriyama",
      synopsis: "The Tenka'ichi Budôkai is heating up, and there can only be one winner! Last tournament's champion Jackie Chun goes up against three-eyed 'Crane School' kung fu master Tenshinhan! Then, it's the long-awaited match between former classmates Goku and Kuririn--and guess who has some tricks up his sleeve! But Tenshinhan isn't just fighting to win, he's carrying out a deadly grudge--to avenge his master, the Crane Hermit, whose brother was killed by Goku. It all comes down to a final round so devastating the battlefield itself might not survive intact--let alone the spectators!",
      release_date: "February 10th 1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1437.jpg"},

{
      title: "Dragon Ball Z, Vol. 24: Hercule to the Rescue",
      author: "Akira Toriyama",
      synopsis: "Breaking from his master Bobbidi, the rampaging Boo turns the entire world into his candy store! To fight back, Goku transforms into his most powerful form yet, but the world's only hope may lie in Trunks and Goten, the world's youngest and most promising fighters. Using an alien fusion technique, they attempt to merge together to form a single, even more powerful hero! Meanwhile, as Boo destroys city after city, the people of Earth call forth their secret weapon...the seemingly invincible (but actually incompetent) Hercule!",
      release_date: "March 3rd 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1438.jpg"},

{
      title: "Dragon Ball, Vol. 3: The Training of Kame-Sen'nin",
      author: "Akira Toriyama",
      synopsis: "With the Dragon Balls gone and Bulma's summer vacation over, Goku goes to the remote house of the Turtle Hermit, Kame-Sen'nin, to be trained in the martial arts. There, the girl-ogling old master promises to teach Goku everything he knows...and prepare him for the Tenka'ichi Budôkai, the great tournament to determine the Strongest Fighter in the World! But Goku's fellow student, the Shaolin monk Kuririn, isn't above cheating to be the best. Can the two of them get along as they undergo the strangest martial arts training ever?",
      release_date: "June 10th 1986",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1439.jpg"},

{
      title: "Dragon Ball Z, Vol. 5: Dragon Ball in Space",
      author: "Akira Toriyama",
      synopsis: "In the aftermath of his battle with Goku, Vegeta retreats from Earth, vowing revenge. In search of a way to resurrect their dead friends, Kuririn, Gohan, and Bulma go into space in search of Namek--Piccolo's home planet where the Dragon Balls were originally made. But Namek has become a battleground, where evil emperor Freeza and his minions are slaughtering the peaceful Namekians to fulfill Freeza's wish for immortality! Stranded on a planet full of enemies, the three astronauts radio back to Earth...but 'help' comes from an unexpected source as Vegeta turns against his former master Freeza in order to get the Dragon Balls for himself!",
      release_date: "April 10th 1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1440.jpg"},

{
      title: "Dragon Ball Z, Vol. 12: Enter Trunks",
      author: "Akira Toriyama",
      synopsis: "As the battle on Namek turns the entire planet into a fireball, Goku and Freeza fight it out to the end--and Goku makes a fateful decision. Awaiting Goku's return from outer space, Earth's heroes are shocked to find another, faster spaceship heading towards them--Freeza is back, stronger than ever, swearing to destroy the Earth before Goku can get there to defend it! But as the heroes prepare to make one last stand, another mysterious warrior appears out of nowhere. His name is Trunks, and he has come to warn the heroes about an enemy who makes Freeza look like a walk in the park...",
      release_date: "November 8th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1441.jpg"},

{
      title: "Dragon Ball, Vol. 14: Heaven and Earth",
      author: "Akira Toriyama",
      synopsis: "Goku is the world's only hope--the only being on Earth capable of fighting Piccolo, the Great Demon King! But the city-demolishing battle ends with Piccolo birthing a younger, even tougher version of himself, who will return in three years time to finish the destruction wrought by his father! In search of a way to defeat the new Piccolo, Goku's gaze turns skyward--to the heavenly realm of Kami-sama, creator of the Dragon Balls, deity of the Dragon Ball world. But Piccolo and Kami-sama share a shocking secret...",
      release_date: "August 10th 1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1442.jpg"},

{
      title: "Dragon Ball, Vol. 1: The Monkey King",
      author: "Akira Toriyama",
      synopsis: "Before there was , there was Akira Toriyama's action epic , starring the younger version of Son Goku and all the other  heroes! Meet a naive young monkey-tailed boy named Goku, whose quiet life changes when he meets Bulma, a girl who is on a quest to collect seven 'Dragon Balls.' If she gathers them all, an incredibly powerful dragon will appear and grant her one wish. But the precious orbs are scattered all over the world, and Bulma needs Goku's help (and his super-strength)! With a magic staff for a weapon and a flying cloud for a ride, Goku sets out on the adventure of a lifetime...",
      release_date: "September 10th 1985",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1443.jpg"},

{
      title: "Dragon Ball, Vol. 12: The Demon King Piccolo",
      author: "Akira Toriyama",
      synopsis: "When Kuririn is killed by a lizard-like monster, Goku goes in search of the culprit and finds his most terrifying enemy yet: the evil Demon King Piccolo! Freed after centuries of imprisonment, Piccolo sends waves of monsters on a mission to find the Dragon Balls and destroy any martial artists who might oppose him. With his flying cloud destroyed, Goku finds himself lost in the jungle where he meets an unlikely new ally. Meanwhile, Kame-Sen'nin prepares a last-ditch plan to defeat Piccolo... but at what cost?",
      release_date: "April 8th 1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1444.jpg"},

{
      title: "Dragon Ball, Vol. 16: Goku vs. Piccolo",
      author: "Akira Toriyama",
      synopsis: "As the 'Strongest Under the Heavens' martial arts tournament draws to a close, only Goku, Piccolo, and Shen--the disguised Kami-sama--remain! But even a god is no match for Piccolo's new powers, and soon Goku finds himself fighting...alone... in a battle which will decide not just who is strongest, but who or what will rule the world! The audience flees for their lives as the struggle shakes the heavens apart in the gripping conclusion of Akira Toriyama's !",
      release_date: "February 10th 1989",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1445.jpg"},

{
      title: "Dragon Ball, Vol. 6: Bulma Returns!",
      author: "Akira Toriyama",
      synopsis: "In the frozen north, Goku's one-man fight against the Red Ribbon Army continues as he storms the perilous Muscle Tower! Can he defeat General White's squad of ninjas, cyborgs, and worse, and save the peaceful people of Jingle Village from their oppressors? Then, Goku travels to the City of the West to visit his old friend Bulma, who joins him on his quest, bringing her latest inventions. Their quest for the next  takes them around the world to a jungle island in the South Seas...but to get THIS  they'll have to go through General Blue!",
      release_date: "March 10th 1987",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1446.jpg"},

{
      title: "Dragon Ball Z, Vol. 4: Goku vs. Vegeta",
      author: "Akira Toriyama",
      synopsis: "With the mighty Kaiô-ken amplifying his strength, Goku fights Vegeta in a desperate battle to save the world--only to find that the elite Saiyan warrior is even stronger than his new techniques! In desperation, Goku calls upon the Genki-dama, the 'spirit ball,' drawing power from the Earth, its people, plants, and animals. But alone, even Goku is not enough. The last worn-out survivors, Gohan, Kuririn, and Yajirobe, must rush back into the fray to beat the unbeatable Vegeta...as their enraged foe vows to not only wipe out the human race, but destroy the planet Earth itself!",
      release_date: "January 10th 1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1447.jpg"},

{
      title: "Dragon Ball Z, Vol. 9: The Wrath of Freeza",
      author: "Akira Toriyama",
      synopsis: "Goku and Captain Ginyu fight it out to the end--in each other's bodies! With Goku's life hanging by a thread, Gohan and Kuririn must use the seven Dragon Balls of Namek to summon the mighty Dragon Lord, who can grant any three wishes! But they'd better wish fast, because converging on them are Freeza, lord of the universe, and Vegeta, their evil ally--both seeking the Dragon Balls to wish for eternal life for themselves. Soon, all our heroes are forced to fight together against Freeza--and their salvation may come in the form of not Goku, but Piccolo, now stronger than ever!",
      release_date: "March 8th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1448.jpg"},

{
      title: "Dragon Ball Z, Vol. 23: Boo Unleashed!",
      author: "Akira Toriyama",
      synopsis: "The mighty djinn Boo has awakened from his aeons-old slumber! As Boo's reign of terror begins, even the mad wizard Bobbidi and his allies question whether such an uncontrollable being should have been set free. With all the universe's greatest champions dead, petrified, or beaten into unconsciousness, only one hero remains to put up a fight...Vegeta. Will he win...or will Boo be free to turn the entire population of the world into sweets and gobble them up?",
      release_date: "December 2nd 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1449.jpg"},

{
      title: "Dragon Ball, Vol. 4: Strongest Under the Heavens",
      author: "Akira Toriyama",
      synopsis: "Goku has made it to the Tenka'ichi Budôkai, the world's #1 martial arts tournament...but even the training of the martial arts master Kame-Sen'nin hasn't prepared him for this! Only seven finalists remain. Will the champion be Goku? His fellow student Kuririn? Yamcha, master of the 'Fist of the Wolf Fang'? Fighting woman Ran Fuan? Giran, a rubbery monster who's part dinasaur? Namu, an Indian mystic? Or Jackie Chun, the mysterious old man who may be the toughest fighter of all? There can be only one winner in the wildest, craziest battle ever!",
      release_date: "October 9th 1986",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1450.jpg"},

{
      title: "Dragon Ball Z, Vol. 1: The World's Greatest Team",
      author: "Akira Toriyama",
      synopsis: "Son Goku is the greatest hero on Earth. Five years after defeating the demon king Piccolo, he's grown up and had a family--he's married, and he has a child, Son Gohan. But what is the real reason for Goku's incredible strength? A visitor from outer space arrives bearing terrible news--Goku is an alien, and the visitor, Raditz, is Goku's brother! When Raditz turns out to be a ruthless killer, Goku must fight his incredibly strong brother to save his family and the entire human race. A surprising alliance may be Earth's last hope: Goku will team up with his old enemy Piccolo...archenemies united to save the world!",
      release_date: "May 10th 1989",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1451.jpg"},

{
      title: "Dragon Ball Z, Vol. 25: Last Hero Standing!",
      author: "Akira Toriyama",
      synopsis: "Shorn of his last vestiges of goodness, the djinn Boo is now pure, undiluted evil! With a single wave of his hand he kills six billion people, leaving only the heroes in Kami-sama's sky palace alive...but for how long? Inside the palace, Goten and Trunks merge into Gotenks, the only being in the world who might match Boo in raw power. But luckily there's more than one world. On a faraway planet, Gohan and Goku are preparing for their turn to fight...to save the devastated earth before the planet itself is blown away!",
      release_date: "June 2nd 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1452.jpg"},

{
      title: "Dragon Ball, Vol. 10: Return to the Tournament",
      author: "Akira Toriyama",
      synopsis: "Goku needs just one more Dragon Ball to wish Upa's father back to life...but the Ball is in the hands of an old enemy! Then, Goku and his friends part ways, promising to meet again in three years at the Tenka'ichi Budôkai, the 'Strongest-Under-the-Heavens' Martial Arts Tournament. But this time the competition is stronger than ever: Tenshinhan and Chaozu, the deadly disciples of Tsuru-Sen'nin, the Crane Hermit! Will Kame-Sen'nin's turtle-style kung fu beat crane style? Or will their strange new opponents be triumphant?",
      release_date: "November 10th 1987",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1453.jpg"},

{
      title: "Dragon Ball Z, Vol. 7: The Ginyu Force",
      author: "Akira Toriyama",
      synopsis: "Trapped on war-torn Planet Namek, Earth's heroes Gohan, Kuririn and Bulma struggle to keep the Dragon Balls out of the hands of both Vegeta and the planet-destroying Emperor Freeza. But even a power-up courtesy of the Great Elder of Namek may not be enough to save them from Freeza's reinforcements: the Ginyu Force, the five strongest fighters in outer space, led by the supervillain Captain Ginyu! Desperate times call for desperate measures, and Gohan and Kuririn find themselves with an unlikely ally as their theatrical enemies ro-sham-bo for the honor of who gets to kill them first!",
      release_date: "October 8th 1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1454.jpg"},

{
      title: "Dragon Ball, Vol. 5: The Red Ribbon Army",
      author: "Akira Toriyama",
      synopsis: "In the final round of the 'Strongest under the Heavens' martial arts competition, it's down to Goku vs. Jackie Chun, the mysterious old man who's as powerful as Kame-Sen'nin himself! Will the audience survive the confrontation? After the smoke clears, Goku jumps on his flying cloud and returns to his quest to find the seven Dragon Balls, but now he's not the only one looking for them. The evil Red Ribbon Army wants the Dragon Balls for themselves, and to stop their plans, Goku must go around the world—and survive the six deadly floors of Colonel White's fortress, Muscle Tower!",
      release_date: "January 9th 1987",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1455.jpg"},

{
      title: "Dragon Ball Z, Vol. 20: The New Generation",
      author: "Akira Toriyama",
      synopsis: "Dragon Ball Z fast-forwards into the future! Years after the battle with Cell, the Earth has forgotten about the existence of the super warriors, and Gohan is living the life of a mild- mannered high school student. Mild-mannered until evil strikes,that is...and the world needs the power of the Great Saiyaman! As Gohan's high school classmates ponder the similarity between their classmate and the masked crimefighter, two even stronger warriors prepare to make their names known. Their names are Goten and Trunks, and though they're not even out of elementary school, they may be the toughest things on the planet.",
      release_date: "November 4th 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1456.jpg"},

{
      title: "Dragon Ball Z, Vol. 15: The Terror of Cell",
      author: "Akira Toriyama",
      synopsis: "Cell has been awakened--a bioengineered monstrosity designed to become the ultimate weapon, a being that eats whole cities to grow stronger. To stop its rampage, Piccolo challenges Cell while the Super Saiyans undergo unimaginable training in a room where one year passes for every day outside. But Cell's true goal is to merge with Androids #17 and #18, which will increase its strength exponentially. As Cell becomes even stronger, Piccolo has only one chance: destroy #17 and #18 before Cell can merge with them, or no force on earth will stand a chance!",
      release_date: "August 4th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1457.jpg"},

{
      title: "Dragon Ball Z, Vol. 19: Death of a Warrior",
      author: "Akira Toriyama",
      synopsis: "Awakening to his true power, the once meek Gohan pummels Cell, the former strongest being alive! But rather than suffer the indignity of defeat, Cell has a last desperate option--self-destruct and take the planet with him! Can the Saiyans and their allies save the world from being turned to ashes? With the death of six billion people only seconds away, Goku and Gohan--father and son--must fight together for the final blow...",
      release_date: "September 3rd 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1458.jpg"},

{
      title: "Dragon Ball Z, Vol. 6: Battlefield Namek",
      author: "Akira Toriyama",
      synopsis: "On the green skies and blue plains of Planet Namek, a war rages between two equally evil forces: Emperor Freeza, who wants to use Namek's Dragon Balls to become immortal, and Vegeta, last prince of the Saiyans, who has betrayed his former master in search of the same prize. Trapped between these two mighty enemies are the peaceful Namekians and Earth's heroes Kuririn, Gohan and Bulma! As Freeza's henchmen Dodoria and Zarbon trade blows with the ever-stronger Vegeta, the Earthlings put their own lives at risk to protect the Namekians until Son Goku's spaceship arrives. But can even Goku's new training regimen--under 20 times Earth's gravity--prepare him for what awaits on this alien world?",
      release_date: "July 10th 1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1459.jpg"},

{
      title: "Dragon Ball Z, Vol. 8: Goku vs. Ginyu",
      author: "Akira Toriyama",
      synopsis: "Forced to ally with Vegeta against their common enemy, Gohan and Kuririn fight desperately against Freeza's elite troops, the seemingly unstoppable Ginyu Force! But the tables may be turning as Son Goku finally arrives on Planet Namek, his strength and speed increased ten-fold by training under 100 times Earth's gravity! Could Goku have become the legendary 'Super Saiyan'!? And even if they defeat Captain Ginyu, can they prevent Freeza from wishing for immortality on the Dragon Balls--and Vegeta from betraying them and doing the same?",
      release_date: "January 10th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1460.jpg"},

{
      title: "Dragon Ball, Vol. 13: Piccolo Conquers the World",
      author: "Akira Toriyama",
      synopsis: "With a wish on the Dragon Balls, Piccolo restores his youth, becoming more powerful than ever! Flying to the palace of the King of the World, he announces that he is the new King, and broadcasts his reign of terror on international TV! Only Tenshinhan and Goku have a chance to stop Piccolo: Tenshinhan by mastering a martial arts move that can kill the one who uses it, and Goku by drinking a magic potion that might make him stronger--or kill him too! Two heroes risk death to save the planet--and meanwhile, Yajirobe eats too much and gets sick!",
      release_date: "June 10th 1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1461.jpg"},

{
      title: "Dragon Ball Z, Vol. 18: Gohan vs. Cell",
      author: "Akira Toriyama",
      synopsis: "The day of the Cell Game has come - the day when Earth's champions must compete to save the entire human race from destruction. All along, Cell has longed for a match with Goku, to crush the world's mightiest hero and establish its supremacy over all creation. Both of them have enough power flowing through their bodies to destroy the earth. But Goku knows something that Cell doesn't...he isn't the world's mightiest hero. That hero is Gohan, Goku's son...",
      release_date: "June 4th 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1462.jpg"},

{
      title: "Dragon Ball, Vol. 8: Taopaipai and Master Karin",
      author: "Akira Toriyama",
      synopsis: "Tired of losing their best operatives to Son Goku, the commanders of the Red Ribbon Army hire Taopaipai, the world's greatest assassin, to 'take care' of him permanently! To have a chance of defeating this new opponent, Goku must climb the miles-high Karin Tower, where a mysterious hermit guards a jug of magic water which will grant the one who drinks it super strength. And while Goku struggles to get the magic water, time is running out...because Commander Red only needs two more Dragon Balls to make his deepest, darkest wishes come true!",
      release_date: "July 10th 1987",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1463.jpg"},

{
      title: "Dragon Ball, Vol. 15: The Titanic Tournament",
      author: "Akira Toriyama",
      synopsis: "It's the 'Strongest Under the Heavens' martial arts tournament, and the world's greatest fighters have gathered! But Kuririn, Goku, Tenshinhan and Yamcha face mighty enemies. Taopaipai the assassin has returned as a cyborg--and Goku and Tenshinhan are on his hit list! A mysterious young woman has a grudge against Goku. The only 'mystery' about bumbling salaryman Shen is how he made it to the final rounds. And the last contestant is the new and improved Piccolo, for whom the championship is just a stepping stone to take over the world...",
      release_date: "December 6th 1988",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1464.jpg"},

{
      title: "Dragon Ball Z, Vol. 10: Goku vs. Freeza",
      author: "Akira Toriyama",
      synopsis: "As Freeza changes into new forms, each more powerful than the last, the desperate heroes--Gohan, Kuririn, Piccolo and the self-serving Vegeta--find themselves struggling merely to stay alive. Desperate for a trump card, Vegeta asks Kuririn to mortally wound him, so that his auto-evolving mechanism will turn him into the legendary strongest fighter in the universe--the Super Saiyan! On the other side of the planet, Goku awakens from within his healing capsule and streaks to the battlefield to turn the tide. But even in his final, supposedly deadliest form, Freeza has an ace up his sleeve...",
      release_date: "June 10th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1465.jpg"},

{
      title: "Dragon Ball Z, Vol. 26: Goodbye Dragon World!",
      author: "Akira Toriyama",
      synopsis: "The world's greatest heroes have fallen, absorbed by the ever more powerful Boo, who has slaughtered everyone on the planet. Only Goku remains alive to fight...but even his strength will not be enough, unless he uses the Fusion Earrings to permanently merge with another warrior! Who will he choose...and when the dust has cleared, who or what will he become? On earth, among the stars, and in Boo's body, the last battle rages!",
      release_date: "August 4th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1466.jpg"},

{
      title: "Dragon Ball Z, Vol. 21: Tournament of the Heavens",
      author: "Akira Toriyama",
      synopsis: "Earth's heroes have come out of retirement, and the audience at the Tenka'ichi Budokai - 'Strongest Under the Heavens' martial arts tournament - is about to see what real martial artists can do! While Trunks and Gohan tear up the Junior Division, Videl, the daughter of Earth's 'champion' Hercule, prepares to test her newfound kung fu skills (like flying). Meanwhile, the experienced heroes prepare for their turn to fight Goku, who has come back from the dead just for this one match! But Goku isn't the only otherworldly visitor. Two mysterious contestants have entered the tournament, wielding the power of the heavens...and they have a special mission in this world...",
      release_date: "April 4th 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1467.jpg"},

      [genres[0], genres[4], genres[1], genres[10]]
      ],
      [

{
      title: "Deadman Wonderland Volume 5",
      author: "Jinsei Kataoka",
      synopsis: "Ganta is about to be publicly executed by Rokuro when Senji intervenes and kills the Undertakers by attacking at supersonic speed. Meanwhile, Shiro is befriended by a mysterious boy named Toto. Ganta, tired of being helpless and weak, asks Senji to train him so he can help Karako and the Scar Chain as they decide to retry their escape plan after rescuing Nagi from Genkaku. Karako and the others escape, the data chip is delivered to their colleague in the inspection team, while Ganta decides to remain in Deadman Wonderland with Shiro.",
      release_date: "April 25th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1468.jpg"},

{
      title: "Deadman Wonderland Volume 4",
      author: "Jinsei Kataoka",
      synopsis: "Ten years have passed since the Great Tokyo Earthquake, and the people's memories of the disaster have faded. Ganta Igarashi, a middle school evacuee, has finally begun to live a normal life with his classmates. That is until the Red Man appears at school and Ganta's fate is changed forever.",
      release_date: "October 25th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1469.jpg"},

{
      title: "Deadman Wonderland Volume 7",
      author: "Jinsei Kataoka",
      synopsis: "Librarian Note: The English translation of this volume was cancelled due to Tokyopop closing its North American manga operations.",
      release_date: "January 26th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1470.jpg"},

{
      title: "Deadman Wonderland Volume 2",
      author: "Jinsei Kataoka",
      synopsis: "While on the hunt for the Red Man, Ganta is thrown into a battle exhibition called the Carnival of Corpses, in which he is matched up against the powerful Senji. The battle is intense, but even if Ganta wins, is he prepared for the consequences?",
      release_date: "December 26th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1471.jpg"},

{
      title: "Deadman Wonderland, Volume 1",
      author: "Jinsei Kataoka",
      synopsis: "Ten years have passed since the Great Tokyo Earthquake, and the people's memories of the disaster have faded. Ganta Igarashi, a middle school evacuee, has finally begun to live a normal life... that is, until the day 'Red Man' appears at his school and Ganta's fate is changed forever.",
      release_date: "September 26th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1472.jpg"},

{
      title: "Deadman Wonderland Volume 3",
      author: "Jinsei Kataoka",
      synopsis: "Ganta's desperate struggle for survival continues as the second round of the Carnival of Corpses kicks off, but when he is matched against Minatsuki, Ganta learns that his new friends are not what they seem - and it may cost him his life!",
      release_date: "May 26th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1473.jpg"},

      [genres[0], genres[7], genres[21], genres[5], genres[1], genres[20]]
      ],
      [

{
      title: "Monkey High!, Vol. 6",
      author: "Shouko Akira",
      synopsis: "A class trip to Kyoto brings fun and excitement for the Kita High gang--but mostly confusion for Haruna. Between getting separated from Macharu and dealing with Atsu's declaration of love for her, Haruna's heart is all aflutter. Is Atsu right about him being the better fit for her?",
      release_date: "March 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1474.jpg"},

{
      title: "Monkey High!, Vol. 5",
      author: "Shouko Akira",
      synopsis: "Haruna Aizawa thinks that school life is just like a monkey mountain--all the monkeys form cliques, get into fights, and get back together again. The school that she just transferred to is no exception. There's even a boy called Macharu Yamashita who reminds her of a baby monkey!Haruna and Macharu take to the stage once again when their class decides to do a rendition of Romeo and Juliet. Haruna's uneasy about acting in front of the entire school, especially since her father might show up for the performance. Will the play bring Haruna and Macharu closer together or end in absolute disaster?",
      release_date: "February 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1475.jpg"},

{
      title: "Monkey High!, Vol. 1",
      author: "Shouko Akira",
      synopsis: "After her political father is disgraced in scandal, Haruna Aizawa transfers to a new school...Haruna Aizawa thinks that school life is just like a monkey mountain - all the monkeys form cliques, get into fights, and get back together again. The school that she just transferred to is no exception. There's even a boy called Macharu(baby monkey) Yamashita [ actually named Masaru Yamashita ] who reminds her of a baby monkey!It's hard enough fitting in at a new school while dealing with family problems.... Will Haruna remain jaded and distance herself from everyone around her? Or will Macharu win her over with his monkey magic?",
      release_date: "September 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1476.jpg"},

{
      title: "Monkey High!, Vol. 2",
      author: "Shouko Akira",
      synopsis: "Shouko Akira is also the author of Times Two (a collection of five love stories), published by VIZ Media.• Betsucomi style art (rosy cheeks, cute, clean art) will appeal to Betsucomi enthusiasts• Previewed and promoted in VIZ Media’s Shojo Beat magazine.• Parents will love this squeaky-clean romance story. Think Archie Digests, or Saved by the Bell meets Veronica Mars.• Published in TaiwanAfter her politician father is disgraced in scandal, Haruna Aizawa transfers to a new school. Haruna is convinced that school life is like a monkey mountain—all the monkeys form cliques, get into fights, and get back together again. She even meets a boy named Masaru who reminds her of a baby monkey! Haruna and Macharu head off to the amusement park for their official first date! But how romantic is the date going to turn out with scary roller coasters, guys hitting on Haruna, and even rowdy classmates popping up?",
      release_date: "October 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1477.jpg"},

{
      title: "Monkey High!, Vol. 3",
      author: "Shouko Akira",
      synopsis: "Shouko Akira is also the author of Times Two (a collection of five love stories), published by VIZ Media.• Betsucomi style art (rosy cheeks, cute, clean art) will appeal to Betsucomi enthusiasts• Previewed and promoted in VIZ Media’s Shojo Beat magazine.• Parents will love this squeaky-clean romance story. Think Archie Digests, or Saved by the Bell meets Veronica Mars.• Published in TaiwanOn Valentine's Day, it's no surprise that playboy Atsu gets plenty of chocolates from fawning girls. But everyone's shocked when a heart-shaped box is found on Macharu's desk--especially since it's not from Haruna! Does Macharu have a secret admirer?",
      release_date: "November 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1478.jpg"},

{
      title: "Monkey High!, Vol. 7",
      author: "Shouko Akira",
      synopsis: "Different classes, college preparations, and a disapproving father all make it hard for Macharu and Haruna to be together. So when they win tickets for an overnight stay at a resort, it seems like a great chance for them to take their relationship to the next level...",
      release_date: "July 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1479.jpg"},

{
      title: "Monkey High!, Vol. 4",
      author: "Shouko Akira",
      synopsis: "Haruna is convinced that school life is like a monkey mountain—all the monkeys form cliques, get into fights, and get back together again.Macharu's best friend Atsu is really starting to fall for Haruna, especially since she's been working at the same place he works and they've been spending more and more time together. With a jealous Macharu waiting and a persistent Atsu pursuing, who is Haruna going to choose in this bizarre love triangle?After her politician father is disgraced in scandal, Haruna Aizawa transfers to a new school. Haruna is convinced that school life is just like a monkey mountain--all the monkeys form cliques, get into fights, and get back together again. She even meets a boy named Masaru who reminds her of a baby monkey!",
      release_date: "January 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1480.jpg"},

{
      title: "Monkey High!, Vol. 8",
      author: "Shouko Akira",
      synopsis: "Going bananas for love!; like  meets   Talk of a future engagement between Haruna and her father's right-hand man puts a damper on Haruna and Macharu's relationship. Macharu fights back in a way only he knows how--by having Haruna live with him! Will monkey love conquer all? Haruna Aizawa thinks that school life is just like a monkey mountain--all the monkeys form cliques, get into fights, and get back together again. The school that she just transferred to is no exception. There's even a boy called Macharu Yamashita who reminds her of a baby monkey!",
      release_date: "August 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1481.jpg"},

      [genres[13], genres[14], genres[15]]
      ],
      [

{
      title: "Rosario+Vampire, Vol. 10",
      author: "Akihisa Ikeda",
      synopsis: "All-around average teenager Tsukune can't get accepted to any high school save one...but on his first day, he finds the  of the student body doesn't appear average in the least. Best of all, the cutest girl on campus can't wait to fling her arms around his neck! Wait a sec'--are those her teeth around his neck too...? Tsukune's going to have one heck of a hickey when he gets home from Monster High! But does he have a chance in H-E-double-hockey-sticks of raising his grades at a school where the turf war isn't between the jocks and the nerds but the vampires and the werewolves?",
      release_date: "October 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1482.jpg"},

{
      title: "Rosario+Vampire, Vol. 7",
      author: "Akihisa Ikeda",
      synopsis: "All-around average teenager Tsukune can't get accepted to any high school save one...but on his first day he finds the rest of the student body doesn't appear average in the least. Best of all, the cutest girl on campus can't wait to fling her arms around his neck! Wait a sec'--are those her teeth around his neck too...? Tsukune's going to have one heck of a hickey when he gets home from Monster High! But does he have a chance in H E double hockey sticks of raising his grades at a school where the turf war isn't between the jocks and the nerds but the vampires and the werewolves?",
      release_date: "October 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1483.jpg"},

{
      title: "Rosario+Vampire, Vol. 6",
      author: "Akihisa Ikeda",
      synopsis: "All-around average teenager Tsukune can't get accepted to any high school save one...but on his first day he finds the rest of the student body doesn't appear average in the least. Best of all, the cutest girl on campus can't wait to fling her arms around his neck! Wait a sec'--are those her teeth around his neck too...? Tsukune's going to have one heck of a hickey when he gets home from Monster High! But does he have a chance in H E double hockey sticks of raising his grades at a school where the turf war isn't between the jocks and the nerds but the vampires and the werewolves?",
      release_date: "June 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1484.jpg"},

{
      title: "Rosario+Vampire, Vol. 3",
      author: "Akihisa Ikeda",
      synopsis: "All-around average teenager Tsukune can't get accepted to any high school save one...but on his first day he finds the rest of the student body doesn't appear average in the least. Best of all, the cutest girl on campus can't wait to fling her arms around his neck! Wait a sec'--are those her teeth around his neck too...? Tsukune's going to have one heck of a hickey when he gets home from Monster High! But does he have a chance in H E double hockey sticks of raising his grades at a school where the turf war isn't between the jocks and the nerds but the vampires and the werewolves?",
      release_date: "June 3rd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1485.jpg"},

{
      title: "Rosario+Vampire, Vol. 2",
      author: "Akihisa Ikeda",
      synopsis: "All-around average teenager Tsukune can't get accepted to any high school save one...but on his first day, he finds the rest of the student body doesn't appear average in the least. Best of all, the cutest girl on campus can't wait to fling her arms around his neck! Wait a sec'--are those her teeth around his neck too...? Tsukune's going to have one heck of a hickey when he gets home from Monster High! But does he have a chance in H-E-double-hockey-sticks of raising his grades at a school where the turf war isn't between the jocks and the nerds but the vampires and the werewolves?",
      release_date: "February 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1486.jpg"},

{
      title: "Rosario+Vampire, Vol. 5",
      author: "Akihisa Ikeda",
      synopsis: "All-around average teenager Tsukune can't get accepted to any high school save one...but on his first day he finds the rest of the student body doesn't appear average in the least. Best of all, the cutest girl on campus can't wait to fling her arms around his neck! Wait a sec'--are those her teeth around his neck too...? Tsukune's going to have one heck of a hickey when he gets home from Monster High! But does he have a chance in H E double hockey sticks of raising his grades at a school where the turf war isn't between the jocks and the nerds but the vampires and the werewolves?",
      release_date: "February 3rd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1487.jpg"},

{
      title: "Rosario+Vampire, Vol. 1",
      author: "Akihisa Ikeda",
      synopsis: "All-around average teenager Tsukune can't get accepted to any high school save one...but on his first day, he finds the rest of the student body doesn't appear average in the least. Best of all, the cutest girl on campus can't wait to fling her arms around his neck! Wait a sec'--are those her teeth around his neck too...? Tsukune's going to have one heck of a hickey when he gets home from Monster High! But does he have a chance in H-E-double-hockey-sticks of raising his grades at a school where the turf war isn't between the jocks and the nerds but the vampires and the werewolves?",
      release_date: "October 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1488.jpg"},

{
      title: "Rosario+Vampire, Vol. 8",
      author: "Akihisa Ikeda",
      synopsis: "All-around average teenager Tsukune can't get accepted to any high school save one...but on his first day he finds the rest of the student body doesn't appear average in the least. Best of all, the cutest girl on campus can't wait to fling her arms around his neck! Wait a sec'--are those her teeth around his neck too...? Tsukune's going to have one heck of a hickey when he gets home from Monster High! But does he have a chance in H E double hockey sticks of raising his grades at a school where the turf war isn't between the jocks and the nerds but the vampires and the werewolves?",
      release_date: "February 2nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1489.jpg"},

{
      title: "Rosario+Vampire, Vol. 4",
      author: "Akihisa Ikeda",
      synopsis: "All-around average teenager Tsukune can't get accepted to any high school save one...but on his first day he finds the rest of the student body doesn't appear average in the least. Best of all, the cutest girl on campus can't wait to fling her arms around his neck! Wait a sec'--are those her teeth around his neck too...? Tsukune's going to have one heck of a hickey when he gets home from Monster High! But does he have a chance in H E double hockey sticks of raising his grades at a school where the turf war isn't between the jocks and the nerds but the vampires and the werewolves?",
      release_date: "October 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1490.jpg"},

      [genres[13], genres[14], genres[15], genres[18], genres[22]]
      ],
      [

{
      title: "Fruits Basket, Vol. 19",
      author: "Natsuki Takaya",
      synopsis: "As the  saga continues, the relationship between Tohru and Kyo becomes increasingly complicated, especially since most of the members of the Zodiac seem to look down on him. Tohru comes to the realization that if she wants to save Kyo, she'll have to create some sort of trigger to break his curse. But what, if anything, can cure Kyo? The answer is right inside this next volume of the super-popular !",
      release_date: "January 1st 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1491.jpg"},

{
      title: "Fruits Basket, Vol. 14",
      author: "Natsuki Takaya",
      synopsis: "Isuzu loves snooping through Shigure's life, especially when she's totally convinced that he is hiding something. But when Tohru finds a passed-out Isuzu in the house, she tries to drag Isuzu to the hospital. Meanwhile, Yuki goes to the ASB student council room only to find it trashed again! But as the secrets of who vandalized the room come out of the closet, Yuki accidentally gets locked in one. Who will be the one to help him get out? The answer is right inside this next volume of the super-popular , the world's most popular shojo manga!",
      release_date: "April 19th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1492.jpg"},

{
      title: "Fruits Basket, Vol. 20",
      author: "Natsuki Takaya",
      synopsis: "Kagura and Kazuma hotly discuss Tohru liking Kyo. With Kagura's forceful encouragement, will Tohru be able to muster up the courage to tell Kyo how she feels? Meanwhile, Ren is determined to get her hands on Akito's mystery box--even if it means killing for it!",
      release_date: "2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1493.jpg"},

{
      title: "Fruits Basket, Vol. 3",
      author: "Natsuki Takaya",
      synopsis: "A family with an ancient curse...And the girl who will change their lives forever...It's Valentines Day and you know what that means - lots of chocolates for the cutest boys at school! In this case, it's a pretty close tie between hot-headed Kyo Sohma and 'Prince Charming' Yuki Sohma. Of course the kind-hearted Tohru, guest of the Sohma family, has chocolates for everyone! But when White Day comes around, what will the Sohma family give her in return?",
      release_date: "September 17th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1494.jpg"},

{
      title: "Fruits Basket, Vol. 7",
      author: "Natsuki Takaya",
      synopsis: "Tohru and company have been having a lot more fun ever since Kisa came to visit. Now it's time for Tohru to meet another member of the Zodiac - the skillfully sarcastic grade-school student, Hiro! One way or another, this tyke will have to deal with his resentment of Tohru and his affection for Kisa. Where will he find the answers? In the fabulous 7th volume of the super-popular Fruits Basket, of course!",
      release_date: "August 17th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1495.jpg"},

{
      title: "Fruits Basket, Vol. 17",
      author: "Natsuki Takaya",
      synopsis: "Akito has more than skeletons hiding in the closet--the curse, dear reader, is not the only reason Kureno won't leave Akito. And who can make Arisa understand Kureno's devotion to Akito? Graduation is approaching, so everyone needs answers!",
      release_date: "May 19th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1496.jpg"},

{
      title: "Fruits Basket, Vol. 21",
      author: "Natsuki Takaya",
      synopsis: "Kyo finishes telling Tohru about his role in her mother's death and how the reason he disappeared for so long was because he felt so guilty about it. He explains that he overcame his guilt by blaming everything on Yuki, but he now realizes that he was only running away from his own feelings. But how will he feel when Tohru says that she still loves him anyway?",
      release_date: "September 19th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1497.jpg"},

{
      title: "Fruits Basket, Vol. 2",
      author: "Natsuki Takaya",
      synopsis: "A family with an ancient curse...And the girl who will change their lives forever...Ever since Tohru Honda discovered the Zodiac secret of the Sohma clan, her eyes have opened to a world of magic and wonder. But with such a great secret comes great responsibility. When her best friends Hana-chan and Uo-chan come to the Sohma home for a sleepover, Tohru has her work cut out for her keeping the 'Cat' in the bag and the 'Dog' on a leash.",
      release_date: "June 18th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1498.jpg"},

{
      title: "Fruits Basket, Vol. 4",
      author: "Natsuki Takaya",
      synopsis: "When the infamous Akito makes an in-class appearance at the start of the school year, the Sohma family worries that his arrival will be an uncensored exercise of show-and-tell about Yuki's past. Meanwhile, when Ayame vows to rekindle his brother's lost friendship, he begins to realize that you can choose your friends but you can't choose your family - especially when they're acting like animals!",
      release_date: "January 19th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1500.jpg"},

{
      title: "Fruits Basket, Vol. 16",
      author: "Natsuki Takaya",
      synopsis: "A new chapter is opened in the Sohma family's story--and the rumors are true! Kyo has indeed met Kyoko in the past...and when he did, she told him the story of how she met Tohru's father, which he then tells to us: Tohru's birth...the truth about her mother and father...Yuki's declaration of independence...Grab your best friend and get ready for the New Year's Eve Ball--everything you've been waiting to know is right inside the next volume of the super-popular , the world's #1 shojo manga!",
      release_date: "January 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1501.jpg"},

{
      title: "Fruits Basket, Vol. 11",
      author: "Natsuki Takaya",
      synopsis: "The world's most popular shojo manga continues! While at the Sohma vacation home, Tohru is caught in a whirlwind of family strife. Can she relax and put the 'fun' in dysfunctional? None of the Sohmas are going to make it easy, including an angry horse that attacks Tohru. Could this be a new member of the Zodiac? Meanwhile, in a fierce argument with Akito, Kyo reveals his true feelings for Tohru. Will Akito tell Tohru about Kyo's secret crush? And speaking of secrets, Akito makes a major announcement--one that will reveal his true identity and change the Sohma family forever!",
      release_date: "February 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1502.jpg"},

{
      title: "Fruits Basket, Vol. 1",
      author: "Natsuki Takaya",
      synopsis: "A family with an ancient curse...And the girl who will change their lives forever...Tohru Honda was an orphan with no place to go until the mysterious Sohma family offered her a place to call home. Now her ordinary high school life is turned upside down as she's introduced to the Sohma's world of magical curses and family secrets.",
      release_date: "January 1st 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1503.jpg"},

{
      title: "Fruits Basket, Vol. 9",
      author: "Natsuki Takaya",
      synopsis: "Finally--summer has arrived! While Tohru struggles through bipolar days of hope and anxiety, what will happen when Yuki comes face-to-face with the new member of the student council? Meanwhile, who is that Uo-chan's hanging out with? Is she c-r-a-z-y in love? In a bonus feature, Hana-chan's past is finally disclosed!",
      release_date: "June 19th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1504.jpg"},

{
      title: "Fruits Basket: Banquet",
      author: "Natsuki Takaya",
      synopsis: "Helps you to find out what you ever wanted to know about the world of Fruits Basket. This title features character profiles, color illustrations, quizzes, stickers, and behind-the-scenes with Takaya-sensei.",
      release_date: "January 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1505.jpg"},

{
      title: "Fruits Basket, Vol. 12",
      author: "Natsuki Takaya",
      synopsis: "With the beginning of the school year approaching, the gang returns from summer break--and what a vacation indeed! A new student council has been assembled, with two new secretaries: Naohito, who has declared himself Yuki's rival, and Kimi, who is known as a devil woman--and a thief of men's hearts. Later, when Tohru goes to see her grandfather, he brings up a part of Tohru's past that she had tried to shut away. And with a parent-teacher conference on the horizon, Mayuko gives Shigure some good advice.",
      release_date: "June 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1506.jpg"},

{
      title: "Fruits Basket, Vol. 6",
      author: "Natsuki Takaya",
      synopsis: "Delving into the recesses of Kyo's past, we find the Sohma trio returning home on a rainy day. There, a mysterious man who has known Kyo for a long time meets them. Trust, loyalty and the bonds of family and friendship are tested, as Tohru must help Kyo deal with the 'monsters' that he's been trying to avoid.",
      release_date: "August 18th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1507.jpg"},

{
      title: "Fruits Basket, Vol. 5",
      author: "Natsuki Takaya",
      synopsis: "For a springtime treat, Shigure arranges for Tohru and the gang to spend Golden Week at the Sohmas' vacation home. On a rainy day, as the holiday draws to a close, who should make a surprise visit but Hatsuharu! But what's that he's hiding in the bundle under his arm?",
      release_date: "April 19th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1508.jpg"},

{
      title: "Fruits Basket, Vol. 15",
      author: "Natsuki Takaya",
      synopsis: "Yuki's past finally is revealed! But is it all too much to bear? His sickness takes a turn for the worse, and after Akito reminds Yuki how loathed he is, his will to live might finally be drained... Meanwhile, as Tohru is getting ready to perform in , the class decides that they have to rewrite the play. But no amount of revision will prevent Tohru from improvising her loving feelings for a certain someone. Just who is the mystery man? A little bird tells us that the answer is right inside this next volume of the super-popular , the world's #1 shojo manga!",
      release_date: "September 17th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1509.jpg"},

{
      title: "Fruits Basket Fan Book -Cat-",
      author: "Natsuki Takaya",
      synopsis: "This is THE book for all Furuba fans!In this volume, find out everything you ever wanted to know about the world of ! Filled with character profiles, color illustrations, quizzes, stickers, behind-the-scenes with Takaya-sensei, and story recaps through volume 17, this must have collection also includes a short previously unpublished manga featuring Ritsu and Mitchan. Don't miss out on all the Furuba fun!",
      release_date: "May 19th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1510.jpg"},

{
      title: "Fruits Basket, Vol. 13",
      author: "Natsuki Takaya",
      synopsis: "The number one manga in America continues!The time for Yuki's parent-teacher conference has finally arrived, and Yuki must learn how to make his own decisions if he wants to have a say about his future. Later, Tohru sets off on a quest to find out if Kureno Sohma is the same person Arisa has been in love with all this time. But along the way she will discover a tragic secret about Momiji's sister Momo...",
      release_date: "November 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1511.jpg"},

{
      title: "Fruits Basket, Vol. 10",
      author: "Natsuki Takaya",
      synopsis: "The world's number one shojo manga continues, as Tohru and the Sohmas spend time at the Sohma's summerhouse. Alas, it's not all fun in the sun on this little trip. Akito pays a surprise visit, causing a commotion for the rest of the family. Shigure takes a stroll down memory lane with an old friend, remembering the days when Hatori wasn't so aloof. Meanwhile, Tohru begins to wonder: What must life be like for the loved ones of a cursed member of the Sohma family? Can life with this family truly be happy while bearing such a burden?",
      release_date: "October 18th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1512.jpg"},

{
      title: "Fruits Basket, Vol. 18",
      author: "Natsuki Takaya",
      synopsis: "As rumors swirl about Machi trying to kill her little brother, Kakeru figures that the only person who can get the truth out of her is Yuki. But when the two of them visit her, they learn a shocking secret. Later, Motoko wants to tell Yuki her feelings before she graduates and leaves the school--and him--forever. But will their parting be such sweet sorrow?",
      release_date: "September 16th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1513.jpg"},

{
      title: "Fruits Basket, Vol. 8",
      author: "Natsuki Takaya",
      synopsis: "Summer is on its way, so of course Tohru and friends are excited about the upcoming vacation and field trip. But what's that sound? It's Hatsuharu going beserk in the classroom... again! Black Haru is full of more rage than usual, so what will happen when Yuki intervenes? Meanwhile, Ritsu of the Sohma's hot spring resort shows up...but what's with her appearance?",
      release_date: "January 18th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1514.jpg"},

      [genres[14], genres[7], genres[13], genres[15], genres[18]]
      ],
      [

{
      title: "Yana Toboso Artworks Black Butler 2",
      author: "Yana Toboso",
      synopsis: "Black is a shade of many colors, and nowhere is this more apparent than in the work of New York Times-bestselling author Yana Toboso, whose Black Butler series has captured imaginations of fans all around the world! This second collection of her artwork contains over 120 illustrations, many of them key images in full colour, and covers everything from the Black Butler manga's Phantomhive Manor murder mystery and luxury liner arcs to game and anime adaptations of the series! And once again, this second artbook is presented as a deluxe beribboned hardcover to match Toboso's exquisite art within!",
      release_date: "May 27th 2015",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1515.jpg"},

{
      title: "Yana Toboso Artworks: Black Butler 1",
      author: "Yana Toboso",
      synopsis: "In this first-ever full-color illustration collection by manga artist Yana Toboso, the New York Times bestselling manga series Black Butler comes to vivid life. Starting at the beginning of the tale of Earl Ciel Phantomhive and his inimitable butler, Sebastian, the collection focuses on the series through the immensely popular Circus Arc. In addition to these glorious color cuts are illustrations from her debut work, Rust Blaster, as well as promotional art from Black Butler and the artist's own tribute illustrations for other popular manga series. As anyone picking up this gorgeous beribboned hardcover tome will realise, black is a colour of many facets, indeed!",
      release_date: "January 18th 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1516.jpg"},

{
      title: "Black Butler, Vol. 4",
      author: "Yana Toboso",
      synopsis: "London - the capital of the Great Empire - is once again under siege, as a string of bizarre attacks on British citizens returned from India sends rumours flying and casts a pall upon Queen Victoria's rule. Sent in by Her Majesty, young Earl Phantomhive and his most capable butler, Sebastian, follow a trail that collides head-on with an Indian youth who claims to be a prince. And this prince possesses an extraordinary butler of his own! As an intense rivalry between the two butlers begins to form, will the kitchen be the dueling duo's final battleground?!",
      release_date: "May 27th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1517.jpg"},

{
      title: "Black Butler, Vol. 19",
      author: "Yana Toboso",
      synopsis: "In accordance with the wishes of Queen Victoria, young Earl Ciel Phantomhive embarks on a jaunt to Germany with his elite butler, Sebastian, in tow. Gruesome and mysterious deaths are occurring on the continent, and along with the fear of contagion that permeates the air there are also rumors of witches and werewolves running amok. When Ciel's party heads right into the heart of a cursed forest where supernatural creatures are said to dwell, they run straight into a witch! In fact, several of them! And the village head is none other than a little girl who appears as though she's stepped out of a fairy tale?!",
      release_date: "June 27th 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1518.jpg"},

{
      title: "Black Butler, Vol. 16",
      author: "Yana Toboso",
      synopsis: "Earl Ciel Phantomhive and his invincible butler Sebastian may have succeeded in sneaking their way into the elite Weston College, but their investigation quickly hits a wall. To earn an audience with the headmaster, Ciel's only option is to attend the 'Midnight Tea Party,' an exclusive gathering hosted by the elusive head of the school. And the only way a lowly first-former like Ciel, earl or no, can land a seat at that table is by being elected the Most Valuable Player in the College's annual storied cricket tournament. Selected from each house, students in the springtime of youth battle it out among the wickets on the spring-green lawn. Will the usually unperturbed young earl be bowled over by this unexpected turn of events?!",
      release_date: "March 27th 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1519.jpg"},

{
      title: "Black Butler, Vol. 1",
      author: "Yana Toboso",
      synopsis: "In the Victorian ages of London The Earl of the Phantomhive house, Ciel Phantomhive, needs to get his revenge on those who had humiliated him and destroyed what he loved. Not being able to do it alone he sells his soul to a demon he names Sebastian Michaelis. Now working as his butler, Sebastian must help the Earl Phantomhive in this suspenseful, exciting, thriller manga.",
      release_date: "February 27th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1520.jpg"},

{
      title: "Black Butler, Vol. 2",
      author: "Yana Toboso",
      synopsis: "As high society's social calendar opens up and the Season draws to a close, London is gripped by fear. Someone has taken to stalking women of the night and painting the town red...in their blood. The name on everyone's lips seems to be 'Jack the Ripper' - and as a result, the name on Queen Victoria's lips is Phantomhive. Summoned to London to clean up the mess created by this madman, Ciel Phantomhive arrives with Sebastian, his extraordinary butler, at his side to pour him tea, polish his silver, and...investigate a serial killer. And with the aid (and occasional interference) of a few of the Phantomhive house's numerous acquaintances, little stands in the way of the young earl getting to the bottom of this mystery. However, one question remains...can he handle the shattering truth behind it?",
      release_date: "July 27th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1521.jpg"},

      [genres[0], genres[7], genres[4], genres[9], genres[18]]
      ],
      [

{
      title: "Highschool of the Dead, Vol. 5",
      author: "Daisuke Sato",
      synopsis: "Takashi and his fellow students join up with a band of survivors who have barricaded themselves inside a local mall. Though the shopping center seems a well-stocked place to hide from the undead lurking outside, the policewoman in charge is having a hard time maintaining peace within. The group from Fujimi High would rather not get involved in a power struggle and tries to stay under the radar until they are ready to set off again. But with so many attractive, buxom girls among the students, it may be nearly impossible to avoid unwanted attention of the worst kind...",
      release_date: "January 1st 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1522.jpg"},

{
      title: "Highschool of the Dead, Vol. 7",
      author: "Daisuke Sato",
      synopsis: "Once again, Takashi and his friends are without shelter and on the run. The group gradually makes their way to the local police station, where the hungry officers within give a whole new meaning to the phrase 'police brutality.' After tidying up, the team reloads and begins their search of the station: Rei for news of her father, and Saya for information. There may be one last chance for them to get out of town, but with Rei and Takashi's parents still unaccounted for and a throng of undead standing between them and freedom, will the friends be able to make it in time?!",
      release_date: "May 6th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1523.jpg"},

{
      title: "Highschool of the Dead, Vol. 6",
      author: "Daisuke Sato",
      synopsis: "As the mall refugees grow restless, Takashi and his comrades make plans to leave before Officer Asami's authority slides further and the group's order is completely undone. Unfortunately, just as final preparations for their departure are nearly complete, the mall's defenses are breached, and 'they' come streaming in. Asami joins the Fujimi High students as they battle their way toward the exit, while the rest of the group seeks refuge on the roof. Their fortress has become a trap - can anyone hope to escape the mall of the dead?!",
      release_date: "January 1st 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1524.jpg"},

{
      title: "Highschool of the Dead, Vol. 4",
      author: "Daisuke Sato",
      synopsis: "As fear becomes the norm and people begin to process what has happened, questions of authority and outcries against violence toward 'them' - the zombie-like victims of the 'Murder Syndrome' - cause dissent among those not affected. However, trapped in the airport with thousands of flesh-hungry undead, Rika and her partner have no choice but to use every weapon in their arsenal if they want to make it to safety. But with neighbor turning on neighbor, nation turning against nation, is anywhere really safe anymore?",
      release_date: "January 1st 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1525.jpg"},

      [genres[0], genres[21]]
      ],
      [
{
      title: "Museum of Terror, Vol. 3",
      author: "Junji Ito",
      synopsis: "Museum of Terror volumes one and two introduced readers to the horrific, beautiful creature Tomie... the woman no man could resist. Now Junji Ito, creator and curator of this horrible museum, brings a new type of exhibit to thrill and chill your senses First, his lovely violinists will escort you to dinner in a vampire den. Next, in a classroom full of grotesquely masked students, which one is a demon in disguise? A musician's possessed arm attacks a schoolgirl by way of his mouth, and another young man listens to the tape recording left behind by a suicide victim. Why did she kill herself, and is he safe from its influence? Swordplay, monk-ridden ruins, halls of upright corpses, infectious radio broadcasts, and murderous ceiling hair are among Ito's beastly offerings in this volume Find out why Junji Ito is Japan's foremost creator of horror manga",
      release_date: "January 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1526.jpg"},

{
      title: "Museum of Terror, Vol. 2: Tomie 2",
      author: "Junji Ito",
      synopsis: "Think you've seen about all there is in horror? Maybe the same tired concepts of phones ringing and mysterious murders is getting a bit old. Well, then I've got the horror manga for you Junji Ito, the man who brought the world Uzumaki, has one of the most inspired minds in horror today. That's why Dark Horse manga is proud to bring you more from Ito's Museum of Terror series. Continuing with his 'Makie' stories, about an eternally youthful and perfectly beautiful girl who inpires people committ murder, volume two promises to invent new ways to shock you. For instance, who'd have thought of making sake out of the remains of the killed and hammered-to-mush Makie? See? It's crazy. Junji Ito promises to entertain you in the most cracked, yet pretty ways.",
      release_date: "November 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1527.jpg"},

{
      title: "Museum of Terror, Vol. 1: Tomie 1",
      author: "Junji Ito",
      synopsis: "Dark Horse Comics is very proud to present Museum of Terror, a series of horror stories by Japan's foremost creator of horror manga. Full of compelling and charming characters and relationships, and featuring some of the finest comics art available, Junji Ito has seen his works translated into successful films in Japan. Ito's Uzumaki, the thrilling and grotesque manga and film, has already found success in America, and now we present 'Tomie,' the first story in this fantastic series. 'Tomie' is the story of an eternally youthful and beautiful high school girl, whose admirers are obsessed to the point of murdering her. But to their horror, she is reincarnated over and over. 'Tomie' also became a popular film in Japan, and now it launches Dark Horse's series of Ito's horrific works, Museum of Terror.",
      release_date: "October 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1528.jpg"},

      [genres[21]]
      ],
      [
{
      title: "Skip Beat!, Vol. 04",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!",
      release_date: "July 18th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1529.jpg"},

{
      title: "Skip Beat!, Vol. 19",
      author: "Yoshiki Nakamura",
      synopsis: "Show biz is sweet, but revenge is sweeter! R to L (Japanese Style). Koo and Lory can't stop meddling in Kyoko's and Ren's lives. Because while Koo is impressed with Kyoko's talent, he knows that she will never be a great actress unless she can overcome her fatal weakness. And Lory knows that Ren's acting is likewise affected by his refusal to face his past. Can the two old-timers give their young protégés a much-needed kick in the pants, or will their plans blow up in their faces?! Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!",
      release_date: "July 17th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1530.jpg"},

{
      title: "Skip Beat!, Vol. 16",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!Saving Kyoko from Reino's attack has finally knocked some sense into Sho's head, and he realizes how much he cares for her. But before he can declare his devotion, Ren shows up to ruin the moment. Both men realize that Kyoko has no idea of their true feelings for her and begin a secret battle for her affections!Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!",
      release_date: "June 19th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1531.jpg"},

{
      title: "Skip Beat!, Vol. 24",
      author: "Yoshiki Nakamura",
      synopsis: "Show biz is sweet, but revenge is sweeter! Valentine’s Day is on its way, but Kyoko won’t be able to celebrate love and friendship the normal way. She’s getting blackmailed into giving chocolate to guys she hates, she has her ongoing revenge to oblige, and to top it all off, it’s Ren’s birthday! How can Kyoko give him a meaningful present when she’s slinging meaningless chocolate left and right?",
      release_date: "February 19th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1532.jpg"},

{
      title: "Skip Beat!, Vol. 21",
      author: "Yoshiki Nakamura",
      synopsis: "Show biz is sweet, but revenge is sweeter! ",
      release_date: "February 19th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1533.jpg"},

{
      title: "Skip Beat!, Vol. 03",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko is determined to win her way into show business, even if it means wearing embarrassing bright pink overalls and putting up with spoiled stars. But her first big assignment is proving more difficult than she imagined when Kyoko finds herself in front of the camera with an injured leg. Will she be able to ace her first attempt at acting despite the pain, or will she make an utter fool of herself in front of her sort-of nemesis, Ren Tsugura?",
      release_date: "March 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1534.jpg"},

{
      title: "Skip Beat!, Vol. 11",
      author: "Yoshiki Nakamura",
      synopsis: "There's trouble on the set, and surprisingly it's not Kyoko's fault. Ren is having difficulty acting the part of a love-struck suitor since he's never really been in love before. Stressed by his sudden acting impotence, Ren goes MIA. Kyoko is determined to help her friend, and joins forces with Ren's manager. But as Ren sees the two of them getting close, he realizes he might know more about serious emotion than he thought!",
      release_date: "October 19th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1535.jpg"},

{
      title: "Skip Beat!, Vol. 17",
      author: "Yoshiki Nakamura",
      synopsis: "R to L (Japanese Style)Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!Dark Moon is getting excellent ratings, and Kyoko is getting tons of offers for more acting jobs! But all the offers are for twisted, damaged characters like Mio. Kyoko doesn't want to get stuck as a character actor, and she certainly doesn't want to play freaks for the rest of her career. But if she refuses all these jobs, will she even have a career left?!",
      release_date: "October 19th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1536.jpg"},

{
      title: "Skip Beat!, Vol. 23",
      author: "Yoshiki Nakamura",
      synopsis: "Show biz is sweet, but revenge is sweeter! Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!Chiori’s rage threatens the whole production when she lashes out and hurts Kyoko. Kyoko is used to overcoming obstacles, and she uses her injury as an excuse to push Chiori into exploring her acting. But Chiori has a traumatic past. Will focusing on the dark side of her character bring it all rushing back?!",
      release_date: "October 19th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1537.jpg"},

{
      title: "Skip Beat!, Vol. 28",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!Kyoko’ s having trouble getting into the role of Cain’ s sister. But is it because she can’ t relate to a spoiled punk princess, or because she can’ t let go of the fact that Ren is playing Cain? And Ren faces his own challenge with the situation. Can he stand to have the woman he loves treat him like a brother?",
      release_date: "June 20th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1538.jpg"},

{
      title: "Skip Beat!, Vol. 26",
      author: "Yoshiki Nakamura",
      synopsis: "Show biz is sweet, but revenge is sweeter! Kyoko thinks she's survived Valentine's Day, but that's just the kind of attitude that gets her in trouble with the president of LME. Lory is very disappointed in the girls of the Love Me Section and sets up special new assignments to teach them the power of love. But will the president's strange methods have any affect on the troubled souls of Chiori, Moko and Kyoko?",
      release_date: "October 19th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1539.jpg"},

{
      title: "Skip Beat!, Vol. 12",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko's determination to help Ren continues as she lends a friendly ear--in her chicken suit. Ren opens up and confides in Chicken Bo, but is Kyoko really ready to deal with his lovelorn confession? To make matters worse, Ren's been given an ultimatum by the LME president, and if he can't act right by the end of the week, he's out on his ear!",
      release_date: "February 17th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1540.jpg"},

{
      title: "Skip Beat!, Vol. 35",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!Kyoko is on the tropical paradise of Guam, and in true fairy-tale fashion, she encounters a magical creature emerging from the sea! She even recognizes him as Corn, a beloved friend from her childhood whose gift of an enchanted stone has helped her deal with the trauma in her life. But Corn is actually Kuon, who is actually Ren Tsuruga! And it’s only a matter of time before Kyoko’s brilliant ability to see through Ren’s disguises breaks his cover…for good!",
      release_date: "September 19th 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1541.jpg"},

{
      title: "Skip Beat!, Vol. 13",
      author: "Yoshiki Nakamura",
      synopsis: "• An ongoing manga series in Japan—over 14 volumes to date• Consistent ranking in Japan’s Top 10 manga sales• An American Idol-style manga• Every new volume has appeared in Japan’s Tohan Top 1• Previewed and promoted in VIZ Media’s Shojo Beat magazine• Released Bi-monthly (every other month).Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz! Ren's acting test is about to begin, with his entire future hanging in the balance, and he's managed to make his leading lady Itsumi mad at him. Rather than confront him directly, Itsumi decides to hit him where it hurts. Will she sabotage his test, or will Ren be able to get it together and use his legendary acting ability to lead her through the scene?",
      release_date: "June 19th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1542.jpg"},

{
      title: "Skip Beat!, Vol. 18",
      author: "Yoshiki Nakamura",
      synopsis: "R to L (Japanese Style)Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!Kyoko hasn't had a Love Me Section job in a while, and this newest assignment is pushing her limits. She's now the personal assistant to Koo Hizuri, a Japanese actor turned Hollywood star, and everyone knows how assistants are treated in Hollywood! Can Kyoko see past Koo's meanness, or will his nastiness just make her demons worse?!",
      release_date: "February 19th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1543.jpg"},

{
      title: "Skip Beat!, Vol. 20",
      author: "Yoshiki Nakamura",
      synopsis: "Show biz is sweet, but revenge is sweeter!R to L (Japanese Style). Show biz is sweet, but revenge is sweeter! It's the season of giving in Tokyo, but Lory's granddaughter Maria is in no mood to celebrate. Kyoko, never one to sit out a challenge, finally gets Maria to admit what has her so soured on the holidays. It turns out December 24th is Maria's birthday--and the anniversary of her mother's death! Can Kyoko work a Christmas miracle and give this little girl a happy birthday?",
      release_date: "October 17th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1544.jpg"},

{
      title: "Skip Beat!, Vol. 06",
      author: "Yoshiki Nakamura",
      synopsis: "Superstar Ren's manager Yashiro comes down with a nasty cold, but Ren is in the middle of an important shoot and needs someone to look after him. In a feverish fit, Yashiro dares Kyoko to take over his job! Of course Kyoko accepts, but she's in way over her head with a pack of new responsibilities and the scorn of everyone who thinks she's doing a bad job. But the more time Ren spends with Kyoko the more he sees of her kind and gentle side. Will all her hassles be worth his change of heart?",
      release_date: "February 19th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1545.jpg"},

{
      title: "Skip Beat!, Vol. 07",
      author: "Yoshiki Nakamura",
      synopsis: "All Kyoko's dreams are coming true! She's got a best friend (okay, so Moko still needs to come to terms with their bosom-buddyhood, but she's learning). She's finally going to high school (so what if a mean girl is picking on her--Kyoko knows how to deal with bullies). And she's landed a spot in Sho's new video (Yes! Revenge! Bwa ha ha ha!). Life doesn't get any better than this.",
      release_date: "July 16th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1546.jpg"},

{
      title: "Skip Beat!, Vol. 22",
      author: "Yoshiki Nakamura",
      synopsis: "Show biz is sweet, but revenge is sweeter! Is there such a thing as being too good? With Ren's help, Kyoko finally gets into her new character. But when she shows up on set and wows the crew with her new spin on the old bully role, it sends some of her costars over the edge! Kyoko's used to dealing with her own demons, but can she stand up to someone else's?!",
      release_date: "June 19th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1547.jpg"},

{
      title: "Skip Beat!, Vol. 02",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous enough! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!",
      release_date: "November 19th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1548.jpg"},

{
      title: "Skip Beat!, Vol. 15",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!",
      release_date: "February 19th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1549.jpg"},

{
      title: "Skip Beat!, Vol. 05",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko lands a regular role on a TV show...as a giant chicken. Not content to settle for poultry recognition, Kyoko tries out for a big commercial. At the audition she runs into her Love Me rival Moko, who's having rival woes of her own. With a jealous rich girl out to bring them down, can Kyoko and Moko overcome their difficulties and act as a team to trounce the competition?",
      release_date: "October 17th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1550.jpg"},

{
      title: "Skip Beat!, Vol. 25",
      author: "Yoshiki Nakamura",
      synopsis: "Show biz is sweet, but revenge is sweeter! Kyoko's Valentine's battle with Reino has finally gained her Sho's attention—but now it's the last thing she wants! Sho is determined to make her obsessed with him, and shows up on set with an over-the-top gift to taunt her. But when Kyoko explains her true relationship with Reino, Sho makes an inexcusable move. Has he undone her years of healing in one fell swoop?!",
      release_date: "June 18th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1551.jpg"},

{
      title: "Skip Beat!, Vol. 36",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko’s time in Guam is coming to an end, and with it her role as Setsu. She’s sad that she won’t have an excuse to be near Ren anymore, but unbeknownst to her, Ren is even more affected by their parting than she is! Facing his demons finally let him believe in the bright future Kyoko represents. But back in Japan, her dark past is rearing its ugly head. Will it get in the way of Kyoko’s hopes of a happily ever after?!",
      release_date: "March 20th 2015",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1552.jpg"},

{
      title: "Skip Beat!, Vol. 08",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko's perfect chance to wreak her revenge on Sho isn't going as well as she'd hoped. In fact, her rage is so consuming that she forgets she's supposed to be acting and tries to throttle Sho for real. That's not her only problem: Sho still thinks he owns Kyoko body and soul, but his manager is worried that Kyoko might be stealing his heart!",
      release_date: "October 19th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1553.jpg"},

{
      title: "Skip Beat!, Vol. 10",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko's been scouted for a role in this year's most anticipated drama, a remake of the classic . But shades of the past threaten to stifle the production as Kyoko struggles to get into the character of Mio, a young woman with a severely scarred face. Ms. Iizuka, the actress who played the original Mio, is now playing Kyoko's mother, and has grave doubts about Kyoko's ability to do justice to the role. She demands that Kyoko pass an acting test, and quit the production if she fails!",
      release_date: "June 17th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1554.jpg"},

{
      title: "Skip Beat!, Vol. 14",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz!Vie Ghoul is the new band burning up the charts by stealing Sho's moves, and Kyoko's hopping mad on his behalf. Kyoko's confrontation with Sho about his lack of action doesn't go as well as she hoped--Sho gets violent, and the front man for Vie Ghoul gets a good look at Kyoko's demons. And both men seem a little more interested in Kyoko than Ren would like...",
      release_date: "October 19th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1555.jpg"},

{
      title: "Skip Beat!, Vol. 27",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko Mogami followed her true love Sho to Tokyo to support him while he made it big as an idol. But he's casting her out now that he's famous! Kyoko won't suffer in silence--she's going to get her sweet revenge by beating Sho in show biz! Kyoko’s having trouble getting into the role of Cain’s sister. But is it because she can’t relate to a spoiled punk princess, or because she can’t let go of the fact that Ren is playing Cain? And Ren faces his own challenge with the situation. Can he stand to have the woman he loves treat him like a brother?",
      release_date: "February 18th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1556.jpg"},

{
      title: "Skip Beat!, Vol. 01",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko always thought that Sho, whose family took her in when she was small, was her prince charming. However, when Sho heads for Tokyo to make it big as a musician, Kyoko goes with him and has to quit high school to support his dream. But soon, being in the big city makes Kyoko realize that she has show business ambitions of her own!",
      release_date: "July 19th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1557.jpg"},

{
      title: "Skip Beat!, Vol. 09",
      author: "Yoshiki Nakamura",
      synopsis: "Kyoko's big chance is finally here! Her performance in Sho's promo clip impressed some important people, and now she's been asked to act in the year's most anticipated drama! But Ren is the leading man and the character Kyoko is supposed to play is damaged and scary! Can Kyoko overcome her fear of Ren and her shame about her demons, or will this chance of a lifetime slip through her fingers?",
      release_date: "February 18th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1558.jpg"},

      [genres[14], genres[13]]
      ],
[
{
      title: "Berserk, Vol. 34",
      author: "Kentaro Miura",
      synopsis: "Faced with the Kushan emperor's horrific new form and the bloody swath of destruction and spawning demons he leaves in his wake with every step, the soldiers in Griffith's new Band of the Hawk must assume their true unholy forms to battle the emperor, revealing their true faces to the citizens of Midland. How will these tormented refugees react when they discover that their would-be rescuers are as monstrous as their enemies? And could this titanic confrontation threaten to unleash even greater horrors upon the human world?",
      release_date: "October 2nd 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1559.jpg"},

{
      title: "Berserk, Vol. 6",
      author: "Kentaro Miura",
      synopsis: "Back in the day, Guts the Black Swordsman was a top slayer for The Band of the Hawk, an elite mercenary unit led by Griffith, whose calm demeanor and callow beauty belied his fighting prowess and steel will. While in a king's employ, the attraction between the king's daughter and Griffith and the growing favor of the king towards the Hawk leader raises the hackles of the king's jealous brother, who plots to have Griffith summarily assassinated. But if the plot fails, the king's brother will likely have to deal with Guts and his titanic broadsword, and the results of such confrontations are rarely pretty... or easy to clean up.",
      release_date: "September 30th 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1560.jpg"},

{
      title: "Berserk, Vol. 30",
      author: "Kentaro Miura",
      synopsis: "Thanks to Lady Farnese's selfless sacrifice, Guts, the Black Swordsman, and the rest of his companions are free to carry on their journey aboard the ship of Farnese's brother, Magnifico — that is, if they're willing to leave Farnese behind. But having to choose between their mission and their loyalties might not be a problem for long if the Kushan emperor and his legion of monstrous minions have their way. With a host of Kushan forces descending on Vritannis, there might not be much left of Farnese's family — or any of the citizenry — to worry about!",
      release_date: "April 5th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1561.jpg"},

{
      title: "Berserk, Vol. 8",
      author: "Kentaro Miura",
      synopsis: "Oblężenie twierdzy Doldrey wkracza w decydującą fazę. Drużyna Sokoła wraz z armią Midland stawia czoła przeważającym siłom wroga. Tymczasem niewielki oddział pod dowództwem Caski dostaje się na teren fortecy. Tam jednak czeka na nich kolejny potężny przeciwnik. Stawką w toczącej się bitwie jest odzyskanie utraconych przez Midland ziem oraz... być może kres toczącego się od stu lat konfliktu z imperium Tudorów. Czy w zniszczonym wojną kraju wreszcie zapanuje pokój?",
      release_date: "September 30th 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1562.jpg"},

{
      title: "Berserk, Vol. 2",
      author: "Kentaro Miura",
      synopsis: "The evil Count uses his dark powers to transform a defeated guard captain into an inhuman horror to combat Guts, the Black Swordsman. Meanwhile, Guts' pint-sized elf sidekick, Puck, is captured and given as a gift to the Count's daughter, a sweet girl in a gilded cage, imprisoned by her father in her own room. Guts, determined to make mincemeat of the Count - and maybe bail out his companion, if he gets around to it - assaults the castle and takes on the nearly indestructible demon/guard in a blood-soaked battle royal! But then, face-to-face with the Black Swordsman at last, the unholy Count reveals his own true form, and even Guts' super-sized sword may not be big enough to contend with this demonic monstrosity!",
      release_date: "March 3rd 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1563.jpg"},

{
      title: "Berserk, Vol. 7",
      author: "Kentaro Miura",
      synopsis: "Drużyna Sokoła, jako część armii Midland, bierze udział w kampanii mającej zakończyć trwającą od stu lat wojnę z imperium Tudorów. Podczas jednej z bitew Guts ratuje życie Casce, w wyniku czego oboje spadają z wysokiego klifu. W ślad za nimi rusza pogoń wroga. Nasi bohaterowie muszą zrobić wszystko, by wrócić do swoich. Czy oboje wyjdą z tego żywi?",
      release_date: "March 31st 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1564.jpg"},

{
      title: "Berserk, Vol. 31",
      author: "Kentaro Miura",
      synopsis: "Escaping the port city of Vritannis is no easy task, for even the finest ship is useless if it can't be reached, and a horde of Kushan monsters stalks the city's docks. Led by a powerful necromancer who has mastered both the elements and the monsters of the deep, this hideous brigade may be too much for Guts the Black Swordsman and his companions to handle, even if Guts and Schierke are able to join forces and control the awful wrath of the Berserker armor. And will it even matter, if the Kushan emperor makes Guts an offer he can't refuse?",
      release_date: "September 29th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1565.jpg"},

{
      title: "Berserk, Vol. 12",
      author: "Kentaro Miura",
      synopsis: "The Band of the Hawks’ rescue of their leader, Griffith, has brought them no ease. Broken beyond healing, a frail ghost of his former glory, Griffith is now more an object of pity than a man, and the Hawks, who’ve grimly hung together under duress and death during his absence, are now on the verge of splintering to the winds. But Griffith’s dreams and ambitions, built on the bodies of his troops and the countless enemies they have slain, have not gone unnoticed in the spirit realm, and though Griffith has nowhere to go as a man, he may yet have a future . . . a future borne on jet-black wings in the company of the demon lords of the Godhand!",
      release_date: "September 30th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1566.jpg"},

{
      title: "Berserk, Vol. 17",
      author: "Kentaro Miura",
      synopsis: "Pages: 24 Language: English Publisher: Dark Horse Comics Warrior supreme Guts. the Black Swordsman. has seen better days - and more popular - in the kingdom of Midland. a land he once defended as captain of the Band of the Hawk But the. Hawks were betrayed and slaughtered. and now the hyolier-than-thou Holy Iron Chain Knights have captured Guts and plan to whip some repentance into him - literally But Guts is not so easily held at bay. at when he manages to escape with. the Holy Knights 'leader. Farnese. as his hostage. the demons that are drawn to Guts' Brand of Sacrifice are all too willing to show her the teeming darkness in her own soul!",
      release_date: "April 5th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1567.jpg"},

{
      title: "Berserk, Vol. 14",
      author: "Kentaro Miura",
      synopsis: "The once unbeatable Band of the Hawk is smashed, and their former leader, Griffith, has made an unholy pact with the demon lords of the Godhand, sacrificing his former troops to resurrect his crippled body and ascend to stand in power beside these profane gods. The Invocation of Doom has unleashed a plague of unspeakable horrors upon the earth, and the first battle not only shatters the Hawks, but the hand of their champion, Guts, and the mind of their captain and Guts' lover, Casca. And while time may heal some of Guts' wounds, it will not heal his desire for vengeance. And his discovery of a gigantic, dragon-slaying sword might be just the ticket to deal out some king-sized payback! Also included in this volume: -Berserk Prototype, - the very first Berserk story, created during Kentaro Miura's college days as his audition that sold the series!",
      release_date: "September 30th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1568.jpg"},

{
      title: "Berserk, Vol. 13",
      author: "Kentaro Miura",
      synopsis: "The Band of the Hawk may have been the most formidable band of fighters around, but when matched up against an army of abyssal monstrosities, earthly fighting skills don't amount to a hill of beans. The Hawks' tortured and mutilated former leader, Griffith, has used the accursed Crimson Behelit to open the gates to a shadowy realm of unspeakable horrors, the realm of the demon lords of the Godhand, who are willing to transform Griffith into a being of terrible power and majesty as long as Griffith is willing to give up his former command as sacrifices in the Invocation of Doom. But nobody takes down the Hawks without a fight, and their berserker champion, Guts, will take on anything Hell can throw at him in order to save his lover, Casca, from the sordid violations that only Hell can offer.",
      release_date: "March 31st 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1569.jpg"},

{
      title: "Berserk, Vol. 3",
      author: "Kentaro Miura",
      synopsis: "Guts, the feared Black Swordsman, finishes his desperate battle with the monstrous Count, cutting and blasting him to gory scraps when the presence of the Count's daughter makes the monster hesitate. But Guts won't even have the time to clean his gigantic sword when the Count's dying pleas activate the Behelit, summoning the five God Hands, demon lords of immeasurable power. Guts' journey so far has been a long road of pain and death, but that's a walk in the park compared to fighting his way out of Hell itself!",
      release_date: "October 31st 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1570.jpg"},

{
      title: "Berserk, Vol. 9",
      author: "Kentaro Miura",
      synopsis: "Griffith, charismatic leader of the elite mercenary Band of the Hawk, has seen better days. His fearless champion, Guts, has left the Band, defeating Griffith in personal combat as his ticket out. With his judgment clouded by this unthinkable humiliation, Griffith eases his pain in the arms of the daughter of Midland’s king. But the King doesn’t take kindly to an employee picking the royal flowers, and the next stop for Griffith is the dungeon and the torture rack! Without Griffith and Guts, the Hawks become easy prey for Midland’s army, and the AWOL Guts may be the only answer to the Hawks' — and Griffith’s — lethal problems.",
      release_date: "March 31st 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1571.jpg"},

{
      title: "Berserk, Vol. 23",
      author: "Kentaro Miura",
      synopsis: "Desperate as Guts, the Black Swordsman, has been to reunite with his former captain and lover, the now-mad Casca, he’s quickly learning that being together is as dangerous as being apart. What should be a simple journey to the safety of Puck’s homeland proves to be a gauntlet of perils, as the Mark of Sacrifice each bears brings the fury of Hell down upon them, and Guts discovers that in his darkest moments he himself is the greatest danger to the woman he loves. Created by Kentaro Miura, Berserk is a fiery manga apocalypse, an ominous omnibus of furious action, fearsome horror, and funereal humor that strikes a power chord in the hearts of its devoted followers and strikes down the rest like a scythe through wheat. Bring in the sheaves!",
      release_date: "July 5th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1572.jpg"},

{
      title: "Berserk, Vol. 28",
      author: "Kentaro Miura",
      synopsis: "Guts, the Black Swordsman, and his companions have finally arrived at the sea, where they discover a mysterious child who seems to share a special bond with Guts and his former lover, the now-mad Casca. The troupe's brief respite at the shore offers moments for quiet introspection and deeper bonding, but such peace is always short lived where Guts is involved, and Guts must once again don the demonic Berserker Armor to take on a force of bloodthirsty beasts emerging from the once-peaceful surf, possessed by the accursed sorcery of a powerful Kushan enchanter! And who knows what will happen when internal strife pushes a member of Guts's band unknowingly into the comforting companionship of an enemy!",
      release_date: "March 5th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1573.jpg"},

{
      title: "Berserk, Vol. 10",
      author: "Kentaro Miura",
      synopsis: "Warrior supreme Guts has returned, and just in time to save the weakened Band of the Hawk from certain destruction… and to form an intimate bond with the beautiful warrior Casca. But job one is to find a way to free Griffith, the Hawks' leader, from the dank dungeons and round-the-clock tortures of the Hawks' former benefactor, the King of Midland. But while the flayed and starved Griffith may be in isolation, he is not alone. Horrors beyond imagination await Guts and the Hawks in the catacombs, and those who die may just be the lucky ones!",
      release_date: "September 30th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1574.jpg"},

{
      title: "Berserk, Vol. 1",
      author: "Kentaro Miura",
      synopsis: "Created by Kenturo Miura, Berserk is manga mayhem to the extreme - violent, horrifying, and mercilessly funny - and the wellspring for the internationally popular anime series. Not for the squeamish or the easily offended, Berserk asks for no quarter - and offers none! His name is Guts, the Black Swordsman, a feared warrior spoken of only in whispers. Bearer of a gigantic sword, an iron hand, and the scars of countless battles and tortures, his flesh is also indelibly marked with The Brand, an unholy symbol that draws the forces of darkness to him and dooms him as their sacrifice. But Guts won't take his fate lying down; he'll cut a crimson swath of carnage through the ranks of the damned - and anyone else foolish enough to oppose him! Accompanied by Puck the Elf, more an annoyance than a companion, Guts relentlessly follows a dark, bloodstained path that leads only to death...or vengeance.",
      release_date: "December 1st 1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1575.jpg"},

{
      title: "Berserk, Vol. 29",
      author: "Kentaro Miura",
      synopsis: "Guts, the Black Swordsman, and his companions have finally broken free of the monster-infested wilderness and arrived at the port city of Vritannis. But the band finds out all too quickly that humans can be just as monstrous as the nightmarish creatures and apostles they battled in the forest. As Schierke and Isidro face off against pirate slavers, Farnese's power-hungry family tries to force her once again under the yoke of their political ambitions. The group's only hope is to find a ship out of the city, but even if they manage to secure a vessel, will everyone be free to leave?",
      release_date: "October 5th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1576.jpg"},

{
      title: "Berserk, Vol. 19",
      author: "Kentaro Miura",
      synopsis: "Berserk, Vol. 19 by Kentaro Miura",
      release_date: "April 5th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1577.jpg"},

{
      title: "Berserk, Vol. 20",
      author: "Kentaro Miura",
      synopsis: "The Black Swordsman Guts’ former captain and lover, Casca, has been taken by the Holy Iron Chain Knights to the 'Tower of Conviction' of the fanatic torturer of the Holy See, Mozgus, who plans to treat the rumored witch to the proper agonies of the damned, but Guts is on his way to rescue Casca and dish out some chastisement of his own on any who get in his way. But forces in the demonic realms are in motion and are being drawn to the torture tower in what may be a prelude to a second Eclipse and an unprecedented release of malign spirits into the world!",
      release_date: "November 5th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1578.jpg"},

{
      title: "Berserk, Vol. 21",
      author: "Kentaro Miura",
      synopsis: "Guts, the feared Black Swordsman, is on the rampage — and it's personal. Mozgus, the malefic master Inquisitor of the Holy See, in his murderous campaign against heretics, has captured Guts' former lover Casca and has her at the ready to be burned at the stake in the Tower of Conviction, little knowing that Casca's demonic Mark of Sacrifice is drawing hideous dark powers to the Tower. It'll take everything Guts has and more to defeat Mozgus — who is much, much more than a man — and even if he can, will he be able to save Casca from the hordes of Hell amidst the inquisitor's disintegrating citadel?",
      release_date: "June 5th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1579.jpg"},

{
      title: "Berserk, Vol. 33",
      author: "Kentaro Miura",
      synopsis: "Guts the Black Swordsman and his companions brave the open sea, hoping to reach Puck's homeland, Elfhelm, and its powerful elven king, who might be able to restore the sanity of Guts' former lover, Casca. But seeking out a sanctuary for Casca means that Guts must postpone his hunt for his ex-friend and leader, Griffith, who has been reborn as a demon lord hell-bent on conquest. The winds of change blow fast and hard across the war-torn lands of the Holy See, and if Guts waits too long to exact his vengeance, Griffith might attain his murderous goals before Guts can return to Midland to stop him!",
      release_date: "October 31st 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1580.jpg"},

{
      title: "Berserk, Vol. 25",
      author: "Kentaro Miura",
      synopsis: "Guts the Black Swordsman just can't seem to find a little peace. On his way to the idyllic tranquility of his miniature pal Puck's homeland of Elfhelm, Guts and his companions, at the behest of a local witch, assist a village beset by a plague of hideous and deadly trolls. Assisted by the witch's disciple, Schierke, the warrior band manages to turn the tide against the beasts, but when a monstrous ogre hits town, a tide of another kind is needed, a mystic flood to wash the town clean. But when Casca and Farnese are carried away by the flood, they become prisoners in the troll's den, where a fate far worse than any imaginable death awaits!",
      release_date: "July 5th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1581.jpg"},

{
      title: "Berserk, Vol. 32",
      author: "Kentaro Miura",
      synopsis: "Guts, the Black Swordsman, joins forces with a most unlikely ally, the fiendish Nosferatu Zodd, in a desperate attempt to defeat the Kushan emperor's malevolent astral form. But Griffith, Guts' former commander and friend reborn as a demonic lord of the Godhand, has plans of his own for the emperor, and for Midland itself. Guts and his companions' only hope is to reach the promised safety of the elf Puck's homeland, Elfhelm, but if Griffith and the emperor turn their attention back to this motley band of travelers, there may be nowhere left for Guts and crew to hide!",
      release_date: "December 5th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1582.jpg"},

{
      title: "Berserk, Vol. 11",
      author: "Kentaro Miura",
      synopsis: "The Band of the Hawk - what's left of them - are on the run, Guts and Casca having rescued the Hawks' leader, Griffith, from the horrors of the King of Midland's dungeons. Starved, tortured mercilessly and imprisoned in an iron mask, Griffith hangs to life and sanity by a thread... and he'll be no help against the King's latest charges sent to bring him back to pay for his dalliance with the King's daughter. Now the depleted Hawks will have to face the Knights of the Black Dog, led by the merciless, bestial Wyald... one bad dog who's even worse when he unleashes the beast within!",
      release_date: "March 29th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1583.jpg"},

{
      title: "Berserk, Vol. 26",
      author: "Kentaro Miura",
      synopsis: "Guts, the Black Swordsman, goes from the frying pan to the fire as he must enter the mating chamber in the horrifying lair of trolls to rescue his love, Casca, and the Lady Farnese from the loathsome attentions of the hideous beasts. But while even an army of trolls cannot stand against Guts's boundless fury, the mightiest of warriors is no match for a demon lord. And so when Slan of the Godhand manifests from the entrails of slain trolls and takes Guts into her deadly embrace, Guts discovers he may not only be fighting for his life, but for his very soul!",
      release_date: "December 24th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1584.jpg"},

{
      title: "Berserk, Vol. 36",
      author: "Kentaro Miura",
      synopsis: "What Guts the Black Swordsman and his companions had seen as an island refuge for monstrous sea creatures and the ghost ship of the demonic Bonebeard is, in fact, the very lair of the malefic sea god that controls them. With no avenue of escape, Guts must once again don the Berserker armor to give his company any chance of survival. But without the protective influence of the sorceress Schierke, Guts risks being forever lost within the cursed armor and becoming an even greater threat to his comrades",
      release_date: "September 23rd 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1585.jpg"},

{
      title: "Berserk, Vol. 35",
      author: "Kentaro Miura",
      synopsis: "After a hellish battle against ravenous sea monsters, Guts the Black Swordsman and his companions are forced to seek refuge on a small island so that their ship can be repaired. But this island is not the safe haven they'd hoped for - it's a sinister place rife with dark energy, watched over by an ancient, vengeful god. And with a full moon on the rise, that god's power is about to be unleashed...",
      release_date: "September 29th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1586.jpg"},

{
      title: "Berserk, Vol. 22",
      author: "Kentaro Miura",
      synopsis: "The world of Guts, the Black Swordsman, is changing in a hurry. Though a demonic maelstrom has leveled the dreaded Tower of Conviction and ended the reign of terror of its grand inquisitor, Mozgus, peace has not returned to Midland. The Tower’s fall has heralded the unexpected return of Griffith, Guts former leader, last seen transformed from a shattered husk into one of the demon lords of the Godhand. but Griffith looks like his old self again — and with his dreams of carving out a kingdom by his own hand still intact. He’s raising a new Band of the Hawk, but this time he’s recruiting from the dark side to fulfill his deadly destiny!",
      release_date: "December 24th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1587.jpg"},

{
      title: "Berserk, Vol. 18",
      author: "Kentaro Miura",
      synopsis: "Hell has broken loose in the kingdom of Midland. On the death of Midland's king comes invasion, demonic forces seem to be on the rise, underground pagan cults are running wild, and the church is busily rounding up and teaching heretics the errors of their ways. While, Guts is busy testing out his newly repaired sword on the invaders, his former captain and lover, Casca, her mind wrecked by her unholy tryst with the demon lord, has fallen in with a rough crowd who don't exactly wish her well. But she, like Guts, is marked with the Brand of Sacrifice, and her abusers may soon find themselves face-to-face with the unholy abominations that are inexorably drawn to the Brand!",
      release_date: "October 5th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1588.jpg"},

{
      title: "Berserk, Vol. 15",
      author: "Kentaro Miura",
      synopsis: "From his days as a young mercenary to his time as captain of the Band of the Hawks' Raiders, Guts's life has been defined by his ability to fight and his will to win. Now cursed with the Brand of Sacrifice - a sigil that will forever mark him as prey for the damned - and with his companions dead, his lover's mind destroyed and his one-time commander and friend reborn as a malevolent demon lord, it seems that more than ever Guts must rely upon his instinct to survive. But Hell has many faces, and when what appears to be an innocent country village proves to be a den of tragic secrets, the horror of a fairy tale perverted by pain and hate may prove to be more than Guts can handle!",
      release_date: "January 30th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1589.jpg"},

{
      title: "Berserk, Vol. 37",
      author: "Kentaro Miura",
      synopsis: "Guts the Black Swordsman has again donned the accursed Berserker armor, and he ll need all its unholy power to battle the titanic Sea God from the inside! As the creature takes on an army of beautiful merrow, Guts plunges deep within the God to find its sole vulnerability and pierce its living heart. But even if he can manage this impossible task deep within the leviathan, how will Guts get back out?'",
      release_date: "March 29th 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1590.jpg"},

{
      title: "Berserk, Vol. 24",
      author: "Kentaro Miura",
      synopsis: "Desperate to find a sanctuary where his lover, Casca, will be safe from the demons drawn to her Brand of Sacrifice, Guts the Black Swordsman pushes his motley band of followers onward towards fairy Puck s homeland, Elfhelm. With new allies who make their home in a mystically guarded woodland paradise, Guts goal seems within reach, but danger lurks in the shadows of even the most dazzling utopias, and even fairy witchery may not protect the wondrous kingdom from an army of marauding, murderous trolls! Created by Kentaro Miura, Berserk is a runaway manga locomotive, a crashing colossus of teeth-rattling action, spine-chilling horror, and taboo-breaking humor that fires the boilers of its devoted devotees and burns the rest. Ashes to ashes!'",
      release_date: "December 24th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1591.jpg"},

{
      title: "Berserk, Vol. 5",
      author: "Kentaro Miura",
      synopsis: "He is Guts, the Black Swordsman, a warrior of legendary prowess — relentless, fearless, merciless. As cold and brutal as the iron of the massive sword he wields. Bent on revenge against the unholy forces that have branded him for sacrifice, but especially on Griffith, one of the demon lords of the Godhand. But Griffith was once a man, the leader of the Hawks, a renowned cadre of elite fighters with a young Guts as its fiercest champion. Though forged in a crucible of cruelty and violence, nothing could prepare Guts for a confrontation with Nosferatu Zodd, a superhuman beast who slaughters Guts’ comrades as easily as a scythe cuts wheat. Even Guts and Griffith are no match for the abomination’s power...but something Griffith wears around his neck may well be!",
      release_date: "March 31st 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1592.jpg"},

{
      title: "Berserk, Vol. 27",
      author: "Kentaro Miura",
      synopsis: "Now equipped with the mystical Berserker Armor, Guts fights on against the dragon-form of Grunbeld and his legion of fanatic apostle soldiers. But the very armor that holds Guts together — in a nightmarishly literal sense — might be the last straw that tears his tortured mind apart! While Guts struggles to hold his own against his inner demons, monsters of a very different sort rally in Windham as the Kushan Emperor, Ganishka, and the newly reborn Griffith rally their forces in a head-to-head struggle for control of all of Midland. But when the dust finally settles, there may be little left of the kingdom to claim!",
      release_date: "August 5th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1593.jpg"},

{
      title: "Berserk, Vol. 16",
      author: "Kentaro Miura",
      synopsis: "Warrior supreme Guts has been marked for sacrifice to the armies of the damned, and now he has the b....",
      release_date: "August 31st 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1594.jpg"},

{
      title: "Berserk, Vol. 4",
      author: "Kentaro Miura",
      synopsis: "Now that the evil Count has been killed and dragged to Hell by the demon lords of the Godhand, Guts, the Black Swordsman, hooks up with his former benefactor, the mercenary Gambino. But it’s a deadly reunion, one that nearly takes Guts’ life. The following years see Guts wandering from battlefield to battlefield, where his awesome skills as a slayer catch the eye of both warring parties, including the legendary Griffith, warrior leader of the Band of the Hawk, who is eager to test his combat skills against those of the Black Swordsman. As usual, anytime that Guts is involved there will be hell to pay!",
      release_date: "February 29th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1595.jpg"},

      [genres[7], genres[0], genres[4], genres[21], genres[9], genres[18]]
      ],
[
{
      title: "Black Lagoon, Vol. 8",
      author: "Rei Hiroe",
      synopsis: "Roberta's vendetta continues as Rock and Revy enlist some old acquaintances to try and catch up with the Killer Maid before it's too late. They're going to have to get in line since Roberta's got everyone from a U.S. military black ops unit to her ex-F.A.R.C. comrades gunning for her, not to mention the CIA and the NSA. When the turmoil becomes more than the city's criminal underworld can bear, Balalaika and Hotel Moscow enter the game. With so many players at the table, it's winner take all, and the stakes couldn't be higher!",
      release_date: "January 1st 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1596.jpg"},

{
      title: "Black Lagoon, Vol. 4",
      author: "Rei Hiroe",
      synopsis: "The action shifts to chilly midwinter Tokyo, where Balalaika hires Rock as her interpreter, and Revy comes along as Rock's bodyguard. The Washimine-gumi, a Yakuza family on its way down, wants to make a deal with Hotel Moscow. Soon, however, the yakuza realize they might have been better off making a deal with the Devil himself! As the pressure builds, Rock faces the reality of his outlaw life, and Revy meets her match in the Washimine's number-one enforcer. The icy streets of Tokyo are about to burn red-hot!",
      release_date: "July 19th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1597.jpg"},

{
      title: "Black Lagoon, Vol. 2",
      author: "Rei Hiroe",
      synopsis: "As the newest crewmember of the Black Lagoon, Rock is learning that life as a pirate is a lot more than just fun in the sun. After a salvage job on a sunken German U-Boat turns into a full-auto blowout with a gang of neo-Nazis, the crew of the Black Lagoon realizes they have more than a few issues with Revy's hair-trigger temper. But when the arrival of a pair of psychotic assassins in Roanapur nearly starts an all-out gang war, Rock is going to need all the friends he can get!",
      release_date: "July 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1598.jpg"},

{
      title: "Black Lagoon, Vol. 3",
      author: "Rei Hiroe",
      synopsis: "Roanapur turns into a war zone when Balalaika and Hotel Moscow team up with the Triad to hunt down the psychotic Romanian killers Hansel and Gretel. The bloody climax leaves Rock scarred by the grim reality of the underworld he's become a part of, but there's no rest for the wicked. A terrorist organization makes a move against the Triad, and the crew of the Black Lagoon once again gets pulled into the line of fire as an echo of the past comes back to haunt the present. Cock the hammer, it's time for action!",
      release_date: "April 19th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1599.jpg"},

{
      title: "Black Lagoon, Vol. 9",
      author: "Rei Hiroe",
      synopsis: "Roanapur explodes as Roberta's vendetta against a top secret U.S. Special Forces team brings out the city's heaviest hitters. Balalaika and the ex-Soviet military troops of Hotel Moscow face off with Major Caxton's Grey Fox unit as it tries to fight its way out of Roanapur. Meanwhile, Rock, Revy and Garcia Lovelace continue their pursuit of Roberta, hoping to catch up to her before the Killer Maid's own demons run her down. But if they do find her, Roberta's thirst for revenge may consume more than just those who wronged her…",
      release_date: "October 19th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1600.jpg"},

{
      title: "Black Lagoon, Vol. 10",
      author: "Rei Hiroe",
      synopsis: "Benny’s tech-savvy girlfriend Jane has recruited Feng Yifei, a Chinese spy, to help her hack into a massive German defense company. But Jane’s real motive is to blackmail the Chinese government by exposing their operations and hang Feng out to dry as a scapegoat. The People’s Liberation Army isn’t going to let this slide, and it’s not long before they hire local mercenaries to wipe out Feng and anyone that gets in the way, including the crew of the Black Lagoon!",
      release_date: "May 19th 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1601.jpg"},

{
      title: "Black Lagoon, Vol. 5",
      author: "Rei Hiroe",
      synopsis: "Rock and Revy form an uneasy alliance with Ginji, the Washimine-gumi's top enforcer, to rescue Yukio from her kidnappers. Even if she can be freed, Rock finds Yukio's position as the new head of the Washimine-gumi hard to accept, especially when it calls his beliefs and loyalties into question. The conflict between Hotel Moscow and the Washimine spirals into greater violence, setting Rock and Revy on a collision course with Balalaika, and ultimately, a shocking climax that will change Rock forever.",
      release_date: "March 17th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1602.jpg"},

      [genres[1], genres[0]]
      ],
      [
{
      title: "xxxHolic, Vol. 6",
      author: "CLAMP",
      synopsis: "Kimihiro Watanuki takes a welcome break from his grueling service to the time-space witch, Yûko Ishihara, only to find himself mixed up in the strangest parade of the Japanese magical world. But a slipup reveals that Kimihiro is a powerless human! How can he survive the festival without being eaten by its dangerous participants?Then Kimihiro meets a woman who grieves for her lost son. Since Kimihiro is an orphan, the two form an immediate bond. But what will Kimihiro do when he realizes that his wonderful new friendship may very well kill him?xxxHOLiC crosses over with Tsubasa, also by CLAMP. Don’t miss it!Includes chapters 35-42",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1603.jpg"},

{
      title: "xxxHolic, Vol. 13",
      author: "CLAMP",
      synopsis: "The medium Kohane-chan has been punched and bruised on national TV, but still her controlling mother is forcing her to go on the air. Now Kimihiro steps between the rebellious young psychic and her raging mother, only to take the beating himself. See the dramatic conclusion of Kohane-chan’s story!Includes chapters 80-84",
      release_date: "June 23rd 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1604.jpg"},

{
      title: "xxxHolic, Vol. 4",
      author: "CLAMP",
      synopsis: "It’s Valentine’s Day–and while Domeki is showered with chocolates and cards from girls, Watanuki receives none. To make matters worse, he must also do the usual chores for Yûko, which includes making chocolate cake for her and Mokona, as well as the treats his boss wants to give away as gifts. But when Watanuki discovers he has a shy and secret admirer who is not quite human, he finds that chocolates can be more than just sweets.Then, after seeing identical twin sisters pass by in the street, Yûko makes a curious remark: that there are chains that only humans can use to bind others. Watanuki meets the sisters and senses that the relationship between them is not what it seems. . . .crosses over with , also by CLAMP. Don’t miss it!Includes chapters 23-28",
      release_date: "June 17th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1605.jpg"},

{
      title: "xxxHolic, Vol. 10",
      author: "CLAMP",
      synopsis: "Months ago, when Kimihiro Watanuki became the indentured servant of the witch Yûko Ichihara, Yûko warned Kimihiro about his attraction to cute young Himawari-chan. But he refused to listen. How could his pretty classmate possibly pose any kind of danger to him? At last the secret is revealed . . . and with near-fatal results.Includes chapters 59-64",
      release_date: "November 17th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1606.jpg"},

{
      title: "xxxHolic, Vol. 17",
      author: "CLAMP",
      synopsis: "Watanuki no longer leaves the wish-granting shop he inherited from the witch Yûko. What’s more, he must help everyone who walks through its doors—even the monster that ate his eye! How can the still-inexperienced Watanuki handle what can only be called one dangerous customer? Includes chapters 102-105",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1607.jpg"},

{
      title: "xxxHolic, Vol. 8",
      author: "CLAMP",
      synopsis: "Kimihiro Watanuki’s after-school job working for the mysterious witch Yûko Ishikawa has taken a dangerous turn. A recent assignment cost Kimihiro his right eye to a spider with a grudge. Now the missing eye has become the latest must-have item in the spirit world. Even the Zashiki-Warashi, the pretty spirit who has a crush on Kimihiro, has become entangled in the mess . . . and she’s being held captive by an unknown evil! Can Kimihiro save both the girl and his eye–without getting himself killed by beings more powerful than he can imagine?Includes chapters 48-51",
      release_date: "1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1608.jpg"},

{
      title: "xxxHolic, Vol. 1",
      author: "CLAMP",
      synopsis: "Watanuki Kimihiro is haunted by visions of ghosts and spirits. Seemingly by chance, he encounters a mysterious witch named Yuuko, who claims she can help. In desperation, he accepts, but realizes that he's just been tricked into working for Yuuko in order to pay off the cost of her services. Soon he's employed in her little shop--a job which turns out to be nothing like his previous work experience Most of Yuuko's customers live in Japan, but Yuko and Watanuki are about to have some unusual visitors named Sakura and Syaoran from a land called Clow. . . . XXXHolic volume one 'crosses over with 'Tsubasa volume one 'Don't miss it 'Includes special extras after the story Includes chapters 1-8",
      release_date: "July 23rd 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1609.jpg"},

{
      title: "xxxHolic, Vol. 14",
      author: "CLAMP",
      synopsis: "Kimihiro is a mystery even to himself. He has no memory of his past, or even of his beloved parents’ names. Neither does he have any idea why he is being followed by malicious spirits. But his boss, the witch Yûko Ichihara, knows, and in this volume many of Kimihiro’s secrets are finally revealed!xxxHOLiC crosses over with Tsubasa, also by CLAMP. Don’t miss it!Includes chapters 85-91",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1610.jpg"},

{
      title: "xxxHolic, Vol. 3",
      author: "CLAMP",
      synopsis: "Kimihiro Watanuki is haunted by spirits–-and the only way to escape his curse is to become the indentured servant of the mysterious witch, Yûko Ichihara. But when his beloved, beautiful Himawari-chan, asks him for a favor, he and his eternal rival, the exorcist Dômeki, must go on a spirit-busting adventure without Yûko there to save them!Meanwhile Yûko gives a young woman a precious cylindrical box from her treasure room. There’s just one caveat: She must never open it. Inside is a magical device with a terrifying reputation! Can Kimihiro save an ambitious young lady from her own overconfidence? Tsubasa xxxHOLiC volume three! Includes chapters 16-22",
      release_date: "February 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1611.jpg"},

{
      title: "xxxHolic, Vol. 11",
      author: "CLAMP",
      synopsis: "Kimihiro Watanuki has been saved from death by the sacrifices of his friends, but his recovery time is cut short. His special connection with the spirit world is needed to investigate a terrifying haunted house, placate annoyed Warashi spirits, and face the growing threat of a shadowy figure called Fei-Wang Reed.Includes chapters 65-72",
      release_date: "2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1612.jpg"},

{
      title: "xxxHolic, Vol. 5",
      author: "CLAMP",
      synopsis: "Kimihiro Watanuki is the indentured servant of Yûko, the beautiful but completely unpredictable Space-Time Witch. He must work at her bizarre wish-granting shop until he can pay off his own wish: to be free of the spirits that haunt him. Yûko’s latest customer is a rain spirit who wants Kimihiro dispatched on a rescue mission. Little does Kimihiro know that this mission will take him to death’s door!Kimihiro has another problem. A cute spirit has given him a Valentine’s Day present, which means he’s obligated by Japanese custom to return the favor. What do you get a girl who may not even exist in this world?Includes chapters 29-34",
      release_date: "January 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1613.jpg"},

{
      title: "xxxHolic, Vol. 9",
      author: "CLAMP",
      synopsis: "Without realizing it, Kimihiro Watanuki has purchased a dream. According to his boss Yûko Ishikawa, the mysterious time-space witch, people usually buy good dreams–but Kimihiro’s dream is a man-eating nightmare. Even worse, it has come true! Then Kimihiro meets a wistful girl who, like him, can see the spirit world. Together they try to prevent a harmless ghost from being exorcised from its beloved resting place, an ancient cherry tree. The girl’s mother wants her to have nothing to do with Kimihiro, but the spirits say otherwise. . . .Includes chapters 52-58",
      release_date: "2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1614.jpg"},

{
      title: "xxxHolic, Vol. 18",
      author: "CLAMP",
      synopsis: "Includes special extras after the story!Watanuki's vow to the witch Yuko, who has disappeared, leaves him in charge of the shop where wishes must be granted to those who meet the price. Enter a deranged customer who is determined to capture the heart of the man she is stalking. Now Watanuki may have no choice but to deliver his friend Shizuka Domeki into the arms of this unstable woman!xxxHOLiC crosses over with Tsubasa, also by CLAMP. Don't miss it!Available on DVD from FUNimation EntertainmentIncludes chapters 106-107 + Special",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1615.jpg"},

{
      title: "xxxHolic, Vol. 12",
      author: "CLAMP",
      synopsis: "Lately Kimihiro Watanuki’s dreams have been pleasant escapes that have given him the chance to talk to his new friend Haruki Dômeki. But now he’s falling asleep a lot–and starting to think that his entire life with the witch Yûko might be taking place in some kind of dreamworld. Then one night his dream is visited by a pretty princess named Sakura. . . .xxxHOLiC crosses over with Tsubasa, also by CLAMP. Don’t miss it!Available on DVD from FUNimation EntertainmentIncludes chapters 73-79",
      release_date: "October 17th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1616.jpg"},

{
      title: "xxxHOLiC: AnotherHOLiC",
      author: "CLAMP",
      synopsis: "Introducing the thrilling first novel set in the exotic, mysterious world of xxxHOLiC! Written by bestselling author NISIOISIN, and spectacularly illustrated by CLAMP, this original story features the ever-excitable high school student Kimihiro Watanuki, the mystifying time-space witch Yûko Ichihara, and a host of fascinating new characters.Nothing could have thrilled Kimihiro more than stumbling upon the bizarre wish-granting shop of the beautiful but unnerving Yûko Ichihara, who solemnly promises to make the spirits plaguing Kimihiro go away just as soon as her fee–rendered in daily afternoon chores at her shop–is paid in full.Of course, the thrill wears off as soon as Kimihiro realizes that his payment plan bears a disturbing resemblance to indentured servitude . . . eternalindentured servitude. Still he soldiers on, ready for whatever number of adventures lie ahead. But in Kimihiro’s case, three may not be the charm!His first assignment–to procure a pair of fake eyeglasses–is exceptionally pointless, even by Yûko’s standards. Or at least it seems that way, until Kimihiro watches a woman throw herself into traffic. He soon discovers that the doors of bespectacled perception can swing both ways. Next, when a classmate seeks help solving a mystery involving text messages from the dead, Kimihiro is glad to play Sherlock. But he must turn to Yûko to determine whether the root of the riddle is otherworldly shenanigans, deceit, or murder. Finally, however ready, willing, and able Kimihiro thinks he is to face the most unusual of circumstances, he still finds himself completely bewildered by the stranger who chases away his darkest spirits, condemns Yûko as a craven charlatan, and offers Kimihiro a way out of his preternatural predicament–anda fortune besides.",
      release_date: "2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1617.jpg"},

{
      title: "xxxHolic, Vol. 7",
      author: "CLAMP",
      synopsis: "KimihIro Watanuki has a wish on layaway with Yûko Ishikawa, the sultry time-space witch who can grant anyone’s deepest desire… for a price! Still, working like a slave in Yûko’s shop hasn’t dampened Kimihiro’s enthusiasm for his cute classmate Himawari-chan, nor his irritation with his too-cool rival Dômeki, the guy who always seems to be around during Kimihiro’s most embarrassing moments.But when Dômeki, trying to be a good samaritan, inadvertently becomes the object of a terrible grudge, Kimihiro seeks Yûko’s help. However, the cost for her assistance is steep: Kimihiro would be permanently impaired! Is such a sacrifice worth it for someone he would rather have disappear?Includes chapters 43–47.",
      release_date: "October 17th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1618.jpg"},

{
      title: "xxxHolic, Vol. 19",
      author: "CLAMP",
      synopsis: "Kimihiro Watanuki has passed through many trials by fire. Once an indentured servant, he has matured and become the poised and skilled keeper of the shop that grants wishes. But Watanuki’s final wish is for himself: to meet the witch Yûko one more time. With Yûko long vanished from our world, is it even possible? That question and others are answered now in the concluding volume of the bestselling manga xxxHOLiC! Includes chapters 108–111",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1619.jpg"},

{
      title: "xxxHolic, Vol. 2",
      author: "CLAMP",
      synopsis: "Kimihiro Watanuki thought he had signed up with a bunch of weirdoes, and he was right! He became the unfortunate indentured servant of a woman known as Yûko Ichihara, who was widely rumored to be the time-space witch. Now his voyage through the worlds of the occult are off and running, as he and Yûko go visiting fortune tellers and horoscope readers. But can the future really be told?Meanwhile, the romance is heating up between Kimihiro and cute Himawari-chan. Then fate throws Kimihiro’s old rival back into his life. Now Yûko invites all three to a temple to tell scary stories throughout the night. Is it just for fun or is there some deeper reason?Tsubasa xxxHOLiC volume two! Includes chapters 9-15",
      release_date: "October 16th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1620.jpg"},

      [genres[7], genres[4], genres[8], genres[18]]
      ],
[
{
      title: "Black Cat, Volume 16",
      author: "Kentaro Yabuki",
      synopsis: "Train Heartnet, also known as 'Black Cat,' was an infamous assassin for a secret organization called Chronos...until he abandoned that cold-blooded existence to live on his own terms as an easygoing bounty hunter. But is Train's past as far behind him as he thinks?Train and River put aside their differences as they face off with Shiki, one of the most powerful members of the Apostles of the Stars. Shiki is determined to show that the Tao is the ultimate form of power, and he's going to take down Train, his friends and all of Chronos to prove it!",
      release_date: "November 15th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1621.jpg"},

{
      title: "Black Cat, Volume 07",
      author: "Kentaro Yabuki",
      synopsis: "Train Heartnet, also known as 'Black Cat,' was an infamous assassin for a secret organization called Chronos...until he abandoned that cold-blooded existence to live on his own terms as an easygoing bounty hunter. But is Train's past as far behind him as he thinks?",
      release_date: "April 28th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1622.jpg"},

{
      title: "Black Cat, Volume 11",
      author: "Kentaro Yabuki",
      synopsis: "Charden and Kyoko have deserted Creed's Apostles of the Stars and joined up with Train and Sven. But it won't be easy to protect them, since Train has been shot by a nanotech bullet that turns him into a little boy. Rinslet goes in search of Dr. Tearju, who developed Creed's nanotechnology and may be the only one who can return Train to normal. But will Rinslet find the doctor before Creed or Chronos finds Train?",
      release_date: "February 16th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1623.jpg"},

{
      title: "Black Cat, Volume 08",
      author: "Kentaro Yabuki",
      synopsis: "Train Heartnet, also known as 'Black Cat,' was an infamous assassin for a secret organization called Chronos...until he abandoned that cold-blooded existence to live on his own terms as an easygoing bounty hunter. But is Train's past as far behind him as he thinks?",
      release_date: "June 23rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1624.jpg"},

{
      title: "Black Cat, Volume 04",
      author: "Kentaro Yabuki",
      synopsis: "Train Heartnet was once a legendary assassin known as 'Black Cat' and belonged to a secret society called Chronos. But two years ago he faked his own death in order to leave Chronos and become a bounty hunter, able to live by his own rules. His main mission in life now is to find Creed Diskense, a former Chronos member who killed his best friend. Train and his partner Sven are joined by a sexy thief named Rinslet and an amazing young girl named Eve who is a creation of nanotechnology!",
      release_date: "September 24th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1625.jpg"},

{
      title: "Black Cat, Volume 15",
      author: "Kentaro Yabuki",
      synopsis: "• 20 volumes of Black Cat have sold approximately 600,000 copies each in Japan. • Volumes 1-11 have all debuted in the top 15 on Bookscan’s Graphic Novel charts.• Named one of the Top 50 Manga Properties of 2006 by ICv2• The first eleven volumes of Black Cat manga have sold through over 175k units in the U.S. to date.• Previewed and promoted in SHONEN JUMP magazine• Black Cat anime DVDs launched in fall of 2006 by Funimation.• Serialized in Weekly Shonen Jump in Japan for approximately four years, from issue 32 in 2000 through issue 29 in 2004• Creator Kentaro Yabuki debuted as an artist with the Weekly Shonen Jump one-shot Yamato Gensouki. • Anime started airing in Fall 2005 on TV in Japan. Produced by Studio Gonzo, renowned for its 2D/3D hybrid CGI animation.• Released bi-monthly (every other month).Train Heartnet, also known as 'Black Cat,' was an infamous assassin for a secret organization called Chronos...until he abandoned that cold-blooded existence to live on his own terms as an easygoing bounty hunter. But is Train's past as far behind him as he thinks? Train and the Sweeper Alliance make it to Creed's island hideout. However, the Apostles of the Stars are ready and waiting for them. Separated from the others, Eve must finally do battle on her own when confronted by Leon, the wind master. She has the powers she needs to win, but does she have the heart?",
      release_date: "January 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1626.jpg"},

{
      title: "Black Cat, Volume 13",
      author: "Kentaro Yabuki",
      synopsis: "After surviving another attack by the Apostles, Train and his partners agree that they have to eliminate Creed. At Sven's urging, Train finally reveals the details of his past: the nature of his relationship with Saya Minasaki, the details of his quitting the Chrono Numbers and the cause of his violent hatred of Creed.",
      release_date: "June 17th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1627.jpg"},

{
      title: "Black Cat, Volume 14",
      author: "Kentaro Yabuki",
      synopsis: "Glin, a mysterious information broker, is forming a Sweeper Alliance in order to destroy Creed and the Apostles of the Stars. He invites Train, Eve and Sven to join their group. But even if this motley crew can locate the Apostles' hiding place, will they be able to survive the perilous journey to get there?",
      release_date: "2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1628.jpg"},

{
      title: "Black Cat, Volume 10",
      author: "Kentaro Yabuki",
      synopsis: "The battle between Creed's Apostles and the Cerberus Team ends in a draw, with serious wounds on both sides. Just when Train thinks he can relax again, his friends Sven and Eve are captured by Creed, who believes that killing them is the only way to get Train to join him. Now Train has to race to save the only people he can trust.",
      release_date: "October 20th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1629.jpg"},

{
      title: "Black Cat, Volume 19",
      author: "Kentaro Yabuki",
      synopsis: "R to L (Japanese Style)",
      release_date: "August 18th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1630.jpg"},

{
      title: "Black Cat, Volume 20",
      author: "Kentaro Yabuki",
      synopsis: "R to L (Japanese Style)",
      release_date: "September 22nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1631.jpg"},

{
      title: "Black Cat, Volume 03",
      author: "Kentaro Yabuki",
      synopsis: "Two years ago, Train, a high-level assassin known as Number XIII in Chronos, left the secret society to live by his own rules. Since then, Train has been a sweeper, a bounty hunter, catching criminals and bringing them in alive. But his main mission is to find a former Chronos member who killed his best friend.",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1632.jpg"},

{
      title: "Black Cat, Volume 06",
      author: "Kentaro Yabuki",
      synopsis: "Train Heartnet, also known as 'Black Cat,' was an infamous assassin for a secret organization called Chronos...until he abandoned that cold-blooded existence to live on his own terms as an easygoing bounty hunter. But is Train's past as far behind him as he thinks?",
      release_date: "February 18th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1633.jpg"},

{
      title: "Black Cat, Volume 09",
      author: "Kentaro Yabuki",
      synopsis: "A new force has been unleashed from the darkest, wildest realms of the Net--a menace more dangerous than anything DenTech City has ever faced. What is it? MegaMan himself! Transformed by the mysterious 'Beast' program, MegaMan has developed the unwelcome power to turn into a rampaging monster. While Lan's scientist dad searches for a solution, MegaMan and Lan try to deal with MegaMan's beastly new condition...while fighting the world's most powerful NetNavis!",
      release_date: "September 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1634.jpg"},

{
      title: "Black Cat, Volume 01",
      author: "Kentaro Yabuki",
      synopsis: "Two years ago, Train, a high-level assassin known as Number XIII in Chronos, left the secret society to live by his own rules. Since then, Train has been a sweeper, a bounty hunter, catching criminals and bringing them in alive. But his main mission is to find a former Chronos member who killed his best friend.",
      release_date: "January 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1635.jpg"},

{
      title: "Black Cat, Volume 12",
      author: "Kentaro Yabuki",
      synopsis: "In order to revert back to his regular-sized self, Train sets out to see Dr. Tearju, a woman who bears a striking resemblance to the girl Eve. But before she can help Train return to normal, the Apostles of the Stars come crashing in, with the intent of forcing Dr. Tearju to join their ranks. A mysterious new weapon may be the only hope for keeping the Apostles at bay.",
      release_date: "March 16th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1636.jpg"},

{
      title: "Black Cat, Volume 02",
      author: "Kentaro Yabuki",
      synopsis: "Two years ago, Train, a high-level assassin known as Number XIII in Chronos, left the secret society to live by his own rules. Since then, Train has been a sweeper, a bounty hunter, catching criminals and bringing them in alive. But his main mission is to find a former Chronos member who killed his best friend.",
      release_date: "June 18th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1637.jpg"},

      [genres[0], genres[7], genres[5], genres[1], genres[10]]
      ],
      [
{
      title: "GTO: Great Teacher Onizuka, Vol. 4",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "November 17th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1638.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 5",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "January 16th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1639.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 15",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "April 14th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1640.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 3",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "September 17th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1641.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 1",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "May 16th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1642.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 9",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "November 17th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1643.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 7",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "June 17th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1644.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 13",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "November 17th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1645.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 6",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "April 17th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1646.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 8",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "August 17th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1647.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 10",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "March 17th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1648.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 14",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "January 17th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1649.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 12",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "August 17th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1650.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 19",
      author: "Tōru Fujisawa",
      synopsis: "In a surprise visit, Onizuka shows Uchiyamada life is indeed wonderful. Meanwhile, Teshigawara rocks the schoolhouse when he hatches a deadly plot to kidnap Fuyutsuki. Can Onizuka get her back before Teshigawara lays a finger on her? Put away the homework and take notes-an explosive conclusion awaits readers in this action-packed volume of GTO!",
      release_date: "March 16th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1651.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 20",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old virgin and ex-biker. He’s crude, foul-mouthed, and has a split second temper. His goal: to be the Greatest High School Teacher in the World!When former gangster Onizuka decides to become a teacher, the only job he lands is a student teacher position at the Holy Forest Academy where he must rely on his street smarts to deal with the difficult students.",
      release_date: "June 15th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1652.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 23",
      author: "Tōru Fujisawa",
      synopsis: "What can Onizuka do to help Miyabi improve her relationship with her parents? Kidnap her of course! Unfortunately the police don't agree with Onizuka's crazy scheme. In contrast to the wild adventure orchestrated by Onizuka, some light is finally shed on Miyabi's traumatic past. Even if Onizuka can rebuild the bridge between Miyabi and her parents, will he be able to stop her from jumping off the deep end?",
      release_date: "March 15th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1653.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 17",
      author: "Tōru Fujisawa",
      synopsis: "Miyabi has exposed Urumi's secret to the school and Urumi wants revenge. Urumi's web page featuring secret cameras in Miyabi's house leads Miyabi to an overdose. With both girls hanging on to their lives by a thread, Onizuka must pool all his resources to save them before it's too late.",
      release_date: "September 14th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1654.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 22",
      author: "Tōru Fujisawa",
      synopsis: "Onizuka's quest to become the greatest teacher in the world often lands him in hot water. On this occasion, Onizuka must convince Tokiwa that not all men deserve a beating, something about which Ms. Daimon won't be very happy! Meanwhile, Uehara appears to be falling for a computer nerd. Does she know something behind the thick glasses and pocket protectors?",
      release_date: "November 16th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1655.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 16",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "July 17th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1656.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 21",
      author: "Tōru Fujisawa",
      synopsis: "Tokiwa may look like an angel on the outside, but don't let the saintly exterior deceive you... she's got quite an inner demon. After dispatching a bunch of delinquents, the devious diva brings the rumble to Kikuchi. Onizuka must step in to teach Tokiwa a lesson about real men!",
      release_date: "August 10th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1657.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 18",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old virgin and ex-biker. He's crude, foul-mouthed, and has a split second temper. His goal: to be the Greatest High School Teacher in the World!",
      release_date: "December 15th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1658.jpg"},

{
      title: "GTO: Great Teacher Onizuka, Vol. 2",
      author: "Tōru Fujisawa",
      synopsis: "Meet Eikichi Onizuka, a 22-year-old college karate champ and ex-biker. He's crude, foul-mouthed, and has a hair-trigger temper. Just the sort of guy you'd expect to see going back to school...to become a teacher",
      release_date: "July 17th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1659.jpg"},

      [genres[14], genres[7], genres[8]]
      ],
      [
{
      title: "Hunter x Hunter, Vol. 21",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.REUNIONThe Chimera Ant king is born, bursting from the stomach of the queen--a violent birth for a violent being. He makes his first move on the neighboring country by manipulating its dictator to summon all citizens to a ceremony at the capital. There he plans to Nen-baptize them, which will kill 99 percent of the population. The remaining one percent will have their Nen awakened, thus providing a healthy snack for the new king that not only tastes good but greatly increases his power. Can Gon and Killua find a way to stop this brutal Ant king?",
      release_date: "2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1660.jpg"},

{
      title: "Hunter x Hunter, Vol. 04",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.END GAMEThe fourth exam rages on as the Hunter hopefuls try to gain points by stealing each other's badges. Gon, Kurapika, and Leorio fall into a trap set for another applicant and must face a pit of poisonous snakes. When Leorio is bitten, Gon braves the snakes to snatch the antidote and a badge!Finally, the friends reach the end of the exams and the ultimate 'reverse tournament'--the winner of each round automatically passes the Hunter exam, but the defeated keep competing against each other until the last candidate standing fails the exam. Killing an opponent means immediate failure--will Killua's rage stand in the way of his dream to become a Hunter?",
      release_date: "February 9th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1661.jpg"},

{
      title: "Hunter x Hunter, Vol. 20",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.WEAKNESSDeep in the heart of the land of NGL (Neo-Green Life), Gon and Killua have one month to train if they hope to beat their powerful foe Knuckle! But first they need to increase their baseline stamina just to get to his level. Gon discovers that his windup leaves something to be desired--it sucks up all his energy until he passes out! Meanwhile, Biscuit confronts Killua about a serious flaw in his fighting ability--one that could cost them everything!",
      release_date: "January 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1662.jpg"},

{
      title: "Hunter x Hunter, Vol. 03",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.RESOLUTIONGon and his teammates have been challenged by a group of criminals hired by the Hunter Association. Gon wins with wits, and Kurapika's red-eyed rage assures a victory. But Leorio is all out of luck, and loses precious time for his team. It's up to Killua to save the day with a gruesome display of his assassin skills. With time running out, it takes ingenuity and brute force to beat the clock and the test.And the fourth exam finds the team stranded on an island for a battle royale. Can Gon get the best of Hisoka, or will he be... eliminated?",
      release_date: "November 9th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1663.jpg"},

{
      title: "Hunter x Hunter, Vol. 32",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other people. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters. As the Hunter elections reach the moment of decision, Killua closes in on the hospital where Gon lies in a coma. Can he and his terrifyingly powerful sister Alluka reach Gon in time If they do, Gon will have a chance to fulfill the dream that drove him to become a Hunter in the first place reuniting with his father, Ging",
      release_date: "December 5th 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1664.jpg"},

{
      title: "Hunter x Hunter, Vol. 31",
      author: "Yoshihiro Togashi",
      synopsis: "An endlessly imaginative and best-selling cult hit from the pages of Japan’s Weekly Shonen Jump magazine.Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other people. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters. The time has come for the Hunter Association to choose a new chairman, but it’s shaping up to be anything but a clean election. While the world’s Hunters descend into dirty politics, Gon remains hospitalized in critical condition. Killua knows of a way to save him, but it will mean facing his deadly family of assassins…and the deadliest and strangest of them all, Killua’s little sibling Alluka… Reads R to L (Japanese Style) for teen plus audiences.",
      release_date: "December 4th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1665.jpg"},

{
      title: "Hunter x Hunter, Vol. 02",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.A STRUGGLE IN THE MISTGon and his friends Leorio and Kurapika have more to worry about than just the Hunter Exam--their fellow applicants are deadly serious. Hisoka, the mad magician, nearly kills them all in a mock test and Killua reveals that appearances can be deceiving.Then there are the tests, which prove to be as varied as they are difficult. The picky proctors of the second exam demand the applicants perform culinary feats of wonder, and it takes the intervention of the President of the Hunter Association Review Board to convince them to let anyone pass at all!",
      release_date: "September 7th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1666.jpg"},

{
      title: "Hunter x Hunter, Vol. 01",
      author: "Yoshihiro Togashi",
      synopsis: "When Gon learns his father Ging--whom he thought was dead--is a famous Hunter, he aspires to follow in his footsteps and track down monsters, treasures, and words of magic. Rated for older teens.",
      release_date: "1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1667.jpg"},

{
      title: "Hunter x Hunter, Vol. 11",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.NEXT STOP: METEOR CITY--THE JUNKYARD OF THE WORLDGon, Killua, Leorio and Kurapika are finally reunited. Kurapika tells the gang that he made a Nen covenant to strengthen his ability by setting limits on it--all for the bargain price of his own death if he ever uses Chain Jail against anyone who's not a Spider. Meanwhile, the Mafia is researching the members of the mysterious and deadly Troupe, but even the most foolproof database contains no information on them. But there's only one place where goons can avoid registration: Meteor City, the junkyard of the world!",
      release_date: "March 7th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1668.jpg"},

{
      title: "Hunter x Hunter, Vol. 18",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other people. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.CHANCE ENCOUNTERKillua and Biscuit take on two Bombers in a fisticuff competition, and during the fight, Biscuit reveals her true shocking form! Meanwhile, Gon is set on getting revenge on Genthru no matter what the cost--including his own body parts! Afterwards a strange event is triggered due to Gon having 99 cards--it's a multiple-choice quiz! But just what is the quiz about, and more importantly what can the prize possibly be?!",
      release_date: "October 3rd 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1669.jpg"},

{
      title: "Hunter x Hunter, Vol. 25",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.CHARGEAs the midnight hour nears, all the Hunters are rarin' to go! With some surprising allies on their side, they launch their blitz against the ruthless Ants. While Chairman Netero is past his prime, don't count this old man out! He's got a trick or two up his sleeve for his battle with the King. But an unexpected turn of events reveals a side of the King that no one could have predicted...",
      release_date: "March 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1670.jpg"},

{
      title: "Hunter x Hunter, Vol. 06",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.NEN SENSEGon and Killua have split off from the rest of the group to spend the next six months training as Heavens Arena. But despite the skills they came in with, the friends are quickly outmatched by another young fighter who can access the mysterious power called 'Nen'. Nobody will hire a Nen-less Hunter, so Gon and Killua are determined to learn quickly. Do they have what it takes to become Nen masters?",
      release_date: "October 9th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1671.jpg"},

{
      title: "Hunter x Hunter, Vol. 28",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.REGENERATIONNetero has struck a deal with the Chimera Ant King: if the King can defeat him, Netero will reveal the King's true name. Netero is determined to keep fighting, but his attacks have no effect on the terrifyingly powerful King. Will Netero's ultimate attack, the Guanyin Bodhisattva: Zero, break through the King's defenses, or will he be forced to take even more desperate measures?",
      release_date: "December 28th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1672.jpg"},

{
      title: "Hunter x Hunter, Vol. 14",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.THE SECRET OF GREED ISLANDThe multi-trillionaire Battera hires Gon and Killua to play the Greed Island video game for him, just as the two had hoped. But when they enter the game and head to a nearby town, they stumble onto one of the game's dark secrets. Greed Island isn't just a game--it has real-life consequences that can spell life or death for the players involved. And it isn't long before the Spiders enter the game themselves!",
      release_date: "April 9th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1673.jpg"},

{
      title: "Hunter x Hunter, Vol. 19",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.N.G.L.Welcome to the country of NGL (Neo-Green Life), a unique place led by an eco-group that's totally against any kid of technology! No metal, synthetic material or modern tools are allowed, and death is considered 'nature's will'. But a secret and powerful drug cartel operates within in the country, and when the queen of a colony of huge insects eats the cartel thugs, her offspring begin to exhibit unnatural signs of aggression! When Gon and friends arrive on the scene, will they too end up in the belly of the insect queen?",
      release_date: "2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1674.jpg"},

{
      title: "Hunter x Hunter, Vol. 23",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.6: PART 1Killua is under attack!! Confronted with a sniper that's shooting Flea-Bullets from afar, Killua must predict where the next shot will hit or fall victim to the fleas that are draining all his blood. But there are more surprises in store as other snipers aim to take a shot at him! Being a human dartboard was not of today's to-do list! Meanwhile, Gon's silent stalker finally reveals himself... with a proposition Gon  expected!",
      release_date: "July 9th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1675.jpg"},

{
      title: "Hunter x Hunter, Vol. 12",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.SEPTEMBER 4: PART 2The Spiders unravel the clues that will bring them ever closer to Kurapika's identity. Meanwhile, Kurapika's desire for revenge is rekindled when he learns that the Spiders are still alive. And though the bounty on the Spiders has been withdrawn, Gon persuades Killua to help Kurapika awhile longer, if only to bring the cycle of killing to an end. Then, during a mad chase through the crowded streets of Yorknew, the Spiders capture Gon and Killua again! Will Kurapika and Leorio be able to set them free? And will Kurapika finally get his revenge?",
      release_date: "2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1676.jpg"},

{
      title: "Hunter x Hunter, Vol. 22",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.8: PART 1Having lost their queen, the Chimera Ants are spreading beyond their native homeland to establish their own colonies. Some attack Meteor City, and the group of assassins known as the Spiders are called home to fend off the invasion. Meanwhile, in the Republic of East Gorteau, Gon and Killua realise that entire populations of towns are going missing. They decide to find out what's happening and try to stop it, but Gon soon realizes he's not alone, and whoever's following him is not friendly!",
      release_date: "March 3rd 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1677.jpg"},

{
      title: "Hunter x Hunter, Vol. 27",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.NAMEThe Hunters are getting beaten further and further into a corner by the powerful Chimera Ant King's Royal Guards. With teamwork on their side, the just may be able to overcome the impossible odds. But when they make sacrifices to save each other, it just might cost them the bigger battle at hand!",
      release_date: "January 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1678.jpg"},

{
      title: "Hunter x Hunter, Vol. 26",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.WE MEET AGAINKillua's uneasiness about the Ants wasn't so far-fetched after all! When unforeseen incidents set the Hunters back in their showdown with the King and his Royal Guards, everyone has to scramble to get back on track! Can the Hunters regain their advantage against an enemy that's way more than they bargained for...?!",
      release_date: "October 3rd 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1679.jpg"},

{
      title: "Hunter x Hunter, Vol. 17",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other people. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.A FIERCE THREE-WAY STRUGGLEIn an unexpected turn of events, Gon, Killua, and their sometime enemy Hisoka pull off a stunning victory in a heated game of deadly dodge ball. Only by working together are they able to defeat Razor and his 14 Devils. Meanwhile, a group of rival Hunters zap out for a meeting with the billionaire benefactor who has hired numerous hunters, including Gon, to solve the Greed Island game. There they make a shocking discovery that may very well make all of their struggles meaningless!",
      release_date: "June 9th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1680.jpg"},

{
      title: "Hunter x Hunter, Vol. 05",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.FAMILY MATTERSGon's new friend Killua may have run away from home, but that doesn't mean his family is willing to let him leave. Killua's parents sent his older brother Illumi to keep an eye on him during the Hunter Exam, and now Illumi has convinced Killua to return to the family business of assassination. Gon is convinced that Killua must have been brainwashed, and sets out with Leorio and Kurapika to make an intervention. But before the newly-licensed Hunters can try to talk some sense into Killua, they have to make it past the unstoppable guard beast that is trained to eat all visitors!",
      release_date: "March 5th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1681.jpg"},

{
      title: "Hunter x Hunter, Vol. 24",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other men. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.1: Part 4 With the King preoccupied with playing Gungi, Gon and the other Hunters get closer and closer to their target. An unforeseen accident results in the deactivation of Neferpitou's En, making the defenses surrounding the castle temporarily vulnerable. The Extermination team readies for their showdown with the King, but with only a few days left before the 'selection,' will they be in time to save all the citizens from turning into Ant soldiers?!",
      release_date: "March 3rd 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1682.jpg"},

{
      title: "Hunter x Hunter, Vol. 15",
      author: "Yoshihiro Togashi",
      synopsis: "Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other people. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves Hunters.PROGRESSGon and Killua are so incompetent at fighting the monsters on Greed Island that a Hunter named Biscuit has taken pity and offered to coach them in the use of their Nen powers. But the clock is ticking, for a violent player known as 'the Bomber' has a plan to get his hands on all but ten of the item cards in one fell swoop.",
      release_date: "October 9th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1683.jpg"},

{
      title: "Hunter x Hunter, Vol. 33",
      author: "Yoshihiro Togashi",
      synopsis: "Plucky Gon’s quest to find his dad leads him into a whole world of crazy adventure.Hunters are a special breed, dedicated to tracking down treasures, magical beasts, and even other people. But such pursuits require a license, and less than one in a hundred thousand can pass the grueling qualification exam. Those who do pass gain access to restricted areas, amazing stores of information, and the right to call themselves The journey to the Dark Continent begins! Chairman Netero’s son Beyond has a dream to explore the dangerous land of the Dark Continent. Many have made trips there and almost everyone has disappeared or died! But he’s not alone in his desire to explore this strange land—the Hunter Association has their own plan. And where are Gon and his friends in all this mess?",
      release_date: "June 3rd 2016",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1684.jpg"},

      [genres[0], genres[4], genres[1], genres[10], genres[20]]
      ],
      [
{
      title: "Battle Royale, Vol. 09",
      author: "Koushun Takami",
      synopsis: "As Shuuya is nursed back to health, he discovers his saviour is a group of of girls with plans to defeat  and escape the island. But hope turns to despair when one girl's paranoia makes her believe thar Shuuya is the devil...and she will stop at nothing to cast him into darkness!Just when you thought that things couldn't get any more outrageous, this volume of  pulls no punches and packs a ton of heat...turns into a gruesome, over the top splatterfest filled of paranoia, corruption and bloody lies,The body count is rising! Are you still game?",
      release_date: "March 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1685.jpg"},

{
      title: "Battle Royale, Vol. 07",
      author: "Koushun Takami",
      synopsis: "Book by Koushun Takami, Masayuki Taguchi",
      release_date: "August 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1686.jpg"},

{
      title: "Battle Royale, Vol. 01",
      author: "Koushun Takami",
      synopsis: "Battle Royale, a high-octane thriller about senseless youth violence in a dystopian world, it is one of Japan's best-selling - and most controversial - novels. As part of a ruthless program by the totalitarian government, ninth-grade students are taken to a small isolated island with a map, food, and various weapons. Forced to wear special collars that explode when they break a rule, they must fight each other for three days until only one 'winner' remains. The elimination contest becomes the ultimate in must-see reality television. A Japanese pulp classic available in English for the first time, Battle Royale is a potent allegory of what it means to be young and survive in today's dog-eat-dog world. The first novel by small-town journalist Koushun Takami, it went on to become an even more notorious film by 70-year-old director Kinji Fukusaku.",
      release_date: "May 1st 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1687.jpg"},

{
      title: "Battle Royale, Vol. 08",
      author: "Koushun Takami",
      synopsis: "The sun is setting on the first day of The Program, and the students of Class B are in for one hell of a night. With the failure of their initial plan to take down The Program, Shinji Mimura and Yutaka Sato are putting their backup plan in motion. Having located all the supplies necessary to create a bomb, the pair are all set to deliver their package right where it will do the most damage: the 'school' which serves as The Program control center. But with the school in a permanent danger zone, will it be their bomb that detonates first... or the explosive collars locked around their necks?",
      release_date: "August 3rd 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1688.jpg"},

{
      title: "Battle Royale, Vol. 14",
      author: "Koushun Takami",
      synopsis: "The beginning of the end!Shuuya, Kawada, and Noriko fight for their lives against Kiriyama, the psychotic student who decimated most of their class. While Kiriyama strives to eradicate the other kids' futures, we get an insider's view of Kiriyama's past... and what forces shaped this bright, talented young man into the unfeeling killer he is today.",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1689.jpg"},

{
      title: "Battle Royale, Vol. 05",
      author: "Koushun Takami",
      synopsis: "In the future, random Jr. High School classes are chosen to compete in a game called Battle Royale. The rules: only one student can survive after 3 days on an island or else they all perish. Weapons are handed out and each student is sent out into the field alone and unprepared for the horror that awaits them. The classmates turn upon themselves in a battle for survival, treaties are made and broken, and former friends become foes as the relentless countdown continues. Amid the betrayals and rising body count, two classmates confess their love for each other and swear to survive this deadly game together.",
      release_date: "November 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1690.jpg"},

{
      title: "Battle Royale, Vol. 11",
      author: "Koushun Takami",
      synopsis: "Sugimura meets up with Kotohiki. Sugimura's excitement leads him to forget what the situation was, and how dangerous it still is. Sugimura and Kotohiki exchange a few words, as they head toward Shuuya's group. He expresses his emotions and his feeling of powerlessness against Kiriyama. Unfortunately, Kiriyama catches up to them, and Sugimura has to fight him in order to protect Kotohiki. As he tries to fight him, he again feels it's meaningless to try to defeat the monster Kiriyama.",
      release_date: "November 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1691.jpg"},

{
      title: "Battle Royale, Vol. 04",
      author: "Koushun Takami",
      synopsis: "Book by Koushun Takami, Masayuki Taguchi",
      release_date: "July 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1692.jpg"},

{
      title: "Battle Royale, Vol. 03",
      author: "Koushun Takami",
      synopsis: "In the future, random Jr. High School classes are chosen to compete in a game called Battle Royale. The rules: only one student can survive after 3 days on an island or else they all perish. Weapons are handed out and each student is sent out into the field alone and unprepared for the horror that awaits them. The classmates turn upon themselves in a battle for survival, treaties are made and broken, and former friends become foes as the relentless countdown continues. Amid the betrayals and rising body count, two classmates confess their love for each other and swear to survive this deadly game together.",
      release_date: "April 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1693.jpg"},

{
      title: "Battle Royale, Vol. 12",
      author: "Koushun Takami",
      synopsis: "You cannot fight what you cannot see. You cannot kill someone who is dead on the inside. It is the defiantly human animal that is forced to kill without porpose...When Sugimura realizes that he can't beat Kiriyama, he turns to protecting Kotohiki at all costs. But Kiriyama might just beat him to the kill, because he has an ace up his sleeve: Oda's Kevlar vest!Meanwhile, Kawada and Shuuya discuss just how dangerous Kiriyama really may be. But how can you fight someone who is barely human?",
      release_date: "2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1694.jpg"},

{
      title: "Battle Royale, Vol. 06",
      author: "Koushun Takami",
      synopsis: "In the future, random Jr. High School classes are chosen to compete in a game called Battle Royale. The rules: only one student can survive after 3 days on an island or else they all perish. Weapons are handed out and each student is sent out into the field alone and unprepared for the horror that awaits them. The classmates turn upon themselves in a battle for survival, treaties are made and broken, and former friends become foes as the relentless countdown continues. Amid the betrayals and rising body count, two classmates confess their love for each other and swear to survive this deadly game together.",
      release_date: "April 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1695.jpg"},

{
      title: "Battle Royale, Vol. 10",
      author: "Koushun Takami",
      synopsis: "Shuuya walks into the dining room to find all the girls except Yuko dead. The tragic deaths of her friends has sent Yuko further over the edge. She climbs to the top of the lighthouse as the madness takes over her mind, ignoring Shuuya's pleas. Realizing she was wrong about Shuuya, Yuko throws herself off of the lighthouse.",
      release_date: "July 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1696.jpg"},

{
      title: "Battle Royale, Vol. 15",
      author: "Koushun Takami",
      synopsis: "Brace yourself for the climactic conclusion to !Mere days ago, forty-two students were marooned on an island, given random weapons and ordered to kill or be killed. Now only four remain alive... but that's still three too many. As our heores are confronted with a grisly end, one wil be forced to betray the others in the ultimate sacrifice. Will anyone make it out of  alive?",
      release_date: "April 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1697.jpg"},

{
      title: "Battle Royale, Vol. 13",
      author: "Koushun Takami",
      synopsis: "Of the original 42 students forced to kill or be killed by ",
      release_date: "July 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1698.jpg"},

{
      title: "Battle Royale, Vol. 02",
      author: "Koushun Takami",
      synopsis: "As the violence begins to escalate, Shuuya continues searching for friends who would be willing to join his alliance. However, the search doesn't go as well as he would hope, resulting in the deaths of several more students. Childhood friends Yumiko Kusaka and Yukiko Kitano would be glad to join Shuuya, but will he reach him in time? The answer may lie with the mysterious Kawada. Will Shuuya be able to convince the transfer student to join him? Meanwhile, having also decided not to play the game, how long will devoted couple Sakura Ogawai and Kazuhiko Yamamoto survive? Finally, the deadly Kazuo must decide what to do about his gang. Will he allow them to join him? Or will Mitsuru Numai and the rest just slow him down?",
      release_date: "November 1st 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1699.jpg"},

      [genres[0], genres[7], genres[21]]
      ],
[
{
      title: "Yu-Gi-Oh!: Duelist, Vol. 8: Yugi vs. Pegasus",
      author: "Kazuki Takahashi",
      synopsis: "Yugi's beaten the champions of Duel Monsters... but now it's time to meet the maker! In the final battle of the tournament, Yugi faces ulta-rich game designer Maxillion Pegasus with the soul of his grandfather at stake! As cards fly, Yugi and Pegasus turn to the darker side of their decks, unleashing sinister monsters of the netherworld. But Pegasus has the power of the mind-scanning Millenium Eye. How can Yugi defeat an opponent who knows exactly what he's going to do?",
      release_date: "1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1700.jpg"},

{
      title: "Yu-Gi-Oh! Vol. 2: The Cards With Teeth",
      author: "Kazuki Takahashi",
      synopsis: "After Seto Kaiba discovers that Yugi's grandfather is the owner of the incredibly rare Blue-Eyes White Dragon card, the master of the dangerous collectible card game will stop at nothing to obtain the greatly desired card.",
      release_date: "1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1701.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 10: The Egyptian God Cards",
      author: "Kazuki Takahashi",
      synopsis: "Yugi enters the Duel Monsters, the world's most popular collectible card game, where he must face ruthless opponents like game designer Maximillion Pegasus in the hopes of discovering the origin of the game and his own powers.",
      release_date: "December 4th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1702.jpg"},

{
      title: "Yu-Gi-Oh!: Millennium World, Vol. 5: Tomb of Shadows",
      author: "Kazuki Takahashi",
      synopsis: "The final saga of the Yu-Gi-Oh! epic! After many deadly duels, Yugi has collected the three Egyptian God Cards, the key to remembering his own past life as an Egyptian pharaoh. When the cards take Yugi's soul back in time, can he defeat the villains of the past and achieve his ultimate destiny?",
      release_date: "February 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1703.jpg"},

{
      title: "Yu-Gi-Oh! Vol. 7: Monster World",
      author: "Kazuki Takahashi",
      synopsis: "When Yugi beat Kaiba at a card game, little did he know the consequences: a trip through Kaiba's 'Death T'  a theme park of death  and a series of evil spells against Yugi's family. It doesn't help that Kaiba's little brother also has a score to settle.",
      release_date: "March 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1704.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 3: The Player Killer",
      author: "Kazuki Takahashi",
      synopsis: "The diabolical Player Killer challenges Yugi to a duel of darkness while across the ocean, Yugi's #1 rival Kaiba has been awakened to reclaim his fortune and get revenge. Rated for teens.",
      release_date: "October 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1705.jpg"},

{
      title: "Yu-Gi-Oh! Vol. 5: The Heart of the Cards",
      author: "Kazuki Takahashi",
      synopsis: "Yugi, Jonouchi, and Anzu have survived Kaiba's deadly theme park, but now they're faced with the two Kaiba brothers, heirs of the biggest game empire in Japan. Seto Kaiba has spent years and millions of dollars building the greatest 'Duel Monsters' deck ever. Armed only with his grandfather's hand-me-down deck, Yugi fights Seto Kaiba for his grandfather, for his friends, and most of all, for revenge. But will faith, and good card playing, be enough?",
      release_date: "August 12th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1706.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 14: Double Trouble",
      author: "Kazuki Takahashi",
      synopsis: "Duels rage around Battle city as fish monsters, sea serpents, and dark beasts of the underworld are unleashed from their decks! First Jonouchi fights Ryota Kajiki, Duelist of the Sea, on his home turf at the Domino City Aquarium! Then Marik's henchmen, the Rare Hunters, force Kaiba and Yugi into a tag-team duel on top of a skyscraper! Can the two arch-rivals work together... or will they fall to their deaths 12 floors below?",
      release_date: "January 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1707.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 24: Yugi vs. Marik",
      author: "Kazuki Takahashi",
      synopsis: "The greatest powers can often fall to the smallest opponents. Yugi used Kuriboh to defeat the Blue-Eyes Ultimate Dragon. Now, does the tiny Metal Devil hold the secret to defeating the Sun Dragon Ra? As the world's mightiest gamers clash, the very island may not survive the battle. The Battle City tournament is over...but who will walk away from the ruins?",
      release_date: "January 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1708.jpg"},

{
      title: "Yu-Gi-Oh!, Vol. 1: The Millenium Puzzle",
      author: "Kazuki Takahashi",
      synopsis: "10th grader Yugi spent most of his time alone playing games... until he solved the Millennium Puzzle, a mysterious Egyptian artifact! Possessed by the puzzle, Yugi becomes Yu-Gi-Oh, the King of Games, and challenges evildoers to the Shadow Games... weird games with high stakes and high risks! These graphic novels contain new stories not seen in the anime, including the origin of Yugi and his friends!",
      release_date: "December 16th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1709.jpg"},

{
      title: "Yu-Gi-Oh!: Millennium World, Vol. 7: Through The Last Door",
      author: "Kazuki Takahashi",
      synopsis: "In the illusionary Millennium World of three thousand years ago, the forces of good and evil clash for the last time. But now that Yugi has split from Yu-Gi-Oh, the heroes must go on a journey to present-day Egypt, where Yu-Gi-Oh--the pharaoh--must face his final destination. But what awaits them in Egypt? Has the evil of the Millennium Items truly been exorcised? And can the bonds which hold the pharaoh's soul ever be broken? The ultimate battle beckons!",
      release_date: "June 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1710.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 22: Slifer vs. Obelisk",
      author: "Kazuki Takahashi",
      synopsis: "Three thousand years ago, an ancient Egyptian carving predicted the final battle between Yugi and Kaiba...and now that day has finally come! The heavens shake as the archrivals unleash the ultimate gods of collectible card games: Slifer the Sky Dragon and the God of the Obelisk! But will the duel be decided in the present, or will the force of the gods smash through time itself?",
      release_date: "January 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1711.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 11: The Shadow of Marik",
      author: "Kazuki Takahashi",
      synopsis: "First a sinister clown-masked figure steals Yugi's Millennium Puzzle, then Ryuji Otogi challenges Yugi to a collectible dice game. Without the Millennium Puzzle, Yugi can't call Yu-Gi-Oh. Can he win without his other self to help him out? Rated for children 9-12.",
      release_date: "May 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1712.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 23: Ra the Immortal",
      author: "Kazuki Takahashi",
      synopsis: "Yugi and Kaiba fight their final duel! One will lose, and the other will go to meet the greatest Egyptian God, the Sun Dragon Ra! But can anyone defeat the ultimate God Card in the hands of its master, the mad Marik? Or will they fall victim to the terrible prophecy: ",
      release_date: "October 4th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1713.jpg"},

{
      title: "Yu-Gi-Oh! Duelist, Vol. 1:  Duelist Kingdom",
      author: "Kazuki Takahashi",
      synopsis: "Yugi, Jonouchi, and Anzu have survived Kaiba's deadly theme park, but now they're faced with the two Kaiba brothers, heirs of the biggest game empire in Japan. Seto Kaiba has spent years and millions of dollars building the greatest 'Duel Monsters' deck ever. Armed only with his grandfather's hand-me-down deck, Yugi fights Seto Kaiba for his grandfather, for his friends, and most of all, for revenge. But will faith, and good card playing, be enough?",
      release_date: "May 1st 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1714.jpg"},

{
      title: "Yu-Gi-Oh!: Millennium World, Vol. 4: Birth of the Dragon",
      author: "Kazuki Takahashi",
      synopsis: "The final Yu-Gi-Oh! Story! After hundreds of battles, Yugi has finally gathered all the Egyptian God Cards... the key to unlocking his memories of his past life as a n Egyptian pharaoh. When Ryo Bakura gives him the Millennium Eye, Yugi opens the door to the world of memory, and hismind travels back in time to ancient Egypt, when the magic and mosters were real! Now Yugi and his friends must explore the world of Yugi's forgotten past... and fight an enemy who has been waiting for them for 3000 years!",
      release_date: "November 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1715.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 7: Heavy Metal Raiders",
      author: "Kazuki Takahashi",
      synopsis: "It's the final round before the fight with Pegasus, and only one of the four will survive! Mai Kujaku has always wanted to fight Yugi, and now she's got her chance! Can Yugi beat her harpies' pet dragon? Then, Jonouchi fights 'Bandit' Keith Howard, America's most unscrupulous gamer. Jonouchi's deck is loaded with warrior monsters, but Keith's machine deck deals death with six-guns and slot machine... American style!",
      release_date: "May 22nd 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1716.jpg"},

{
      title: "Yu-Gi-Oh!: Millennium World, Vol. 6: The Name of the Pharaoh",
      author: "Kazuki Takahashi",
      synopsis: "In the pharaoh's empty tomb, Yugi fights Bakura for the most powerful magic of all: Yu-Gi-Oh's forgotten Egyptian name! But can Yugi win a life-or-death match of Duel Monsters without his partner's help? Meanwhile, while massive earthquakes shake the World of Memories, the pharaoh and the forces of Egypt fight a last stand against the undead armies of Zorc Necrophades. It's the final battle between good and evil...as the world itself comes to an end!",
      release_date: "May 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1717.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 12: Magician vs. Magician",
      author: "Kazuki Takahashi",
      synopsis: "Yugi fights Pandora, a duelist who uses one of Yugi's own favorite cards, the Dark Magician! But can Yugi duel  Meanwhile, Jonouchi fights an old enemy, Insector Haga. For the sake of his sister, Jonouchi must fight an army of vicious bugs... and that's not all. His own deck has been infected with Haga's parasitic insects! Is this the end?",
      release_date: "July 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1718.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 19: Duel With the Future",
      author: "Kazuki Takahashi",
      synopsis: "Kaiba faces the mysterious eighth duelist, Ishizu Ishtar, the woman who gave him The God of the Obelisk... and now she's taking it back! Even though Kaiba has an Egyptian God Card, Ishizu has the Millennium Tauk, which gives her the power to see the future! Kaiba's the only hope for victory may lie in the sands of time, in the secrets kept for centuries by the mysterious Egyptian Tomb Guardians. But even Kaiba may not be ready for the horrifying secret origin of the mad heir of the Tomb Guardians, the last of the line. His name is Marik Ishtar... Ishizu's brother!",
      release_date: "November 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1719.jpg"},

{
      title: "Yu-Gi-Oh! Vol. 4: Kaiba's Revenge",
      author: "Kazuki Takahashi",
      synopsis: "When Yugi beat Kaiba at a card game, little did he know the consequences: a trip through Kaiba's 'Death T' -- a theme park of death -- and a series of evil spells against Yugi's family. It doesn't help that Kaiba's little brother also has a score to settle.",
      release_date: "January 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1720.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 17: One-Turn Kill",
      author: "Kazuki Takahashi",
      synopsis: "On an airship flying high above Japan, Yugi fights for his life against Bakura's fiendish occult deck! when Bakura's Ouija Board spells out 'DEATH,' Yugi will be obliterated forever... and nothing can stop it! Then, Jonouchi fights Marik, the evil leader of the Ghouls! Or does he? Unbeknownst to our heroes, Marik has been impersonated by his henchman Rishid, a fanatic duelist with a deck full of Egyptian monsters, and a past as dark as Marik's own...",
      release_date: "June 6th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1721.jpg"},

{
      title: "Yu-Gi-Oh!: Millennium World, Vol. 3: The Return of Bakura",
      author: "Kazuki Takahashi",
      synopsis: "The final Yu-Gi-Oh! Story! After hundreds of battles, Yugi has finally gathered all the Egyptian God Cards... the key to unlocking his memories of his past life as a n Egyptian pharaoh. When Ryo Bakura gives him the Millennium Eye, Yugi opens the door to the world of memory, and hismind travels back in time to ancient Egypt, when the magic and mosters were real! Now Yugi and his friends must explore the world of Yugi's forgotten past... and fight an enemy who has been waiting for them for 3000 years!",
      release_date: "August 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1722.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 18: The Power of Ra",
      author: "Kazuki Takahashi",
      synopsis: "The third and most powerful od the Egyptian God Cards is unleashed... twice! Locked in combat with the Egyptian duelist Rishid, Jonouchi watches in shock as his opponent summons the terrifying Sun Dragon Ra! But the Ra in Rishid's deck is a mere counterfeit... the  Ra lies in the hands of Rishid's master Marik, at the heart of his deck of sadistic torture cards. And Marik's next opponent is Mai Kujaku! Is she in over her head, or does she have a special reason for challenging the ruler of the gods?",
      release_date: "January 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1723.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 15: Yugi vs. Jonouchi",
      author: "Kazuki Takahashi",
      synopsis: "The place: the top of a 13-story skyscraper. The duel: Yugi and Kaiba vs. the Rare Hunters in a tag-team match! But even if Yugi escapes a deadly drop to his death, the worst is yet to come. His best friends, Mai and Jonouchi, have been possessed by Marik! Now, Yugi must fight Marik's mind inside Jonouchi's body. But the rules of this duel are... ",
      release_date: "December 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1724.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 4: Dungeon of Doom",
      author: "Kazuki Takahashi",
      synopsis: "The action moves underground as the tournament continues! Bandit Keith, the cutthroat American gamer, drags Jonouchi into the corpse-fulled catacombs for a match with 'Ghost' Kozuka, master of the undead. Traped in the tunnels beneath Duelist Kingdom, Yugi and Jonouchi must conquer the maze of the Meikyû Brothers in a two-on-two duel. It's monster vs. monster in the endless maze of tiny passages... and waiting in the Meikyû Brother's decks is the Gate Guardian, lord of the underworld, one of the most powerful monsters of all!",
      release_date: "January 8th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1725.jpg"},

{
      title: "Yu-Gi-Oh! Vol. 6: Monster Fight!",
      author: "Kazuki Takahashi",
      synopsis: "When Yugi beat Kaiba at a card game, little did he know the consequences: a trip through Kaiba's 'Death T'  a theme park of death  and a series of evil spells against Yugi's family. It doesn't help that Kaiba's little brother also has a score to settle.",
      release_date: "1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1726.jpg"},

{
      title: "Yu-Gi-Oh!: Millennium World, Vol. 2: Magician's Genesis",
      author: "Kazuki Takahashi",
      synopsis: "Yu-Gi-Oh's mind has travelled 3000 years back in time, to relive his life as a pharaoh in ancient Egypt! But his life may not last long, because the mad tomb-robber Bakura - vessel of the monstrous spirit Diabound - has invaded the palace to slaughter the pharaoh and his priests! Can the Gods of Egypt stop Bakura's vengeance?",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1727.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 9: Dungeon Dice Monsters",
      author: "Kazuki Takahashi",
      synopsis: "There's a new game shop in town, peddling a hot new game, and things look bad for Grandpa Mutou's family business But the Black Crown game store is more than a business competitor...its owners want to put Yugi and his grandfather out the picture forever. First a sinister clown-masked figure steals Yugi's Millennium Puzzle Then Ryuji Otogi, the teenager heir to the store, challenges Yugi to a collectible dice game of dragons and monsters. But without the Millennium Puzzle, Yugi can't call Yu-Gi-Oh. Can he win without his 'other self' to help him out?",
      release_date: "January 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1728.jpg"},

{
      title: "Yu-Gi-Oh! Vol. 3: Capsule Monster Chess",
      author: "Kazuki Takahashi",
      synopsis: "With the Millennium Scales and the Millennium Key, Shadi summons deadly illusions that, if Yugi can't successfully fight them, will kill his best friends. Later, Yugi and his friends discover the hidden characters in digital keychain pets, and Yugi meets Mokuba, Kaiba's brother, for a high-stakes game of 'Capsule Monster Chess.'",
      release_date: "January 1st 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1729.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 13: Slifer the Sky Dragon",
      author: "Kazuki Takahashi",
      synopsis: "Tenth-grade loner Yugi always had his head in some game - until he solved the Millennium Puzzle, an Egyptian artifact containing the spirit of a master gambler from the age of the pharoahs! Now, Yugi has become Yu-Gi-Oh - and the Shadow Games has begun!",
      release_date: "September 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1730.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 16: The Battle City Finals",
      author: "Kazuki Takahashi",
      synopsis: "Tenth-grade loner Yugi always had his head in some game - until he solved the Millennium Puzzle, an Egyptian artifact containing the spirit of a master gambler from the age of the pharoahs! Now, Yugi has become Yu-Gi-Oh - and the Shadow Games has begun!",
      release_date: "April 5th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1731.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 5: Blue-Eyes Ultimate Dragon",
      author: "Kazuki Takahashi",
      synopsis: "Can Yugi and Jonouchi escape the subterranean maze of the Meikyû Brothers, or will they be buried with their cards? Maybe they'd be safer underground, because Kaiba, the world's former greatest gamer, is back! On the towers og Pegasus Castle, Yugi and Kaiba fight their third Duel Monsters battle, with everything at stake. But this time, Kaiba is fighting for more than his own pride; he's fighting to save his brother. And there's nothing more dangerous than a gamer with nothing left to lose...",
      release_date: "November 18th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1732.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 21: Duel the Lightning!",
      author: "Kazuki Takahashi",
      synopsis: "Only four duelists remain in the running! On the Tower of Alcatraz, Jonouchi faces Marik, the evil Egyptian duelist whose grudge has smoldered for three thousand years. But can Jonouchi fight while he's trapped in a steel cage surrounded by molten lava? And can he overcome the power of Marik's Egyptian God Card, the Sun Dragon Ra? If he wins, he'll get his dream of facing Yugi in the finals. But if he loses, he'll get a one-way ticket to the grave!",
      release_date: "January 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1733.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 2: The Puppet Master",
      author: "Kazuki Takahashi",
      synopsis: "On the island called Duelist Kingdom a battle royale is taking place to determine the greatest 'Duel Monsters' player in the world! Yugi s friend Jonouchi has finally learned some strategy but will it be enough to beat sexy Mai Kujaku and mean 'Dinosaur' Ryuzaki A fight with fisherman Ryota Kajiki is just a warm up for Yugi the only person who s beaten Kaiba the former world champion. But although Kaiba may be in a coma his deck still lives...in the hands of an evil ventriloquist who has stolen not only Kaiba s deck but his very soul! Contains the original storyline of the first season of Yu Gi Oh! including scenes too startling for TV!",
      release_date: "August 4th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1734.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 20: Evil vs. Evil",
      author: "Kazuki Takahashi",
      synopsis: "The quarterfinals are over, but not without casualties: Mai and Rishid lie in the infirmary, and if Marik isn't defeated in 24 hours, Mai will never wake up! As the airship speeds toward its mysterious destination, Bakura and Marik end their sinister alliance and fight a vicious duel over the Millennium Rod. But who is Bakura's unexpected ally?! Meanwhile, the four semifinalists get ready for what could be the last duels of their lives. And for Jonouchi, it's his last chance to save Mai from Marik's deadly power...",
      release_date: "January 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1735.jpg"},

{
      title: "Yu-Gi-Oh!: Duelist, Vol. 6: The Terror of Toon World",
      author: "Kazuki Takahashi",
      synopsis: "Kaiba, the world's second-greatest gamer, duels Pegasus! Are Kaiba's dragons stronger than Pegasus's rubbery, slapstick, fearsome toons? Awaiting their own turn to fight, Yugi and his friends explore Pegasus's castle. But they're not alone. Bandit Keith, the unscrupulous American card shark, prowls the dark castle with his own evil plans. And Mai Kujaku, both friend and foe, has also made it to the final rounds!",
      release_date: "January 1st 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1736.jpg"},

      [genres[0], genres[4], genres[10]]
      ],
[
{
      title: "Tsubasa: RESERVoir CHRoNiCLE, Vol. 08",
      author: "CLAMP",
      synopsis: "Princess Sakura's memories are scattered across multiple dimensions - and now she and Syaoran are part of an unlikely group of friends traveling from world to world to find them. Unfortunately the memories have been transformed into immensely powerful magical feathers, and those who possess them are seldom willing to give them up without a fight. The quest takes Syaoran's odd bunch to a jungle world where helpless creatures are being terrorized by a sacrifice-demanding beast. When Syaoran, Mokona, and Sakura are separated from Fai and Kurogane, each group finds themselves on opposing sides of a conflict that threatens to destroy the future of a troupe of young women performers...and possibly the entire world!",
      release_date: "November 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1737.jpg"},

{
      title: "Tsubasa: RESERVoir CHRoNiCLE, Vol. 07",
      author: "CLAMP",
      synopsis: "The latest chapter of the top-selling series continues the saga of heroic, romantic characters on a magical quest. SYAORAN OVERMATCHED? Young Syaoran and his friends are on a quest to retrieve the magically potent feather-shaped shards of Princess Sakura's memory. The search has led them to the country of Oto, a world with the romantic feel of Japan in the early 1900s. However, another dimension traveler has shown up as well-the immensely powerful Seishiro, who first trained Syaoran. Now he and Syaoran are mortal enemies Seishiro's first objective is to kill Fai, beloved wizard and one of Syaoran's closest companions. Does Syaoran, who is just beginning his training, have any hope of surviving their inevitable battle?",
      release_date: "August 17th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1738.jpg"},

{
      title: "Tsubasa: RESERVoir CHRoNiCLE, Vol. 01",
      author: "CLAMP",
      synopsis: "SAKURA AND SYAORAN RETURN!But they're not the people you know. Sakura is the princess of Clow - and possessor of a mysterious, misunderstood power that promises to change the world. Syaoran is her childhood friend and leader of the archaeological dig that took his father's life. They reside in an alternate reality...where whatever you least expect can happen - . When Sakura ventures to the dig site to declare her love for Syaoran, a puzzling symbol is uncovered - which triggers a remarkable quest. Now Syaoran embarks upon a desperate journey through other worlds - all in the name of saving Sakura.",
      release_date: "2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1739.jpg"},

{
      title: "Tsubasa ALBuM De REProDUCTioNS: Original Art Collection",
      author: "CLAMP",
      synopsis: "In celebration of the twentieth anniversary of the phenomenon known as CLAMP–a prolific collective of four female artists who are now among the most popular manga creators in the United States–here’s a deluxe, gorgeously designed book featuring more than one hundred pages of color art, plus a five-page original Tsubasa manga that will appear only in this book!",
      release_date: "2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1740.jpg"},

{
      title: "Tsubasa Character Guide 2",
      author: "CLAMP",
      synopsis: "THE SECRETS OF TSUBASA!Are you completely obsessed with Tsubasa: RESERVoir CHRoNiCLE, the bestselling epic manga by CLAMP? Now explore the magic behind the masterpiece in this official companion to CLAMP’s thrilling fantasy saga. In the second installment of , learn more about the people, creatures, worlds, and mysteries featured in volumes 8 through 14–including a cool look at the Tsubasa and xxxHOLiC crossover!  also includes an interview with CLAMP, games and quizzes, a special fan section, preproduction artwork, a full-color poster, and more! This essential book is perfect for any fan of the Tsubasa anime and manga!",
      release_date: "September 29th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1741.jpg"},

{
      title: "Tsubasa Character Guide",
      author: "CLAMP",
      synopsis: "TSUBASA: BEHIND THE SCENES!Here is a revealing look at the acclaimed, bestselling manga series Tsubasa: RESERVoir CHRoNiCLE. Spanning the first seven graphic novels, this thrilling guide includes intriguing details about the characters, worlds, and mysteries of Tsubasa, including info on the popular crossover CLAMP characters who always seem to appear in the Tsubasa universe! It also features a brand-new Tsubasa short story, an interview with CLAMP writer Ageha Ohkawa, games and quizzes, a fan section, pre-production artwork, and more. This is an essential book for any fan of the Tsubasa manga series and anime!",
      release_date: "April 14th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1742.jpg"},

{
      title: "Tsubasa: RESERVoir CHRoNiCLE, Vol. 03",
      author: "CLAMP",
      synopsis: "CAN PURE DETERMINATION DEFEAT A MASTER MAGICIAN?Sakura is awake, but she remembers almost nothing–certainly not Syaoran, who has sacrificed everything to help her. Accompanied by the happy-go-lucky Fai, the intense Kurogane, and the strikingly odd creature Mokona Modoki, Sakura and Syaoran make their way into a new universe where a traveling magician has suddenly become frighteningly powerful and is terrorizing an entire town. Only a few independent-minded stragglers remain to battle for control of their own lives. Fai, the lone magician in the group, traded his magical powers to the dimension witch, ’s Yûko, before the journey started. Without a weapon with which to fight, can the extraordinary group of friends defeat a master magician who can control the Earth’s elements?",
      release_date: "December 15th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1743.jpg"},

{
      title: "Tsubasa: RESERVoir CHRoNiCLE, Vol. 06",
      author: "CLAMP",
      synopsis: "Syaoran, Sakura, and their companions travel to Ôto, a country where cherry blossoms perfume the days and demons called Oni terrorize the nights. To earn funds, the foursome split up to hunt the wicked creatures. Soon they learn that a new type of Oni has appeared - one that is both mysterious and beautiful...and rumored to control the other demons! Will the brave twosome of Big Puppy (Kurogane) and Little Puppy (Syaoran) save the land of Ôto from this frightening foe - and retrieve another piece of Sakura's fragmented past?",
      release_date: "June 17th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1744.jpg"},

{
      title: "Tsubasa: RESERVoir CHRoNiCLE, Vol. 04",
      author: "CLAMP",
      synopsis: "A FAIRYTALE TURNED NIGHTMARE!Young Syaoran embarks on a worlds-spanning adventure to restore the memory of the most important person in his life, the princess Sakura– even though he knows that she’ll never remember her love for him. The trail leads to a small town reminiscent of Europe at the turn of the nineteenth century, a place where the ghostly image of a golden-haired woman comes in the night to steal the town’s children. Syaoran and his band of outrageous friends–affable Fai D. Flowright, loose cannon Kurogane, the odd creature Mokona, and Sakura herself–mount their horses and venture into forbidding, barren woods to solve a mystery, rescue the children, and retrieve one more piece of Sakura’s missing memories.",
      release_date: "January 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1745.jpg"},

      [genres[0], genres[7], genres[4], genres[1]]
      ],
[
{
      title: "Chibi Vampire, Vol. 10",
      author: "Yuna Kagesaki",
      synopsis: "Things are finally going great for Karin Maaka. She's now officially going out with Kenta and she's even met another vampire who has similar problems to hers. However, her luck may not continue when her grandmother once again awakens from a long sleep. What will Elda Marker do when she discovers that Karin is not a normal vampire? And when Karin finds out the true reason why love between vampires and humans is taboo, will it destroy her relationship with Kenta?",
      release_date: "December 28th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1746.jpg"},

{
      title: "Chibi Vampire, Vol. 07",
      author: "Yuna Kagesaki",
      synopsis: "With Kenta discovering the true reason behind Karin's increase in blood when around him, their relationship shatters. Both sides struggle to deal with the thought of losing the one they love. Is there light at the end of the tunnel? Will the two of them finally make up and bring happiness to the whole family?",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1747.jpg"},

{
      title: "Chibi Vampire, Vol. 13",
      author: "Yuna Kagesaki",
      synopsis: "Karin is a cute little girl who also happens to be a vampire--with a twist. She's a vamp with blood to spare, so rather than stealing blood from humans, she actually gives her blood to them.",
      release_date: "December 28th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1748.jpg"},

{
      title: "Chibi Vampire, Vol. 03",
      author: "Yuna Kagesaki",
      synopsis: "Kenta sees Karin every day at both work and school, so each day serves as a reminder that something about the girl with the oft-bloody nose just isn't right. He is suspicious, and has not exactly subtle about it.",
      release_date: "July 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1749.jpg"},

{
      title: "Chibi Vampire, Vol. 01",
      author: "Yuna Kagesaki",
      synopsis: "Karin is a cute little girl who also happens to be a vampire... with a twist. Once a month, she experiences intense bleeding from her nose - we're talking gushers! In other words, she's a vamp with blood to spare, so rather than stealing blood from humans she actually gives her blood to them.",
      release_date: "October 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1750.jpg"},

{
      title: "Chibi Vampire, Vol. 04",
      author: "Yuna Kagesaki",
      synopsis: "Karin is a cute little girl who also happens to be a vampire... with a twist. Once a month, she experiences intense bleeding from her nose--we're talking gushers! In other words, she's a vamp with blood to spare, so rather than stealing blood from humans she actually gives her blood to them. If done right, this can be an extremely positive experience that benefits the 'victim' as much as the vamp. The problem is that Karin never seems to do things right!",
      release_date: "November 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1751.jpg"},

{
      title: "Chibi Vampire, Vol. 05",
      author: "Yuna Kagesaki",
      synopsis: "Karin is a cute little girl who also happens to be a vampire... with a twist. Once a month, she experiences intense bleeding from her nose--we're talking gushers! In other words, she's a vamp with blood to spare, so rather than stealing blood from humans she actually gives her blood to them. If done right, this can be an extremely positive experience that benefits the 'victim' as much as the vamp. The problem is that Karin never seems to do things right!",
      release_date: "March 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1752.jpg"},

{
      title: "Chibi Vampire, Vol. 12",
      author: "Yuna Kagesaki",
      synopsis: "Karin is a cute little girl who also happens to be a vampire--with a twist. She's a vamp with blood to spare, so rather than stealing blood from humans, she actually gives her blood to them.",
      release_date: "August 9th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1753.jpg"},

{
      title: "Chibi Vampire, Vol. 08",
      author: "Yuna Kagesaki",
      synopsis: "After months of little romantic development, are Karin and Kenta ready to take a big step forward in their relationship? With the young couple finally starting to hold hands in public, Maki forces the issue by setting up a date.",
      release_date: "April 1st 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1754.jpg"},

{
      title: "Chibi Vampire, Vol. 11",
      author: "Yuna Kagesaki",
      synopsis: "Book by Yuna Kagesaki",
      release_date: "April 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1755.jpg"},

{
      title: "Chibi Vampire, Vol. 09",
      author: "Yuna Kagesaki",
      synopsis: "Karin Maaka is a vampire, from a family of vampires, but instead of needing to drink blood, she has an excess of blood that she must give to her victims. If done right, giving this blood to her victim can be an extremely positive thing. The problem with this is that Karin never seems to do things right...As Karin and Kenta's official first date continues, Anju shows up to keep an eye on the clumsy couple. But when Kenta notices her, he grabs Karin and takes her on the Ferris wheel. There he tells her how he really feels...will this destroy their relationship? Also, new girl Yuriya begins snooping around town in search of vampires. For what reason is she trying to uncover Karin's identity and what secrets of her own is she hiding?",
      release_date: "September 1st 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1756.jpg"},

{
      title: "Chibi Vampire, Vol. 14",
      author: "Yuna Kagesaki",
      synopsis: "Features color art and an interview with the creator.",
      release_date: "April 9th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1757.jpg"},

{
      title: "Chibi Vampire, Vol. 06",
      author: "Yuna Kagesaki",
      synopsis: "Karin's crush of Kenta may be finally be revealed. But things take a turn when Kenta's mom seeks the whereabouts of Kenta and Karin with the assistance of a detective. A case of mistaken identity causes Karin’s most explosive nose bleed ever! Karin's crush continues but now it is a forbidden one.",
      release_date: "July 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1758.jpg"},

{
      title: "Chibi Vampire, Vol. 02",
      author: "Yuna Kagesaki",
      synopsis: "Kenta sees Karin at work and school, each day serving as a reminder that something about the girl with the oft-bloody nose just isn't right! He's suspicious...and he's not exactly subtle about it. Fearing that he might discover her secret, Karin decides to kill this potential problem--with kindness! She goes out of her way to do all kinds of nice things for him. But when Kenta catches her 'feeding' yet again, the gig may be up. So what's a vampire girl to do? Why, take the boy home to meet her parents, of course!",
      release_date: "March 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1759.jpg"},

      [genres[14], genres[7], genres[13], genres[15], genres[18]]
      ],
[
{
      title: "D.Gray-man, Vol. 1",
      author: "Katsura Hoshino",
      synopsis: "Set in a fictional end of the 19th century England, it's the story of Allen Walker, a 15-year-old boy who roams the Earth in search of . Washed away to unknown parts of the world after The Great Flood, Innocence is the mysterious substance used to create weapons that obliterate demons known as .A born exorcist, Walker's primary anti-akuma weapon is the cross that's embossed on his red and disfigured left hand, which contains Innocence. But not only does Walker destroy akuma, he sees the akuma hiding inside a person's soul! Together with his fellow exorcists fighting under the command of the Black Order, Walker leads the battle against the Millennium Earl, the evil being out to destroy mankind.",
      release_date: "2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1760.jpg"},

      [genres[7], genres[21], genres[1], genres[18]]
      ],
[
{
      title: "Pretty Guardian Sailor Moon, Vol. 3",
      author: "Naoko Takeuchi",
      synopsis: "Tuxedo Mask gone bad?! As more of her closest allies fall under the power of the evil Queen Beryl, Usagi comes closer to discovering the truth behind her past. The stage is set for an all-out battle for the fate of Earth between the Sailor Guardians and the forces of evil. But when the dust settles, a little girl calling herself “Usagi” falls from the sky and right into the arms of Mamoru. What is her connection to Sailor Moon and why does she want the Legendary Silver Crystal?This new edition of Sailor Moon features: - An entirely new, incredibly accurate translation- Japanese-style, right-to-left reading- New cover art never before seen in the U.S.- The original Japanese character names- Detailed translation notes",
      release_date: "October 23rd 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1761.jpg"},

{
      title: "Pretty Guardian Sailor Moon, Vol. 5",
      author: "Naoko Takeuchi",
      synopsis: "Chibi-Usa gets sucked into the far reaches of space-time and vanishes! It’s up to Tuxedo Mask to reach her and get her back safely while Sailor Moon and the others must escape Nemesis and the evil clutches of Wiseman and his cronies. But as Tuxedo Mask travels through the space-time storm, he encounters an ominous woman claiming to be his daughter! Who is this strange woman? Is she really Chibi-Usa?!This new edition of Sailor Moon features:- An entirely new, incredibly accurate translation- Japanese-style, right-to-left reading- New cover art never before seen in the U.S.- The original Japanese character names- Detailed translation notes",
      release_date: "December 22nd 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1762.jpg"},

{
      title: "Pretty Guardian Sailor Moon, Vol. 10",
      author: "Naoko Takeuchi",
      synopsis: "The threat of the Dead Moon Circus is so great that the outer planet Guardians return to fight alongside their compatriots. But with Usagi now coughing up black blood as well, are they too late? And to make things worse, Queen Nehelenia's servant, Zirconia, casts another curse upon Usagi and Mamoru, sending them both back into childhood. However, Helios whisks away their spirits to Elysion, where they manage to break free and return to their true forms. After they rejoin their companions, the final showdown against Queen Nehelenia herself begins! Will the Sailor Guardians and Tuxedo Mask manage to save Earth and Elysion before the Queen transforms them into eternal realms of nightmares?",
      release_date: "May 21st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1763.jpg"},

{
      title: "Pretty Guardian Sailor Moon, Vol. 2",
      author: "Naoko Takeuchi",
      synopsis: "The mysterious Tuxedo Mask has revealed his identity, forcing Usagi to come to terms with her growing affections for the masked vigilante, all the while defending the people of Earth from renewed attacks by the sinister “enemy”. Everything threatens to overwhelm even Sailor Moon when suddenly a new Sailor Guardian appears. Could this new Guardian be the Moon Princess the Sailor Guardians are sworn to protect?",
      release_date: "September 22nd 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1764.jpg"},

{
      title: "Pretty Guardian Sailor Moon, Vol. 6",
      author: "Naoko Takeuchi",
      synopsis: "Just when all seems well again in the world, another enemy appears. Two new figures from the private school Mugen Academy appear and take a special interest in Sailor Moon and company. Who are they, and do they have anything to do with the strange occurrences that are suddenly taking place? Meanwhile, the appearance of two new Guardians takes everyone by surprise as our favorite Sailor heroes must once again face off against new enemies to save the world.This new edition of Sailor Moon features:  - An entirely new, incredibly accurate translation  - Japanese-style, right-to-left reading  - New cover art never before seen in the U.S.  - The original Japanese character names  - Detailed translation notes",
      release_date: "January 23rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1765.jpg"},

{
      title: "Pretty Guardian Sailor Moon, Vol. 7",
      author: "Naoko Takeuchi",
      synopsis: "Old friends and new enemies lurk in the mysteries surrounding Mugen Academy. The Death Busters crave the Hoste, the human energies, of Sailor Moon and her friends--and they’ll prey on the girls’ dreams and weaknesses to get it! Furthermore, prophetic dreams hint of “talismans” that could awaken a “Deity of Destruction.” Could these things be connected to the guardians’ power? And are the Sailor Senshi capable of murdering the innocent to save the entire world?",
      release_date: "February 23rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1766.jpg"},

{
      title: "Pretty Guardian Sailor Moon, Vol. 9",
      author: "Naoko Takeuchi",
      synopsis: "Amidst the chaos caused by Usagi and Chibi-Usa's body swap, courtesy of the Amazoness PallaPalla, the Sailor Guardians' primary concern remains Mamoru's illness and its possible link to the newcomers in town, the Dead Moon Circus. The Amazonesses and their circus animal lackeys go after the Guardians one by one, tempting them with false visions. However, each of the Guardians manage to defeat the enemy after their inner selves shows them their individual heart crystals and new power. Meanwhile, it is still a toss up who the 'young maiden' is that Elysion priest Helios seeks: She who shall find and unlock the Golden Crystal that will save Earth, Elysion and Mamoru!",
      release_date: "April 23rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1767.jpg"},

{
      title: "Pretty Guardian Sailor Moon, Vol. 8",
      author: "Naoko Takeuchi",
      synopsis: "Chibi Usa’s sickly friend Hotaru isn’t just Sailor Saturn, Deity of Destruction. She’s also possessed by Master Pharaoh 90. Facing this cataclysmic power will be impossible--unless Sailor Moon can unite the powers of every Guardian of the Solar System. Then, when the moon eclipses the sun, a mystical unicorn begs for help. An elaborate ship floats through the sky, and Usagi and Chibi-Usa have trouble seeing eye to eye...",
      release_date: "March 23rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1768.jpg"},

{
      title: "Pretty Guardian Sailor Moon, Vol. 4",
      author: "Naoko Takeuchi",
      synopsis: "A new group calling themselves Black Moon is after Usagi and the rest of the Sailor Guardians, wielding a new power known only as the Malefic Black Crystal. Chibi-Usa may be the key to it all, but to find the answers and rescue her kidnapped friends, Usagi will have to journey through time to the 30th century and discover what fate has in store.  This new edition of Sailor Moon features:  - An entirely new, incredibly accurate translation  - Japanese-style, right-to-left reading  - New cover art never before seen in the U.S.  - The original Japanese character names  - Detailed translation notes",
      release_date: "November 21st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1769.jpg"},

      [genres[4], genres[13], genres[10], genres[17]]
      ],
[
{
      title: "Godchild, Volume 03",
      author: "Kaori Yuki",
      synopsis: "A grotesque gift holds a clue to the Cain family past; a mortician's daughter has deadly designs on one of Cain's closest friends; and a woman from Riff's past may have murder on her mind. Enjoy three new tales destined to delight and disturb from the imagination of master storyteller Kaori Yuki!",
      release_date: "June 19th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1770.jpg"},

{
      title: "Godchild, Volume 05",
      author: "Kaori Yuki",
      synopsis: "Cain crosses a high official of the secret society of DELILAH when he attempts to stop a massacre of socialites at the lushly restored Crimone Gardens. And later, an old nursery rhyme plays out to eerie perfection during a fateful carriage ride in the sinister 'Solomon Grundy's Sunday.'",
      release_date: "February 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1771.jpg"},

{
      title: "Godchild, Volume 06",
      author: "Kaori Yuki",
      synopsis: "Cain crosses a high official of the secret society of DELILAH when he attempts to stop a massacre of socialites at the lushly restored Crimone Gardens. And later, an old nursery rhyme plays out to eerie perfection during a fateful carriage ride in the sinister 'Solomon Grundy's Sunday.'",
      release_date: "June 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1772.jpg"},

{
      title: "Godchild, Volume 07",
      author: "Kaori Yuki",
      synopsis: "Shall the son suffer for the continued sins of the father? Alexis hatches an evil plan involving a beautiful girl with a sick fascination for his son. And could Jizabel's hatred of Cain also stem from their father? Step into the past as we learn more about the tortured early life of Dr. Disraeli!",
      release_date: "2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1773.jpg"},

{
      title: "Godchild, Volume 08",
      author: "Kaori Yuki",
      synopsis: "It is time for the truth to be told. At last, all the secrets of the Hargreaves family will emerge from the dark into the harsh light of day, as Kaori Yuki wraps up Cain's epic adventures. Is Cain ready to find out who he truly is? Are  ready?",
      release_date: "January 19th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1774.jpg"},

{
      title: "Godchild, Volume 01",
      author: "Kaori Yuki",
      synopsis: "Deep in the heart of 19th century London, a young nobleman named Cain walks the shadowy cobblestone streets of the aristocratic society into which he was born. Forced to become an earl upon the untimely death of his father, Cain assumes the role of head of the Hargreaves, a noble family with a dark past. With Riff, his faithful manservant, and Mary Weather, his 10-year-old half sister, Cain investigates the mysterious crimes that seem to follow him wherever he goes.",
      release_date: "November 19th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1775.jpg"},

{
      title: "Godchild, Volume 02",
      author: "Kaori Yuki",
      synopsis: "Deep in the heart of 19th Century London, a young nobleman named Cain walks the shadowy cobblestone streets of the aristocratic society in which he was born. Forced to become an Earl upon the untimely death of his father, Cain assumes the role of head of the Hargreaves, a noble family with a dark past. With Riff, his faithful manservant, and Marie Weather, his 10-year-old half sister, Cain investigates the mysterious crimes that seem to follow him wherever he goes.",
      release_date: "2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1776.jpg"},

{
      title: "Godchild, Volume 04",
      author: "Kaori Yuki",
      synopsis: "A grotesque gift holds a clue to the Cain family past; a mortician's daughter has deadly designs on one of Cain's closest friends; and a woman from Riff's past may have murder on her mind. Enjoy three new tales destined to delight and disturb from the imagination of master storyteller Kaori Yuki!",
      release_date: "October 18th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1777.jpg"},

      [genres[21], genres[8], genres[18]]
      ],
[
{
      title: "Fairy Tail, Vol. 02",
      author: "Hiro Mashima",
      synopsis: "THE BOOK OF SECRETS Beautiful celestial wizard Lucy has teamed up with the crazy fire wizard Natsu and his bizarre flying cat, Happy. Their job: to steal a book from the notorious Duke Everlue. But the eccentric Everlue has killed wizards before, and Lucy’s team is walking right into his death trap!",
      release_date: "January 12th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1778.jpg"},

{
      title: "Fairy Tail, Vol. 05",
      author: "Hiro Mashima",
      synopsis: "GRAY-OUTGray’s old training companion Reitei Lyon is trying to revive a calamity demon, but doing so will make their former master’s sacrifice meaningless! What’s the secret of Gray’s past, and why does he keep taking off his clothing? Gray is revealed (metaphorically speaking) in this pivotal volume!",
      release_date: "July 17th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1779.jpg"},

{
      title: "Fairy Tail, Vol. 06",
      author: "Hiro Mashima",
      synopsis: "DEMON RISINGHotshot Natsu and his cool rival Gray are fighting to stop a calamity demon from being revived by Gray’s fellow disciple Lyon and Zalty, a master of Lost Magic. But while they try to defeat the bad guys, the magical ice binding the demon keeps melting. Then a grudge between Fairy Tail and a rival guild turns to all-out war!Includes special extras after the story!",
      release_date: "September 14th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1780.jpg"},

{
      title: "Fairy Tail, Vol. 40",
      author: "Hiro Mashima",
      synopsis: "DRAGONS VS. WIZARDS!Seven years ago, one dragon defeated all of Fairy Tail. Now they're up against seven! How can Natsu and Fairy Tail defeat the most destructive force in history?! The secrets of the dragon slayers are revealed in the stunning climax of the Festival of the Dragon King!",
      release_date: "October 17th 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1781.jpg"},

{
      title: "Fairy Tail, Vol. 47",
      author: "Hiro Mashima",
      synopsis: "LOST IN THE ETHERIOUS Desperate to stop the Face bombs from going off, Natsu and Gajeel face off against Tempester and Torafuzar from Tartaros! Meanwhile, Gray emerges from his dramatic encounter with Silver with a new power: demon slayer magic, and Erza finally reaches the control room only to find it infested by demons! The Book of Zeref's worst denizens stand arrayed before Fairy Tail's wizards... Can they defeat them and preserve the magic of the entire continent?",
      release_date: "January 16th 2015",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1782.jpg"},

{
      title: "Fairy Tail, Vol. 10",
      author: "Hiro Mashima",
      synopsis: "SHADOWS OF THE PAST Erza Scarlet is the most kick-butt woman wizard in Fairy Tail, but in the past this indomitable fighter was . . . a slave? Now she finds out that her old companions have completed the evil device they were forced to build while held in slavery: the Tower of Heaven. What's more, their wicked master requires a sacrifice: Erza! Includes special extras after the story!",
      release_date: "May 16th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1783.jpg"},

{
      title: "Fairy Tail, Vol. 03",
      author: "Hiro Mashima",
      synopsis: "MUSICAL MURDERSThe evil members of the Dark Guild Eisenwald have found a cursed flute that can murder anyone who hears its music–and now they’ve taken over a midtown train station with a very loud public address system. Only Natsu and his crazy friends (including a flying cat) can stop them!Includes special extras after the story!",
      release_date: "March 16th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1784.jpg"},

{
      title: "Fairy Tail, Vol. 11",
      author: "Hiro Mashima",
      synopsis: "WHEN CHECKMATE MEANS DEATH! Erza's childhood friend Jellal has started to play an elaborate board game--with Natsu and his team as enemy pieces to be eliminated. Meanwhile, Siegrain is trying to get the Magic Council to fire a weapon that will wipe out Jellal's tower, killing everyone within it--including our heroes from Fairy Tail!",
      release_date: "March 3rd 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1785.jpg"},

{
      title: "Fairy Tail, Vol. 1",
      author: "Hiro Mashima",
      synopsis: "THE WICKED SIDE OF WIZARDRYCelestial wizard Lucy wants to join the Fairy Tail, a club for the most powerful wizards. But instead, her ambitions land her in the clutches of a gang of unsavory pirates led by a devious magician. Her only hope is Natsu, a strange boy she happens to meet on her travels. Natsu's not your typical hero, he gets motion sickness, eats like a pig, and his best friend is a talking cat. With friends like this, is Lucy better off with her enemies?",
      release_date: "December 15th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1786.jpg"},

{
      title: "Fairy Tail, Vol. 08",
      author: "Hiro Mashima",
      synopsis: "Gajeel is a dragon slayer who can shoot huge iron pillars from his body with crushing precision, while dragon slayer Natsu fights with devastating flame attacks. Their fierce battle began when Gajeel’s wizard guild, Phantom Lord, assaulted rival guild Fairy Tail–but can either headquarters withstand two such destructive forces?",
      release_date: "January 17th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1787.jpg"},

{
      title: "Fairy Tail, Vol. 45",
      author: "Hiro Mashima",
      synopsis: "Fairy Tail takes place in a world filled with magic. 17-year-old Lucy is an attractive mage-in-training who wants to join a magician's guild so that she can become a full-fledged magician. The guild she dreams about joining is the most famous in the world, and it is known as the Fairy Tail. One day she meets Natsu, a boy raised by a Dragon who mysteriously left him when he was young. Natsu has devoted his life to finding his Dragon father. When Natsu helps Lucy out of a tricky situation, she discovers that he is a member of the Fairy Tail magician's guild, and our heroes' adventure together begins.",
      release_date: "September 17th 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1788.jpg"},

{
      title: "Fairy Tail, Vol. 04",
      author: "Hiro Mashima",
      synopsis: "S IS FOR SCREWUPS-Class quests are so dangerous that one false move means certain death! Now loose cannon Natsu, rookie Lucy, and nearly powerless Happy have embarked on a stolen S-Class quest, setting out for the Demon Island. Can anyone stop them before they get themselves killed?",
      release_date: "May 17th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1789.jpg"},

{
      title: "Fairy Tail, Vol. 09",
      author: "Hiro Mashima",
      synopsis: "FADING WIZARD Stylish wizard Loke is the ladies' man of the Fairy Tail guild. But now he's suddenly broken up with all his girlfriends, claiming he simply doesn't have the time! It turns out that Loke's life may be about to end, and Lucy, a freshman, is the only one who can save him! But what can a first-year wizard do that an experienced wizard can't?",
      release_date: "March 17th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1790.jpg"},

{
      title: "Fairy Tail, Vol. 57",
      author: "Hiro Mashima",
      synopsis: "  Prepared to do what they need to or die trying, Fairy Tail faces off against the vast hordes of the Alvarez Empire. They've retaken the port town of Hargeon, but the battles are hard, and every victory is costly. Fairy Tail's prisoner, Brandish, makes an offer to act as a go-between in a negotiation with August, a man known as the strongest of the Spriggan 12. Fairy Tail is desperate, but can Brandish be trusted? Meanwhile, Gajeel's group has fought a fierce battle to rescue the members of Saber Tooth and regain lost ground, but powerful enemies are close, which could mean more despair for the embattled members of Fairy Tail...",
      release_date: "September 16th 2016",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1791.jpg"},

{
      title: "Fairy Tail, Vol. 12",
      author: "Hiro Mashima",
      synopsis: "THE DOOMSDAY WEAPON!   Erza and Natsu are trying to stop Jellal from reviving the most feared black wizard the world has ever known! To help in the effort, the Magic Council launches its magic of mass destruction, Etherion. But Jellal knows that the Council’s attack could kill both him and the Fairy Tail wizards—and he isn’t running away. What is he plotting?  ",
      release_date: "October 17th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1792.jpg"},

{
      title: "Fairy Tail, Vol. 56",
      author: "Hiro Mashima",
      synopsis: "THE SHOW MUST GO ONDespite the Spriggan 12 being reduced to eight, both sides remain uncertain of victory.. In Halgeon, the Warrior Queen Di Maria has trapped the Sky Sisters in a tricky situation. Meanwhile, back at Fairy Tail, members start disappearing at the hands of Jacob the Assassin, but Natsu is still fast asleep! The decisive battle for Magnolia remains perilous...the waves of formidable enemies keep coming, but the wizards of Fiore are ready to fight!",
      release_date: "July 15th 2016",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1793.jpg"},

{
      title: "Fairy Tail, Vol. 41",
      author: "Hiro Mashima",
      synopsis: "FAIRY TOTSFairy Tail visits a town of giants frozen in magical ice that Gray can't dispel and Natsu can't melt! At its heart is supposedly an Eternal Flame… but how can a flame be frozen? And they're not the only ones after the town's secrets. Three treasure hunters block their path, while an old nemesis lurks in the shadows. To top it off, a magical trap makes all the Fairy Tail wizards' problems seem much bigger!",
      release_date: "December 17th 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1794.jpg"},

{
      title: "Fairy Tail, Vol. 13",
      author: "Hiro Mashima",
      synopsis: "THE DOOMSDAY WEAPON! Master Makarov’s grandson, the too-powerful wizard Laxus, has seen the new Fairy Tail guild hall and doesn’t like what he sees! So he gathers some of the strongest wizards in the guild, and starts a Fairy Tail civil war!",
      release_date: "December 17th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1795.jpg"},

{
      title: "Fairy Tail, Vol. 43",
      author: "Hiro Mashima",
      synopsis: "FACE OFFThe demons of Tartaros are murdering Council members to try to get to a secret weapon with the power to wipe out all who would oppose them in one fell swoop. But what is this weapon? How could killing ex-Council members help them get it? And how do they even know about it in the first place? Natsu and his friends need to solve these mysteries if they hope to stand up to the demons!",
      release_date: "May 16th 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1796.jpg"},

{
      title: "Fairy Tail, Vol. 07",
      author: "Hiro Mashima",
      synopsis: "GUILD WARFairy Tail’s rival guild, Phantom Lord, has taken the competition to dangerous levels by smashing the Fairy Tail building and nearly killing three wizards. What is Fairy Tail response? A full-frontal assault on Phantom Lord! But this clash is all part of the Phantom Lord evil plot to capture a coveted prize.Includes special extras after the story!",
      release_date: "November 16th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1797.jpg"},

{
      title: "Fairy Tail, Vol. 46",
      author: "Hiro Mashima",
      synopsis: "FACE THE COLD TRUTHAs the bloody battle against the Nine Demon Gates and their king Mard Geer engulfs all of Fairy Tail, the guild learns a terrible secret: the threat from Face, the magic pulse bomb, isn’t over yet! Meanwhile, the ice demon slayer known as Silver faces off against Gray, and the bond that ties their fates together is revealed! The truth sends Gray from shivering terror into an icy rage, but what greater sadness waits in the fight ahead?",
      release_date: "November 17th 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1798.jpg"},

      [genres[0], genres[4], genres[1], genres[10]]
      ],
[
{
      title: "Trinity Blood, Vol. 12",
      author: "Kiyo Kyujyo",
      synopsis: "With the Pope injured and what seems like the entire Vatican turned against them, Esther and Schera must fight for their lives, as well as attempt to reveal Cardinal D'Annuncio's fiendish plot. But with so much blood already shed, can even the Lady Saint and her powerful ally escape unscathed? Then, the curtain closes on the story of Istvan, and a new story begins as Esther and co. head towards the island nation of Albion! Sell Sheet Keynote:In this gorgeous, gothic-action series-part of the super-popular Trinity Blood franchise-the very survival of the human race is at stake.",
      release_date: "August 24th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1799.jpg"},

{
      title: "Trinity Blood, Vol. 11",
      author: "Kiyo Kyujyo",
      synopsis: "In the damaged city of Istvan, where the populace clings to the hope of their Holy Saint Esther, intrigue and vengeance lurk around every corner. When faith and betrayal are blended in the dark shadows of the alleys and back streets, will Esther and Abel ever be able to find one another again?",
      release_date: "October 17th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1800.jpg"},

{
      title: "Trinity Blood, Vol. 1",
      author: "Kiyo Kyujyo",
      synopsis: "In a dark and distant future, Armageddon has giving rise to the fabled Second Moon--and a perpetual war between the vampires and the humans! Esther is a nun in the city of Istavan. When she crosses paths with Abel Nightroad, a priest sent from the Vatican to combat the local order of vampires, the two form a holy alliance to battle the most evil of threats: Gyula, the leader of the vampires. In this gorgeous, gothic-action series--part of the super-popular Trinity Blood franchise--the very survival of the human race is at stake!",
      release_date: "March 17th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1801.jpg"},

{
      title: "Trinity Blood, Vol. 4",
      author: "Kiyo Kyujyo",
      synopsis: "The Gothic-action masterpiece continues as Esther remembers the cold, cruel day when a heartless Dietrich betrayed her. And now, among the flames, Radu is about to do the same to Ion...until Brother Petros and his Department of Inquisition arrive. Weakened after his previous fight with Petros, Abel is just barely keeping himself under control and, as the battle rages, Esther may once again find herself betrayed by someone she trusted...",
      release_date: "June 17th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1802.jpg"},

{
      title: "Trinity Blood, Vol. 7",
      author: "Kiyo Kyujyo",
      synopsis: "Astaroshe and Abel present their case to the Diwan, while Ion and Esther get lost in the city. They meet a strange young tea-seller named Seth, and have a run-in with Dietrich's vampire zombie soldiers, one of whose victims reveals that Radu may be alive...just as the man himself appears before Abel and accuses the party from the west of conspiring to assassinate the Empress.",
      release_date: "July 15th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1803.jpg"},

{
      title: "Trinity Blood, Vol. 6",
      author: "Kiyo Kyujyo",
      synopsis: "Ion awakes to find that he is still alive, while Esther confronts Abel in the underground waterway. Orders have been given to recover Radu's body from the ocean, but is he really dead? Older teens.",
      release_date: "February 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1804.jpg"},

{
      title: "Trinity Blood, Vol. 9",
      author: "Kiyo Kyujyo",
      synopsis: "The war between humans and vampires continues as a struggle between two factions: the Vatican and the New Human Empire. Amidst the bloodshed and violence, many desire a peaceful coexistence between the two species. But standing between them is a group of vampire extremists.",
      release_date: "May 17th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1805.jpg"},

{
      title: "Trinity Blood, Vol. 2",
      author: "Kiyo Kyujyo",
      synopsis: " ",
      release_date: "July 17th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1806.jpg"},

{
      title: "Trinity Blood, Vol. 8",
      author: "Kiyo Kyujyo",
      synopsis: "A plot to assassinate the Methuselah Emperor is revealed at last, but Ion, Esther and company are accused of the crime! Astharoshe struggles with her own immortality and how feelings of loyalty and love can change over the course of centuries, and Dietrich has yet another cruel twist of fate in store for his beloved Esther.",
      release_date: "December 16th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1807.jpg"},

{
      title: "Trinity Blood, Vol. 10",
      author: "Kiyo Kyujyo",
      synopsis: "In a post-apocalyptic world, humans represented by the Vatican and vampires of the New Human Empire struggle for world domination. Standing in the way is a group of vampire extremists. The only thing to do is to send in a vampire who preys on other vampires.",
      release_date: "February 16th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1808.jpg"},

{
      title: "Trinity Blood, Vol. 5",
      author: "Kiyo Kyujyo",
      synopsis: "Esther is left terrified by Abel's form as the Crusnik while the Vatican agents, along with the injured Petros, head east to return Ion to the Empire. But an enormous artificial sandstorm is unleashed by Radu in a final attempt to destroy the city of Carthage, and new alliances must be forged in order to halt its devastating path, while an old friend is waiting for Abel in a secret underground chamber...",
      release_date: "September 17th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1809.jpg"},

      [genres[4], genres[21], genres[18]]
      ],
[
{
      title: "Hikaru no Go, Vol. 10: Lifeline",
      author: "Yumi Hotta",
      synopsis: "The main round of the pro test has begun. Everyone's feeling the pressure, no one more so than Hikaru's friend Isumi, who has failed the test twice before. Fighting off his feelings of self-doubt, Isumi faces his next opponent, who turns out to be Hikaru. But a careless mistake lands the pair in an awkward position!",
      release_date: "December 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1810.jpg"},

{
      title: "Hikaru no Go, Vol. 2: First Battle",
      author: "Yumi Hotta",
      synopsis: "With sure ans steady moves, Sai and Hikaru are making a name Hikaru Shindo as the one who might possibly beat the venerable Akira Toya. Wait. Who are we kidding? Hikaru: sure and steady...? Yeah, right! In between all the shenanigans Hikaru gets himself into during school and after, and dealing with Sai's unhappy sobs when Hikaru tries to run away from playing Go, his fame is growing. Principals, teachers and Go tournament kids alike are all wondering who this unruly bronco of a Go player is. Tetsuo, a Shogi punk who has a beef of his own with Akira, harasses poor Hikaru at first - then later puts him on his own Go team! Meanwhile, Akira, looking for a rematch with Hikaru, is surprised to find Hikaru playing with a third-rate Go club. You won't be disappointed with the further adventures of this dynamic Go duo!",
      release_date: "August 4th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1811.jpg"},

{
      title: "Hikaru no Go, Vol. 4: Divine Illusions",
      author: "Yumi Hotta",
      synopsis: "Another tournament is underway. Three members of the cutthroat Kaio Go Club face three members of the budding Haze Go Club. As tensions rise, the antagonism between both teams culminates in a telling match between Akira and Hikaru. Who will win? Which team will win? Even if the answer surprises you, the ensuing drama won't.After the excitement of the tournament, there's nothing left for Hikaru and Kimihiro to do...except learn how to play more Go! In the process, Hikaru finds a way to let Sai play all the Go his fluttering heart desires without everybody and their mother pointing and staring at Hikaru. Find out what Hikaru discovers in this volume of !",
      release_date: "December 2nd 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1812.jpg"},

{
      title: "Hikaru's Go 1-23",
      author: "Yumi Hotta",
      synopsis: "Complete Indonesian Edition",
      release_date: "January 1st 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1813.jpg"},

{
      title: "Hikaru no Go, Vol. 7: The Young Lions Tournament",
      author: "Yumi Hotta",
      synopsis: "Hikaru Shindo is like any sixth-grader in Japan: a pretty normal school boy with a two-tone head of hair and a penchant for antics. One day, he finds an old bloodstained GO board in his grandfather's attic-and that's when things get really interesting. Trapped inside the GO board is Fujiwara-no-Sai, the ghost of an ancient GO master who taught the strategically complex board game to the Emperor of Japan many centuries ago. In one fateful moment, Sai becomes a part of Hikaru's consciousness and together, through thick and thin, they make an unstoppable GO-playing team. Will they be able to defeat GO players who have dedicated their lives to the game? Will Sai achieve the 'Divine Move' so he'll finally be able to rest in peace? Begin your journey with Hikaru and Sai in this first volume of HIKARU NO GO.",
      release_date: "June 2nd 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1814.jpg"},

{
      title: "Hikaru no Go, Vol. 11: Fierce Battle",
      author: "Yumi Hotta",
      synopsis: "Hikaru's classmate Ochi has won enough games to guarantee his place among the top three players who will pass the pro test. Hikaru, on the other hand, still needs to win more games, and he'll soon face his friend Waya and Ochi himself, who has been preparing for their match with Akira's help! When the dust clears, who will be left standing?",
      release_date: "March 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1815.jpg"},

{
      title: "Hikaru no Go, Vol. 1: Descent of the Go Master",
      author: "Yumi Hotta",
      synopsis: "Hikaru Shindo is like any sixth-grader in Japan: a pretty normal school boy with a two-tone head of hair and a penchant for antics. One day, he finds an old bloodstained Go board in his grandfather's attic - and that's when thing get really interesting. Trapped inside the Go board is Fujiwara-no-Sai, the ghost of an ancient Go master who taught the strategically complex bpard game to the Emperor of Japan many centuries ago. In one fateful moment, Sai becomes a part of Hikaru's consciousness and together, through thick and thin, they make an unstoppable Go-playing team. Will they be able to defeat Go players who have dedicated their lives to the game? Will Sai achieve the 'Divine Move' so he'll finally be able to rest in peace? Begin your journey with Hikaru and Sai in this first volume of Hikaru no Go.",
      release_date: "April 30th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1816.jpg"},

{
      title: "Hikaru no Go, Vol. 3: Preliminary Scrimmage",
      author: "Yumi Hotta",
      synopsis: "Akira is beginning a new school year at Kaio Middle School. With his daunting reputation as the Toya Meijin's son, Akira finds he must prove himself to more than a few mean and jealous classmates. And with the help of upper-classman Yuri Hidaka, Akira finds the confidence to preserve in his hunt to beat Hikaru. Meanwhile, Hikaru is having a hard enough time just trying to find a third teammate to play in the Haze Middle School Go CLub. A possible teammate arrives in the form of Yuki Mitani - but will he join their club or continue to swindle old timers for their pocket change?",
      release_date: "October 4th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1817.jpg"},

{
      title: "Hikaru no Go, Vol. 21: Great Expectations",
      author: "Yumi Hotta",
      synopsis: "The Hokuto Cup, a new tournament for young players from Japan, China and Korea, is looming, and Hikaru's rival Akira has already secured one of the coveted three places on Japan's team. While Hikaru battles his way to one of the two remaining spots, Akira's father baffles the go world with his unexpected retirement!",
      release_date: "April 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1818.jpg"},

{
      title: "Hikaru no Go, Vol. 23: Endgame",
      author: "Yumi Hotta",
      synopsis: " Hikaru is in the toughest battle of his life when he faces Ko Yong Ha, Korea's top player in the Hokuto Cup tournament. The stakes, however, aren't for personal glory but for something far deeper, something that differentiates a mere game from a way of life. Hikaru knows what this means to him, but will he understand what it means to the new wave of go players and, indeed, the game of go itself? ",
      release_date: "September 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1819.jpg"},

{
      title: "Hikaru no Go, Vol. 12: Sai's Day Out",
      author: "Yumi Hotta",
      synopsis: "Hikaru's career as a professional Go player begins! In his first game he must face veteran player Toya Meijin, none other than Akira's father. But to Sai, this round is . Then Sai attempts to teach a cheating Go player a lesson he'll never forget... Will Hikaru's ghostly master do him proud, or make him like an amateur?",
      release_date: "May 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1820.jpg"},

{
      title: "Hikaru no Go, Vol. 8: The Pro Test Preliminaries: Day Four",
      author: "Yumi Hotta",
      synopsis: ":Hikaru faces the preliminary rounds of the pro test, during which he must eliminate not only his classmates at the insei school but also any outsiders who want to take the test. One of them in particular appears to know how to exploit Hikaru's weaknesses, and poor Hikaru seems powerless to stop him.",
      release_date: "August 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1821.jpg"},

{
      title: "Hikaru no Go, Vol. 19: One Step Forward!",
      author: "Yumi Hotta",
      synopsis: "An ancient ghost possesses Hikaru and unleashes his hidden genius!R to L (Japanese Style). An ancient ghost possesses Hikaru and unleashes his hidden genius!  Hikaru is determined to move carefully, step by step, up the ladder of professional go. He pours his energy into it, striving to get closer to his ultimate goal--playing the Divine Move. After many games he finally gets to play a 7-dan, who turns out to be someone he's confronted before, though not across a board. Their mutual animosity fires their competitiveness, pushing them to play with maximum intensity!",
      release_date: "October 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1822.jpg"},

{
      title: "Hikaru no Go, Vol. 13: First Professional Match",
      author: "Yumi Hotta",
      synopsis: "A normal sixth grader who finds himself dealing with a centuries-old ghost and a board game that's even older.",
      release_date: "August 3rd 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1823.jpg"},

{
      title: "Hikaru no Go, Vol. 9: The Pro Test Begins",
      author: "Yumi Hotta",
      synopsis: "Practicing at Go salons is turning out to be more fun than Hikaru thought. But at one salon, he meets his match in Suyong Hong, a sullen 12-year-old who is studying for the pro test in his native Korea. By mistake, Hikaru insults Suyong, and now the only way they can settle their differences is by playing a grudge match!",
      release_date: "October 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1824.jpg"},

{
      title: "Hikaru no Go, Vol. 6: The Insei Exam",
      author: "Yumi Hotta",
      synopsis: "Hikaru Shindo is like any sixth-grader in Japan: a pretty normal school boy with a two-tone head of hair and a penchant for antics. One day, he finds an old bloodstained GO board in his grandfather's attic-and that's when things get really interesting. Trapped inside the GO board is Fujiwara-no-Sai, the ghost of an ancient GO master who taught the strategically complex board game to the Emperor of Japan many centuries ago. In one fateful moment, Sai becomes a part of Hikaru's consciousness and together, through thick and thin, they make an unstoppable GO-playing team. Will they be able to defeat GO players who have dedicated their lives to the game? Will Sai achieve the 'Divine Move' so he'll finally be able to rest in peace? Begin your journey with Hikaru and Sai in this first volume of HIKARU NO GO.",
      release_date: "April 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1825.jpg"},

{
      title: "Hikaru no Go, Vol. 5: Start",
      author: "Yumi Hotta",
      synopsis: "After stumbling across a haunted Go board, irresponsible Hikaru Shindo discovers that the spirit of a master player has taken up residence in his consciousness. In his pursuit of the 'Divine Move', Fujiwara-no-Sai awakens in Hikaru an untapped genius for the game, and soon the scoolboy is chasing his own dream - defeating the famed Go prodigy Akira Toya!Sai's games on the Internet have Go players around the world guessing his true identity. Among them is Hikaru's rival, Akira, who suspects that Hikaru is hiding behind the screen name 'sai'. So intense is Akira's interest, in fact, that he skips the first day of his pro exam for a re-match. And on a rainy Sunday, the battle of wills begins anew...",
      release_date: "February 2nd 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1826.jpg"},

      [genres[0], genres[10], genres[19], genres[18]]
      ],
[
{
      title: "Yu Yu Hakusho, Volume 4: Training Day",
      author: "Yoshihiro Togashi",
      synopsis: "The legendary exorcist Genkai is about to pass on her explosive demon-smiting techniques to just one student. Trouble is, one of the people battling for the honor is a demon in disguise: the sadistic Rando. Can Yusuke defeat him? Complicating matters is the quartet of demonic criminals plotting a monstrous attack on the mortal world.",
      release_date: "1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1827.jpg"},

{
      title: "Yu Yu Hakusho, Volume 2: Lonesome Ghost",
      author: "Yoshihiro Togashi",
      synopsis: "A few weeks ago, Yusuke Urameshi was the ttoughest 8th-grader in his junior high; now, he's taking the toughest test of his life, the test to see if he will come back to life or stay a wandering spirit forever! Until he passes the test, his body is in a coma, and he can only come back to life one day a month. But Yusuke and his spirit guide, Botan, are in for a lot more than they bargained for as evil curses, bullies, and the ghost of a scary little girl all stand in the way of resurrection! And when a real-world fire threatens the life of Yusuke's friend Keiko, Yusuke must make a brave sacrifice, or there'll be another ghost joining him in his haunting...",
      release_date: "1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1828.jpg"},

{
      title: "Yu Yu Hakusho, Volume 9: The Huge Ordeal!!",
      author: "Yoshihiro Togashi",
      synopsis: "After Yusuke Urameshi grounds a 'flighty' Jin for good, Team Urameshi should be one step closer to victory. But thanks (more like no thanks) to a pervading conspiracy among the organizers of the Dark Tournament, Team Urameshi's plate is wiped clean of soldiers left to fight in the twisted event.Meanwhile, Genkai formally reveals herself to Yusuke and gives him the final test to be the sole heir to her formidable technique - a concentrated ball of aura! But due to the conditions surrounding his 'second life,' Yusuke must be ready and able to inherit the technique - or he dies!",
      release_date: "December 1st 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1829.jpg"},

{
      title: "Yu Yu Hakusho, Volume 13: The Executors of a Dying Wish!!",
      author: "Yoshihiro Togashi",
      synopsis: "This is it, folks - the conclusion of the long and deadly Dark Tournament. But don't worry - there's lots more to come because a new adventure starts with this volume! After the Dark Tournament ends, Yusuke and his friends come home for a much deserved rest. The vacation is cut short when Yusuke is taken hostage by three classmates who have recently gained strange powers. It's up to Kuwabara and friends to try and rescue him. But without their star fighter's abilities, will they be up to the task?",
      release_date: "1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1830.jpg"},

{
      title: "Yu Yu Hakusho, Volume 1: Goodbye, Material World!",
      author: "Yoshihiro Togashi",
      synopsis: "Yusuke Urameshi was a tough teen delinquent until one selfless act changed his life... by ending it. When he died saving a little kid from a speeding car, the afterlife didn't know what to do with him, so it gave him a second chance at life. Now, Yusuke is a ghost with a mission, performing good deeds at the behest of Botan, the spirit guide of the dead, and Koenma, her pacifier-sucking boss from the 'other side.' But what strange things await him on the borderline between life and death?",
      release_date: "1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1831.jpg"},

{
      title: "Yu Yu Hakusho, Volume 17: Showdown!",
      author: "Yoshihiro Togashi",
      synopsis: "Yusuke and the gang finally face off against Sensui in a final battle to defeat him and close the portal to the demon plane. The furious exchange of devastating punches and reigun blasts push both Sensui and Yusuke beyond the limits, setting off a transformation that no one, least of all Yusuke, ever expected!As things wind down from the battle, it's time to tie up a few loose ends. Then just when it looks like Yusuke might get some time off for a change, another message from the demon plane arrives that will set Yusuke's final destiny in motion! But first Yusuke needs to ask Keiko a very important question...",
      release_date: "1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1832.jpg"},

{
      title: "Yu Yu Hakusho, Volume 14: A Bloody Past!!",
      author: "Yoshihiro Togashi",
      synopsis: "With the Dark Tournament far behind them, the gang is in a whole new mess! Someone is trying to pick up where Sakyo's dream of opening a portal from the demon plane into the human world left off. Already, energy from their evil world is seeping through.",
      release_date: "1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1833.jpg"},

{
      title: "Yu Yu Hakusho, Volume 10: Unforgivable!!",
      author: "Yoshihiro Togashi",
      synopsis: "Team Urameshi's successful campaign in the Dark Tournament continues after Fox Demon Kurama makes an honest monster out of Reverse Urashima. Too bad Reverse Uramshima's fellow Fractured Fairy Tale Shishiwakamaru silences him before he could divulge the truth about their team.Meanwhile, Team Urameshi suffers the biggest blow when one member bids them adieu... for good!",
      release_date: "1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1834.jpg"},

{
      title: "Yu Yu Hakusho, Volume 15: Showdown at the Eleventh Hour",
      author: "Yoshihiro Togashi",
      synopsis: "Kuwabara's been kidnapped! Unbeknownst to anyone--especially him--his aura sword is so powerful it can actually cut holes between dimensions, which is exactly what his kidnapper Sensui is after. But Yusuke's not giving up so easily and sets off in pursuit on a bicycle.Then Yusuke and his old friends and new allies are put to the test when they battle a bratty little kid in a deadly video game contest! From trivia to battle tennis, the contest heats up! Who will come out on top and who will face the dreaded 'Game Over'?",
      release_date: "1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1835.jpg"},

{
      title: "Yu Yu Hakusho, Volume 18: The Demon Plane Unification Tournament",
      author: "Yoshihiro Togashi",
      synopsis: "After the epic struggle to close the tunnel to the demon plane, Yusuke and the gang take some hard-earned time off. It's still a busy year, and Hiei and Kurama both spend time training and taking care of some loose ends from their pasts. Meanwhile, Yusuke trains with Raizen and ends up in charge of the old demon's domain!The other kings of the underworld won't stand for this state of affairs for long, so Yusuke proposes a new tournament, and the winner will be king of the demon plane!",
      release_date: "1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1836.jpg"},

{
      title: "Yu Yu Hakusho, Volume 11: Eat or Be Eaten!!",
      author: "Yoshihiro Togashi",
      synopsis: "The Dark Tournament is finally down to the wire. After a long trail of brutal bloodshed, the stage has been set for the ultimate showdown between Team Urameshi and Team Toguro. And now that Kurama can transform into a fox demon at will by drinking the potion from the Seed of De-Incarnation--a lovely parting gift from Suzuki, The Beautiful Fighter--his ferocious plants have been given a much-needed energy boost.Meanwhile, Sakyo reveals that his grand plan is to create a path between the demon plane and the human world, allowing powerful demons to come through and wreak havoc in the human realm. Could this be the beginning of the end for humans...?",
      release_date: "1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1837.jpg"},

{
      title: "Yu Yu Hakusho, Volume 5: Focus Your Mind as One!",
      author: "Yoshihiro Togashi",
      synopsis: "Yusuke Urameshi was just another street punk until he died in an unexpected act of self-sacrifice... and came back. Now he's the Underworld's official supernatural detective, charged with keeping the peace between the mortal and immortal realms.That peace has been shattered. A gang of demons called the Four Beasts is infecting humanity with a swarm of nasty supernatural brain bugs. The only way to control the bugs is with an enchanted whistle... and the only way to the whistle is straight through the Four Beasts! Yusuke and his fellow delinquent Kuwabara have descended into the Underworld to do a little exterminating, but the two human teenagers can't take down the toughest demonic criminals on the supernatural plane! Good thing they've got backup...",
      release_date: "March 1st 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1838.jpg"},

{
      title: "Yu Yu Hakusho, Volume 7: Knife-Edge Death Match",
      author: "Yoshihiro Togashi",
      synopsis: "Yusuke Urameshi was a teen delinquent until a selfless act changed his life... by ending it. The afterlife didn't know what to do with him, so he got a second chance at life. What strange things await him on the borderline between life and death?",
      release_date: "August 10th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1839.jpg"},

{
      title: "Yu Yu Hakusho, Volume 12: The Championship Match Begins!!",
      author: "Yoshihiro Togashi",
      synopsis: "When Kuwabara learns the truth about Genkai's demise, he takes the news hard, wondering why Yusuke waited so long to tell him. Then the elder Toguro reappears and taunts the team about Genkai's death! It's not a good idea to tease those experiencing great sorrow--a lesson the elder Toguro quickly learns, but not from the one you'd expect to teach him.Then it's the match you've all been waiting for--Yusuke vs. younger Toguro! Witness fisticuffs the likes of which you've never before seen! Toguro powers up to 80 percent full fighting capacity and emits an aura so toxic it melts the weakest of the demons watching the tournament--and that's just the beginning!",
      release_date: "1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1840.jpg"},

{
      title: "Yu Yu Hakusho, Volume 6: The Dark Tournament",
      author: "Yoshihiro Togashi",
      synopsis: "When the Black Book Club kidnaps a beautiful ice spirit named Yukina and torments her for the sake of her priceless crystal tears, Yusuki, teenage delinquent and part-time Underworld Detective, is dispatched to rescue Yukina and break up the club.",
      release_date: "June 1st 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1841.jpg"},

{
      title: "Yu Yu Hakusho, Volume 16: Into the Demon Plane!!",
      author: "Yoshihiro Togashi",
      synopsis: "Itsuki locks the others away in a separate dimension so Yusuke and Sensui can fight undisturbed. Under intense pressure, Sensui's real personality, suppressed for so long, starts to come out. Then Koenma shows up and things really start to get hot, forcing Yusuke to resort to desperate measures to draw their enemies out.Kuwabara and the rest of the crew escape Itsuki's clutches and plunge into the Demon Plane after Sensui. Meanwhile, the Underworld special defense force goes looking for Yusuke. What secret do they know about Yusuke that is enough to sign his death warrant?",
      release_date: "1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1842.jpg"},

{
      title: "Yu Yu Hakusho, Volume 8: Open Your Eyes!!",
      author: "Yoshihiro Togashi",
      synopsis: "Dr. Ichigaki's ultimate biological weapons are in the ring, but Team Urameshi is suddenly having a severe attack of conscience. After Kuwabara's enlightening reverie about how Dr. Ichigaki implanted blood-slaver nodes in the brains of Master Mitamura's martial-arts students, Yusuke and company just don't have the heart to conduct their demon-slaying business as usual.",
      release_date: "September 1st 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1843.jpg"},

{
      title: "Yu Yu Hakusho, Volume 3: In the Flesh",
      author: "Yoshihiro Togashi",
      synopsis: "Yusuke's new after-school job is working for Botan and Koenma, bringing in renegade demons. But when three demons - a soul-devouring ogre, a shape-shifter, and the deadly Hiei of the Thousand Eyes - escape to the human world with evil artifacts, Yusuke's job turns into a trial by fire.",
      release_date: "1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1844.jpg"},

      [genres[0], genres[10], genres[20], genres[18]]
      ],
[
{
      title: "Gin Tama, Vol. 2",
      author: "Hideaki Sorachi",
      synopsis: "The samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity.",
      release_date: "July 2nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1845.jpg"},

{
      title: "Gin Tama, Vol. 16",
      author: "Hideaki Sorachi",
      synopsis: "It's samurai vs. aliens!; He's too busy fighting aliens, the yakuza and unemployment! R to L (Japanese Style).   1. Mandatory driving classes for Shinsengumi officers 2. Unibrows for everyone! 3. Zero-tolerance policy for cheesy 'hard-boiled' dialog 4. Lock up all the pervy architects 5. I get in free to speed-dating parties The samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity...",
      release_date: "December 27th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1846.jpg"},

{
      title: "Gin Tama, Vol. 11",
      author: "Hideaki Sorachi",
      synopsis: "R to L (Japanese Style)The samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity...The Sun Rises AgainGin's Surefire Dating Tips1. Chicks with cat ears that you meet online are always hiding something. 2. Riding with a cute girl on the back of your scooter is cool (but watch out for the rocket boost). 3. Never allow partially a blind ninja to take care of your wounds (even if she looks hot in a nurse's uniform).4. When getting involved in a coup d'etat, remember to bring your umbrella (what's that got to do with dating?!)",
      release_date: "February 3rd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1847.jpg"},

{
      title: "Gin Tama, Vol. 7",
      author: "Hideaki Sorachi",
      synopsis: "• An ongoing manga series in Japan—17 volumes released and over 13 million copies sold in Japan to date• Each volume is a top ten selling manga title in Japan upon release.• 2.7 million copies sold in Japan in its first year (2004)--Vol. 1 through 4• Gin Tama anime currently running on TV Tokyo.• Sorachi made his manga debut with the one-shot story DANDELION, which is included in volume 1 of the GIN TAMA graphic novel.• Previewed and promoted in VIZ Media’s Shonen Jump magazine.• Originally serialized in Japan’s manga anthology Weekly Shonen Jump.• Official Japanese Website  • Translated into Korean and ChineseThe samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity. Yoruzuya Hit List  (Exploding Targets):1.  The Shinsegumi elite police and Gin (innocent bystander).               2.  Chief Kondo and Gin's new workplace (during their shift).3.  Human shields named Kondo, Yamazaki, and Gin.4.  The special New Year's issue of Shonen Jump magazine and Gin.5. Gin's apartment (more than once).6. Fireworks and...not Gin.",
      release_date: "May 2nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1848.jpg"},

{
      title: "Gin Tama, Vol. 15",
      author: "Hideaki Sorachi",
      synopsis: "It's samurai vs. aliens!; He's too busy fighting aliens, the yakuza and unemployment! R to L (Japanese Style).   1. If Kondo marries a gorilla, does that mean his kids will be chimpanzees? 2. Which is better to use as body armor, shojo or shonen manga? 3. How do you get a horny robot dog off your leg? 4. If I become shogun and order you to kill yourself, will you do it? 5. How much hot pepper do you have to eat to make your hair get frizzy? The samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity...",
      release_date: "November 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1849.jpg"},

{
      title: "Gin Tama, Vol. 14",
      author: "Hideaki Sorachi",
      synopsis: "R to L (Japanese Style). When you smash the dish that's strapped to my headYou're doing it for honor so it's all okaySandpaper makes lousy toilet tissue (someone said)You can use my picture (but you're gonna pay)Don't fight for Otae (Shinpachi should)Oh, baby you make it hurt so gooood!",
      release_date: "September 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1850.jpg"},

{
      title: "Gin Tama, Vol. 10",
      author: "Hideaki Sorachi",
      synopsis: "The samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity.Even an Inch-long Insect Has a SoulGin's 'Five Things They Don't Teach You in Samurai School' List 1. Gold can be found in the strangest places (not always up your nose).2. Talking smack to a blind swordsman is NEVER a good idea.3. Stomping on giant beetles the size of small cars is both messy and really dangerous.4. When the scariest thing in your haunted house is one of your customers, just pack up and go home for the day.5. Just because your date has cat ears doesn't necessarily mean she's an alien.The samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity...",
      release_date: "December 2nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1851.jpg"},

{
      title: "Gin Tama, Vol. 20",
      author: "Hideaki Sorachi",
      synopsis: "It's samurai vs. aliens!; He's too busy fighting aliens, the yakuza and unemployment!Reads R to L (Japanese Style), for T+ audiences. 1. Blatantly rip off other  manga. 2. Make sure the gorilla (artist) gets lots of bananas.3. Add lots of emotional death scenes and sappy dog funerals.4. Make Yamazaki the main character.5. Have plenty of nude beach scenes...with Shinpachi!",
      release_date: "October 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1852.jpg"},

{
      title: "Gin Tama, Vol. 23",
      author: "Hideaki Sorachi",
      synopsis: "It's samurai vs. aliens!Reads R to L (Japanese Style), for audiences T+  Gin&#8217;s Hot Spring Travel Tips 1. If it looks like a haunted mansion, it probably is 2. Ghosts like hot baths too 3. Skid marks on your briefs are unavoidable 4. Return your rented DVDs before you leave 5. When being chased by angry ghosts you only need to run faster than Shinpachi Final Volume!",
      release_date: "April 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1853.jpg"},

{
      title: "Gin Tama, Vol. 12",
      author: "Hideaki Sorachi",
      synopsis: "R to L (Japanese Style)The samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity...The Longest Way Around Is the Shortest WayThings I've Learned While Living With Gin (by Kagura)1. Buildings get destroyed because they are in the way.2. If you're going to stalk someone, watch out for pit-traps!3. People who say Santa doesn't really exist actually want to believe in him.4. Some people (Shinpachi) are always the butt of the joke.5. No matter what Gin says ice cream is a great prize for winning a snowball fight, uh-huh!",
      release_date: "April 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1854.jpg"},

{
      title: "Gin Tama, Vol. 21",
      author: "Hideaki Sorachi",
      synopsis: "It's samurai vs. aliens!; He's too busy fighting aliens, the yakuza and unemployment!Reads R to L (Japanese Style) T+ audience. Shinpachi&#8217;s List of Things I Learned During My Summer Vacation 1. Never trust a guy in a turtle suit! 2. Sometimes the age to wisdom ratio isn&#8217;t what it should be. 3. If you want to see how a woman will age, look at her mother. 4. Whack-a-Mole is awesome. 5. Parents still don&#8217;t understand.",
      release_date: "December 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1855.jpg"},

{
      title: "Gin Tama, Vol. 17",
      author: "Hideaki Sorachi",
      synopsis: "It's samurai vs. aliens!; He's too busy fighting aliens, the yakuza and unemployment!R to L (Japanese Style). It's samurai vs. aliens!; He's too busy fighting aliens, the yakuza and unemployment!   Gin's Top 5 List of Things to Look For When Hiring a Maid  1. Alien robot head? Attached! 2. King-sized pooper scooper? Check! 3. Mad scientist to keep mechanical maid army running? Check! 4. Main battle tank gassed up? Check! 5. Extra-manly moustache? Check! What?!",
      release_date: "March 2nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1856.jpg"},

{
      title: "Gin Tama, Vol. 18",
      author: "Hideaki Sorachi",
      synopsis: "万事屋VS真選組のゲーム対決最終戦は、仮想現実世界でのRPG対決！！　意外な武器が勝負を決める事に！？　他にも洞爺湖の仙人的なオジさんとかウルトラなヒーローとかマダオ裁判の弁護人銀時とか断食道場本気闘争とか！",
      release_date: "May 2nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1857.jpg"},

{
      title: "Gin Tama, Vol. 19",
      author: "Hideaki Sorachi",
      synopsis: "It's samurai vs. aliens!; He's too busy fighting aliens, the yakuza and unemployment!Reads R to L (Japanese Style). It's samurai vs. aliens!; He's too busy fighting aliens, the yakuza and unemployment! A Schemer Caught in His Own Scheme. Top 5 Things to Consider Before Joining the Shinsengumi: 1. Your sword might be cursed by the vengeful spirit of an anime otaku. 2. Rivalries and betrayals may lead to a short and painful career.3. No Shonen Jump manga allowed4. You're a nobody unless you can afford the sword with the built-in MP3 player. 5. The black uniforms are killer on a hot summer day!",
      release_date: "August 3rd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1858.jpg"},

{
      title: "Gin Tama, Vol. 9",
      author: "Hideaki Sorachi",
      synopsis: "The samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity.Gin's 'to do' list for this volume:1. Stock up on paper napkins and stain remover.2. Think of a good excuse not to buy Hasegawa a new shirt.3. Find out who swiped my strawberry milk from the fridge. 4. Get tickets to the game at Edo Dome.5. Tell Shinpachi, Kondo and Matsudaira they're buying if they want me to go for drinks with them.The samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity...",
      release_date: "October 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1859.jpg"},

{
      title: "Gin Tama, Vol. 5",
      author: "Hideaki Sorachi",
      synopsis: " 1. Sea Monster extermination 2. Traveling exorcism 3. Convenience-store sitting/motorcycle gang thrashing 4. Rescuing kidnapping victims (willing and unwilling)  Pachinko, TV shopping, extricating self from shotgun weddings, etc.",
      release_date: "December 27th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1860.jpg"},

{
      title: "Gin Tama, Vol. 6",
      author: "Hideaki Sorachi",
      synopsis: " 1. Zombie bear with mysterious mushroom growing out of head (magic?) 2. Crab chock-full of food poisoning (yum!) 3. Hot nurse in hospital (where we wind up due to #2) 4. Goro, queen of the human-size cockroaches (no comment) 5. 100 ice cream mini-cups (yum!) 6. The truth behind a cult that purports to make your dreams a reality (dream on…)",
      release_date: "March 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1861.jpg"},

{
      title: "Gin Tama, Vol. 8",
      author: "Hideaki Sorachi",
      synopsis: "• An ongoing manga series in Japan—17 volumes released and over 13 million copies sold in Japan to date• Each volume is a top ten selling manga title in Japan upon release.• 2.7 million copies sold in Japan in its first year (2004)--Vol. 1 through 4• Gin Tama anime currently running on TV Tokyo.• Sorachi made his manga debut with the one-shot story DANDELION, which is included in volume 1 of the GIN TAMA graphic novel.• Previewed and promoted in VIZ Media’s Shonen Jump magazine.• Originally serialized in Japan’s manga anthology Weekly Shonen Jump.• Official Japanese Website ? • Translated into Korean and ChineseThe samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity. Do's and Don'ts for Daddy-Daughter Day:1.  Don't let alien monsters grow exponentially by siphoning energy from space terminals and eating your daughter.2.  Do show your dad you've learned to use your abnormal strength to help others--not hurt them.3.  Do respect your daughter's planetary preferences, especially when they're in writing.4.  Don't assassinate your daughter's boyfriend.",
      release_date: "August 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1862.jpg"},

{
      title: "Gin Tama, Vol. 1",
      author: "Hideaki Sorachi",
      synopsis: "The samurai didn't stand a chance. First, the aliens invaded Japan. Next, they took all the jobs. And then they confiscated everyone's swords. So what does a hotheaded former samurai like Sakata 'Gin' Gintoki do to make ends meet? Take any odd job that comes his way, even if it means losing his dignity.",
      release_date: "April 2nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1863.jpg"},

{
      title: "Gin Tama, Vol. 13",
      author: "Hideaki Sorachi",
      synopsis: "R to L (Japanese Style). 1. Frontal wedgies are extremely effective.2. Girls hit a lot harder the more innocent they look (unless they are alien gorillas).3. Only morons start fights in the Ninja Bar. Yeah, only morons...4. Using a bazooka is cheating (but it sure settles things quickly).5. No one hits harder than Shinpachi's sister Otae when she's riled.",
      release_date: "July 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1864.jpg"},

      [genres[0], genres[14], genres[5], genres[1], genres[9], genres[18]]
      ],
[
{
      title: "Kamisama Kiss, Vol. 13",
      author: "Julietta Suzuki",
      synopsis: "A divine comedy!Nanami Momozono is alone and homeless after her dad skips town to evade his gambling debts and the debt collectors kick her out of her apartment. So when a man she's just saved from a dog offers her his home, she jumps at the opportunity. But it turns out that his place is a shrine, and Nanami has unwittingly taken over his job as a local deity! Himemiko is convinced that her human boyfriend Kotaro could never love her in her true form, and that dating a yokai will only put him in danger. Even though she feels she can no longer see him, she vows to avenge the wounds he suffered at the hands of Nishiki of Inuaki Swamp. But Himemiko and Nishiki have been engaged since they were young. Will her quest for revenge bring all-out war to the swamps? Reads R to L (Japanese Style) for teen audiences.",
      release_date: "September 20th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1865.jpg"},

{
      title: "Kamisama Kiss, Vol. 10",
      author: "Julietta Suzuki",
      synopsis: "Reads R to L (Japanese Style), for audiences rated teen. Nanami Momozono is alone and homeless after her dad skips town to evade his gambling debts and the debt collectors kick her out of her apartment. So when a man she's just saved from a dog offers her his home, she jumps at the opportunity. But it turns out that his place is a shrine, and Nanami has unwittingly taken over his job as a local deity! Kuruma’s father, the Sojobo of the Kuruma tengu, is gravely ill. Nanami thinks she can cure him with her supply of Momotan, but first she needs to get past the magic shields of Jiro, the next in line for the leadership of the mountain. And Jiro isn’t the only thing on the mountain the gang needs to watch out for…",
      release_date: "September 20th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1866.jpg"},

{
      title: "Kamisama Kiss, Vol. 7",
      author: "Julietta Suzuki",
      synopsis: "Reads R to L (Japanese Style), for audiences T. Nanami Momozono is alone and homeless after her dad skips town to evade his gambling debts and the debt collectors kick her out of her apartment. So when a man she's just saved from a dog offers her his home, she jumps at the opportunity. But it turns out that his place is a shrine, and Nanami has unwittingly taken over his job as a local deity! Mizuki loves living at the shrine with Nanami, but he hates that he has to stay behind when she goes to school. He hates even more that Tomoe gets to go with her. But Mizuki isn’t used to the human world, so Nanami thinks it’s safer if he just stays put. Can Mizuki become a master of the mundane, or will his secret foray into town end in disaster?!",
      release_date: "September 17th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1867.jpg"},

{
      title: "Kamisama Kiss, Vol. 11",
      author: "Julietta Suzuki",
      synopsis: "A divine comedy!Nanami Momozono is alone and homeless after her dad skips town to evade his gambling debts and the debt collectors kick her out of her apartment. So when a man she's just saved from a dog offers her his home, she jumps at the opportunity. But it turns out that his place is a shrine, and Nanami has unwittingly taken over his job as a local deity! New Year’s is coming up, and that means the Tochigami Shrine needs to send a representative to greet the toshigami, the visiting kami who assures a good harvest for the year. Nanami insists on going with her shinshi but gets stuck in limbo at the meeting place. Her shinshi rush to get her back, but instead they all end up trapped in Nanami’s troubled childhood… Reads R to L (Japanese Style) for teen audiences.",
      release_date: "January 20th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1868.jpg"},

{
      title: "Kamisama Kiss, Vol. 12",
      author: "Julietta Suzuki",
      synopsis: "A divine comedy!Nanami Momozono is alone and homeless after her dad skips town to evade his gambling debts and the debt collectors kick her out of her apartment. So when a man she's just saved from a dog offers her his home, she jumps at the opportunity. But it turns out that his place is a shrine, and Nanami has unwittingly taken over his job as a local deity! Himemiko, ayakashi ruler of Tatara swamp, is happily dating her human sweetie Kotaro. But yokai/human relationships are hard to manage, especially when the human has no idea who he’s dating! When the supernatural starts to intrude, can Himemiko tell Kotaro the truth about herself? Or will she lose him no matter what she does? Reads R to L (Japanese Style) for teen audiences.",
      release_date: "April 20th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1869.jpg"},

{
      title: "Kamisama Kiss, Vol. 8",
      author: "Julietta Suzuki",
      synopsis: "Reads R to L (Japanese Style), for audiences T. Nanami Momozono is alone and homeless after her dad skips town to evade his gambling debts and the debt collectors kick her out of her apartment. So when a man she's just saved from a dog offers her his home, she jumps at the opportunity. But it turns out that his place is a shrine, and Nanami has unwittingly taken over his job as a local deity! Things at the kami convention in Izumo aren’t going so well. Nanami tried to earn some respect by guarding death’s door while the keeper went off to party. But now she’s stuck in the land of the dead, and the residents seem to have a taste for new kami!",
      release_date: "December 17th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1870.jpg"},

{
      title: "Kamisama Kiss, Vol. 2",
      author: "Julietta Suzuki",
      synopsis: "A divine comedy!Reads R to L (Japanese Style) T audience. Nanami Momozono is alone and homeless after her dad skips town to evade his gambling debts and the debt collectors kick her out of her apartment. So when a man she's just saved from a dog offers her his home, she jumps at the opportunity. But it turns out that his place is a shrine, and Nanami has unwittingly taken over his job as a local deity!Nanami doesn't want to miss out on the fun when a hot teen idol joins the student body. Tomoe reluctantly agrees to let her go, as long as she conceals her divine mark. After all, what could possibly go wrong at high school...?",
      release_date: "2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1871.jpg"},

{
      title: "Kamisama Kiss, Vol. 4",
      author: "Julietta Suzuki",
      synopsis: "A divine comedy!Reads R to L (Japanese Style), for audiences T  Being a teen deity is tough! Not only does Nanami have her duties at the shrine, she has her female classmates begging her to get them dates with her yokai companions. Tomoe wants nothing to do with dating, so what is Nanami going to do about her growing feelings for him?",
      release_date: "September 18th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1872.jpg"},

{
      title: "Kamisama Kiss, Vol. 9",
      author: "Julietta Suzuki",
      synopsis: "Reads R to L (Japanese Style), for audiences rated teen. Nanami Momozono is alone and homeless after her dad skips town to evade his gambling debts and the debt collectors kick her out of her apartment. So when a man she's just saved from a dog offers her his home, she jumps at the opportunity. But it turns out that his place is a shrine, and Nanami has unwittingly taken over his job as a local deity! Nanami may have been (begrudgingly) accepted by the other kami at Izumo, but that doesn't make her any less human or help her deal with her growing feelings for Tomoe. Should she be true to her heart or cut Tomoe loose for his own good? Either way, getting dragged into a group date isn't going to help matters at all!",
      release_date: "May 19th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1873.jpg"},

{
      title: "Kamisama Kiss, Vol. 5",
      author: "Julietta Suzuki",
      synopsis: "A divine comedy! After returning from a seaside vacation, Nanami is shocked to discover that the townsfolk consider her shrine abandoned. She decides to hold a summer festival for the local humans and yokai to revitalize the shrine's reputation. But Tomoe is strangely reluctant. Can Nanami pull off the festival with a little help from her yokai friends, or will Tomoe's naysaying spell disaster?",
      release_date: "January 19th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1874.jpg"},

{
      title: "Kamisama Kiss, Vol. 3",
      author: "Julietta Suzuki",
      synopsis: "A divine comedy! Nanami has been missing a lot of school because of her new duties at the shrine. But every time she goes to class, something seems to go wrong! And now her instinct to rescue animals has turned and bit her on the wrist! Is she marked for life...or death?!",
      release_date: "May 19th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1875.jpg"},

{
      title: "Kamisama Kiss, Vol. 1",
      author: "Julietta Suzuki",
      synopsis: "A  comedy!Nanami Momozono is alone and homeless after her dad skips town to evade his gambling debts and the debt collectors kick her out of her apartment. So when a man she's just saved from a dog offers her his home, she jumps at the opportunity. But it turns out that his place is a shrine, and Nanami has unwillingly taken over his job as a local deity!Nanami has all kinds of new responsabilities she doesn't understand, dangers she's unaware of, and a cranky ex-familiar who's... actually pretty hot. What's a new-fledged godling to do?",
      release_date: "2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1876.jpg"},

{
      title: "Kamisama Kiss, Vol. 6",
      author: "Julietta Suzuki",
      synopsis: "A divine comedy! Every year, kami from all over Japan gather in Izumo for a sort of divine convention. One of Mikage's friends comes to the shrine to invite Nanami to the retreat, but it turns out most of the other kami and Tomoe don't want her to go. Can Nanami prove she's kami enough to attend; or does she even want to bother?",
      release_date: "May 19th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1877.jpg"},

      [genres[4], genres[13], genres[15]]
      ],
[
{
      title: "Attack on Titan: No Regrets, Volume 01",
      author: "Hajime Isayama",
      synopsis: "THE THIEF AND THE SOLDIER The young Erwin Smith is a rising star in the Survey Corps, humanity’s only hope of defeating the man-eating monsters known as Titans. Ruthless and dispassionate, Erwin’s mind is devoted to strategies and intrigue. But beneath Erwin’s feet is another world, the Underground, where humans are born and die surrounded by the garbage the Capital throws away. Here, the criminal Levi survives on his wits and agility. But when these two ambitious men cross paths, who will prove himself stronger? The long-awaited origin story of Levi and Erwin, two of Attack on Titan’s most beloved characters!",
      release_date: "April 9th 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1878.jpg"},

{
      title: "Attack on Titan: No Regrets, Volume 02",
      author: "Hajime Isayama",
      synopsis: "REMEMBER YOUR TRUE ENEMYErwin’s political enemies have hired Levi and his crew to take back some incriminating documents. Their reward: the right to live a proud life above ground, in the royal capital. But deep in Titan territory, it’s going to be tough to break formation and steal from a squad leader, and Levi still insists on killing the man who humiliated him after the mission is complete. Of course, beyond the walls anything can happen, and a sudden change in Levi’s fortunes will force him to face the greatest regret in his life…FINAL VOLUME!",
      release_date: "August 8th 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1879.jpg"},

      [genres[0], genres[21], genres[10], genres[20], genres[18]]
      ],
[
{
      title: "Death Note: Another Note - The Los Angeles BB Murder Cases",
      author: "NisiOisiN",
      synopsis: "There's a serial killer loose in Los Angeles and the local authorities need help fast. For some reason the killer has been leaving a string of maddeningly arcane clues at each crime scene. Each of these clues, it seems, is an indecipherable roadmap to the next murder.Onto the scene comes L, the mysterious super-sleuth. Despite his peculiar working habits, he's never shown his face in public—but this time, he needs help.Enlisting the services of an FBI agent named Naomi Misora, L starts snooping around the City of Angels. It soon becomes apparent that the killing spree is a psychotic riddle designed to specifically engage L in a battle of wits. Stuck in the middle between killer and investigator, it's up to Misora to navigate both the dead bodies and the egos to solve the Los Angeles Murder Cases.",
      release_date: "2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1880.jpg"},

{
      title: "Death Note, Vol. 4: Love",
      author: "Tsugumi Ohba",
      synopsis: "With two Kiras on the loose, L asks Light to join the task force and pose as the real Kira in order to catch the copycat. L still suspects Light and figures that this is the perfect excuse to get closer to his quarry. Light agrees to the plan in order to have free access to the task force resources. But when Light manages to contact the new Kira, he discovers that his rival is anything but as expected. Will Light escape from love unscathed?",
      release_date: "November 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1881.jpg"},

{
      title: "Death Note, Vol. 3: Hard Run",
      author: "Tsugumi Ohba",
      synopsis: "Light is chafing under L's extreme surveillance, but even 64 microphones and cameras hidden in his room aren't enough to stop Light. He steps up the game, but before the battle of wits can really begin, a family emergency distracts him. But even though Light isn't using the Death Note right now, someone else is! Who's the new 'Kira' in town?",
      release_date: "September 3rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1882.jpg"},

{
      title: "Death Note: Black Edition, Vol. 5",
      author: "Tsugumi Ohba",
      synopsis: "Killer 2-for-1 value on hit thriller Death Note!Reads R to L (Japanese Style), for audiences T+  Contains Volumes 9 and 10 of Death Note! Light Yagami is an ace student with great prospects--and he’s bored out of his mind. But all that changes when he finds the Death Note, a notebook dropped by a rogue Shinigami death god. Any human whose name is written in the notebook dies, and now Light has vowed to use the power of the Death Note to rid the world of evil. Will Light's noble goal succeed, or will the Death Note turn him into the very thing he fights against?",
      release_date: "2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1883.jpg"},

{
      title: "Death Note, Vol. 8: Target",
      author: "Tsugumi Ohba",
      synopsis: "Light, working as Kira, the newest member of the NPA intelligence bureau, and L, has nearly succeeded in creating his ideal world. But the years of uncontested victory have made him complacent, and he is unprepared for a new attack close to home. With his younger sister Sayu kidnapped and the NPA's Death Note demanded as ransom, Light must travel across the world and confront two new adversaries, each with a very different agenda. Will Light's quick wits be a match for this new challenge, or will he be forced to choose between Kira's ambitions and his own family's lives?",
      release_date: "September 2nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1884.jpg"},

{
      title: "Death Note, Vol. 11: Kindred Spirits",
      author: "Tsugumi Ohba",
      synopsis: "Light's latest machinations are putting a strain on even his formidable intellect as Near flies to Japan to beard Kira in his den. Near is sure that Light is Kira, but his sense of honor as L's heir will allow no doubts. He doesn't want to just stop the Kira murders, he wants to expose Light as the Death Note killer. Light thinks he's up to the challenge, but will the pressures of his fiancée, his new flame, and his acolyte prove to be fatal distractions?",
      release_date: "May 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1885.jpg"},

{
      title: "Death Note, Vol. 10: Deletion",
      author: "Tsugumi Ohba",
      synopsis: "With Near openly suspecting the new L of being Kira and sowing doubt in the hearts of the taskforce members, Light is once again forced to pass the Death Note on to another to take the heat off himself. But this time, Kira chooses a disciple from among his true believers. With no way to contact his successor directly, Light must rely on his faithful follower's adherence to Kira's goals. Will this newest move bring Light's ideal world closer to reality? Or will losing control of the Death Note spell Light's doom?",
      release_date: "February 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1886.jpg"},

{
      title: "Death Note, Vol. 5: Whiteout",
      author: "Tsugumi Ohba",
      synopsis: "After a week locked up with no one but Ryuk for company, Light is ready to give up his Death Note and all memories of it. Freed from his past actions, Light is convinced he's innocent. But L is ready to keep Light under lock and key forever, especially since the killings stopped once Light was incarcerated. Then a new wave of Kira crimes hits Japan. Someone else has gotten their hands on a Death Note, and these new deaths aren't focused on making the world a better place, they're focused on making money. Big business can be murder, and Kira has gone corporate!",
      release_date: "February 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1887.jpg"},

{
      title: "Death Note, Vol. 1: Boredom",
      author: "Tsugumi Ohba",
      synopsis: "Light tests the boundaries of the Death Note's powers as L and the police begin to close in. Luckily, Light's father is the head of the Japanese National Police Agency and leaves vital information about the case lying around the house. With access to his father's files, Light can keep one step ahead of the authorities. But who is the strange man following him, and how can Light guard against enemies whose names he doesn't know?",
      release_date: "April 2nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1888.jpg"},

{
      title: "Death Note, Vol. 6: Give-and-Take",
      author: "Tsugumi Ohba",
      synopsis: "Although they've collected plenty of evidence tying the seven Yotsuba members to the newest Kira, Light, L and the rest of the task force are no closer to discovering which one actually possesses the Death Note. Desperate for some headway, L recruits Misa to infiltrate the group and feed them information calculated to bring Kira into the open. But the Shinigami Rem reveals to Misa who the Kiras really are, and, armed with this knowledge, Misa will do anything to help Light. But what will that mean for L...?",
      release_date: "April 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1889.jpg"},

{
      title: "Death Note, Vol. 13: How to Read",
      author: "Tsugumi Ohba",
      synopsis: "An encyclopedic guide to the  manga series, including character bios, storyline summaries, interviews with creators Tsugumi Ohba and Takeshi Obata, production notes and commentaries, and bonus manga pages. Light Yagami is an ace student with great prospects--and he's bored out of his mind. But all that changes when he finds the Death Note, a notebook dropped by a rogue Shinigami death god. Any human whose name is written in the notebook dies, and now Light has vowed to use the power of the Death Note to rid the world of evil. But when criminals begin dropping dead, the authorities send the legendary detective L to track down the killer. With L hot on his heels, will Light lose sight of his noble goal…or his life?",
      release_date: "October 13th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1890.jpg"},

{
      title: "Death Note, Vol. 12: Finis",
      author: "Tsugumi Ohba",
      synopsis: "The battle ends here!",
      release_date: "July 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1891.jpg"},

{
      title: "Death Note, Vol. 2: Confluence",
      author: "Tsugumi Ohba",
      synopsis: "Light thinks he's put an end to his troubles with the FBI—by using the Death Note to kill off the FBI agents working the case in Japan! But one of the agents has a fiancée who used to work in the Bureau, and now she's uncovered information that could lead to Light's capture. To make matters worse, L has emerged from the shadows to work directly with the task force headed by Light's father. With people pursuing him from every direction, will Light get caught in the conflux?",
      release_date: "July 2nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1892.jpg"},

{
      title: "Death Note: L, Change the World",
      author: "Tsugumi Ohba",
      synopsis: "In an alternative continuity in the  setting, ace detective L's name has been placed in a Death Note. He has twenty-three days to bring a terrorist group to justice, or they will use a deadly new virus to change the world—by killing off most of humanity.",
      release_date: "2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1893.jpg"},

      [genres[0], genres[7], genres[8]]
      ],
      [
{
      title: "Pet Shop of Horrors, Vol. 1",
      author: "Matsuri Akino",
      synopsis: "A smoke-filled alley in Chinatown harbors Count D's Pet Shop. The pets sold here aren's your everyday variety and the Count prides himself on selling Love and Dreams in the form of magical creatures that come with an exclusive contract. But buyers beware. If the contract is broken the Count cannot be held accountable for whatever may happen. A fascinating and macabre look into the very soul of human nature. ",
      release_date: "February 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1894.jpg"},

{
      title: "Pet Shop of Horrors, Volume 09",
      author: "Matsuri Akino",
      synopsis: "Book by Akino, Matsuri",
      release_date: "2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1895.jpg"},

{
      title: "Pet Shop of Horrors, Vol. 2",
      author: "Matsuri Akino",
      synopsis: "Count D and his exotic pets have a way of changing a person's life for better or for worse. Whether it is fulfilling one's deepest desire or teaching an errant soul an important lesson in life, his magic always comes with a price.",
      release_date: "August 12th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1896.jpg"},

      [genres[4], genres[21], genres[8], genres[18]]
      ],
      [
{
      title: "Uzumaki, Vol. 2",
      author: "Junji Ito",
      synopsis: "A sleepy town on the coast of Japan is under quiet, deadly siege, not by a person or group but by a primeval spiral shape whose victims include both parents of Shuichi Saito. In this second volume of the saga, Shuichi's girlfriend Kirie becomes further involved in the town's terrible secret when schoolmates start turning up as horrible human snails and something unspeakable is discovered within the walls of the local hospital.",
      release_date: "February 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1897.jpg"},

{
      title: "Uzumaki, Vol. 3",
      author: "Junji Ito",
      synopsis: "Kurozu-cho, a fogbound town on the coast of Japan, is haunted by a recurring pattern: a spiral manifesting itself in increasingly terrifying ways. In this third and final volume, the town is cut off from the outside by devastating hurricanes. Kirie, her boyfriend Shuichi, and the other desperate survivors must face the impending horror. The movie version of Uzumaki will soon be released in the U.S.",
      release_date: "September 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1898.jpg"},

{
      title: "Uzumaki, Vol. 1",
      author: "Junji Ito",
      synopsis: "Shortly after Shuichi Saito's father becomes obsessed with spirals -- snail shells, whirlpools, and man-made patterns -- he dies mysteriously, his body positioned in the shape of a twisted coil. Soon, the entire town is afflicted with a snail-like disease.",
      release_date: "August 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1899.jpg"},

      [genres[7], genres[21], genres[18]]
      ],
      [
{
      title: "The Seven Deadly Sins, Vol. 2",
      author: "Nakaba Suzuki",
      synopsis: "SIN VS VIRTUETo save her kingdom, Princess Elizabeth has pinned her last hope on the infamous traitors, “The Seven Deadly Sins” and has set out on a journey with Meliodas—the Dragon Sin of Wrath—to seek out the rest of his fellow knights and former friends. Deep within an uninviting forest they find Diane, the Serpent Sin of Envy. Before they can celebrate their reunion, they must deal with an attack from Gilthunder, an electrifying Holy Knight!",
      release_date: "April 17th 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1900.jpg"},

{
      title: "The Seven Deadly Sins, Vol. 13",
      author: "Nakaba Suzuki",
      synopsis: "A GRAND SACRIFICE   The Seven Deadly Sins fight against Hendrickson in his new form as an evil god, and one by one, its members fall in the face of Hendrickson’s fury—even the mighty Meliodas. But just when it seems like all is lost, a mysterious figure courageously rises to save the day! And that valiant hero turns out to be a trusted friend and comrade! The prayers of a grief-stricken maiden awaken hidden powers, bringing miracles and hope back to life.",
      release_date: "February 17th 2015",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1901.jpg"},

{
      title: "The Seven Deadly Sins, Vol. 3",
      author: "Nakaba Suzuki",
      synopsis: "Inside Baste Prison, Meliodas has an explosive reunion with Ban, the Fox Sin of Greed. However, trouble is on the horizon as their journey continues. Another member of The Seven Deadly Sins appears and is dead set on punishing Ban. The heroes clash as a feud is revived from their past!",
      release_date: "June 17th 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1902.jpg"},

{
      title: "The Seven Deadly Sins, Vol. 14",
      author: "Nakaba Suzuki",
      synopsis: "A NEW EVIL   Due to the great efforts of The Seven Deadly Sins, Hendrickson has been crushed and peace has been returned to Liones. But with one enemy vanquished, another formidable evil awakens and the identity of this villain will shake the kingdom. Meanwhile, Camelot and the Fairy King’s forest face sudden disaster and amidst the chaos the full story of the world will be revealed!",
      release_date: "April 17th 2015",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1903.jpg"},

{
      title: "The Seven Deadly Sins, Vol. 15",
      author: "Nakaba Suzuki",
      synopsis: "THE HOLY WAR BEGINS A three thousand-year-old seal has been broken, awakening members of the Demon clan. The only person standing in their way is none other than Meliodas. With a difficult battle ahead of him, Meliodas must reclaim his Sacred Treasure if he hopes to stand a chance against these new and powerful enemies. Elsewhere, the Demon clan casts its shadow upon the Fairy King and his comrades and at the end of the ensuing battle, the true Fairy King will be revealed.",
      release_date: "June 17th 2015",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1904.jpg"},

{
      title: "The Seven Deadly Sins, Vol. 12",
      author: "Nakaba Suzuki",
      synopsis: "BAN'S DECISIONMeliodas is on the verge of death as Elizabeth turns herself in to Hendrickson to save Gilthunder. During this moment of crisis, their trusted comrade, Ban the Undead, steps in. However, the Fox Sin of Greed they once knew is no longer—Ban bares his fangs and attacks, aiming straight for Meliodas's heart! The demon blood has begun to run its course; the Kingdom is being razed; and in the wake of it all, a powerful grotesque monster rises. Will the world be swallowed up by darkness, or is there another way?!",
      release_date: "December 17th 2014",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1905.jpg"},

{
      title: "The Seven Deadly Sins, Vol. 1",
      author: "Nakaba Suzuki",
      synopsis: "When they were accused of trying to overthrow the monarchy, the feared warriors the Seven Deadly Sins were sent into exile. Princess Elizabeth discovers the truth - the Sins were framed by the king's guard, the Holy Knights - too late to prevent them from assassinating her father and seizing the throne! Now the princess is on the run, seeking the Sins to help her reclaim the kingdom. But the first Sin she meets, Meliodas, is a little innkeeper with a talking pig. He doesn't even have a real sword! Have the legends of the Sins' strength been exaggerated...?",
      release_date: "February 15th 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1906.jpg"},

      [genres[0], genres[4], genres[1], genres[10], genres[18]]
      ],
[
{
      title: "Hellsing, Vol. 09",
      author: "Kohta Hirano",
      synopsis: "After Alucard's triumphant return, the streets of London were flooded with the blood of vampire Nazi soldiers and crazed Catholic warriors. After the dust settled, only the Hellsing order of Protestant knights was left standing. Now it's up to the earthly agents of divine punishment to save the souls of the innocent. However, chaos soon engulfs the streets yet again. Come to find out, not all the Nazis were vanquished after all. Will Alucard and his allies have what it takes to save what is left of the city?",
      release_date: "July 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1907.jpg"},

{
      title: "Hellsing, Vol. 10",
      author: "Kohta Hirano",
      synopsis: "Final Volume!One of the best things about Kohta Hirano's sexy apocalypse of warring vampires, Nazis, Catholics, werewolves, and Australian mercenaries is that all the way up to, and possibly through, this final volume, we don't know who's going to win. The streets of London are awash in blood, a zeppelin descends a la Hindenburg, and six of our favorite characters are locked in face-off fights. It's possible that no one will come away from this crescendo 'alive.' Of course, we're not sure who's alive or undead at this point. But what's most certain is that London needs babies, because there isn't a civilian soul left alive in this battle to the undeath. Alas, Hellsing, we knew you well.",
      release_date: "March 27th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1908.jpg"},

{
      title: "Hellsing, Vol. 04",
      author: "Kohta Hirano",
      synopsis: "Chronicles the exploits of the secret Hellsing Organization, formed by the Hellsing family to protect England and the Protestant church from vampires and other monsters, and its top operative, the vampire Alucard.Hellsing 4Hirano, KohtaDiamond Comic Distributors2004/09/22208PAPERBACK",
      release_date: "January 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1909.jpg"},

{
      title: "Hellsing, Vol. 07",
      author: "Kohta Hirano",
      synopsis: "What do you get when you mix reanimated Nazis, vampires, and freaky killer Catholics and Protestants breathing down each others’ necks? In the case of Hellsing, you get an all-out bloody war. Or such has proven to be the case so far. The world is engulfed in the flames of destruction, and all seems lost. Vernedead’s 'Geese' are literally being eaten alive, and it might just take half-vampire, Seras Victoria, a certain loss of innocence to provide a shred of hope. But that’s not all this story hinges on. The vampire Hellsing himself will surely show at some point, and the Catholic Iscariot Army, a dreaded force, is also on the march. This is a situation of boiling blood, and it’s about to burst!",
      release_date: "December 27th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1910.jpg"},

{
      title: "Hellsing, Vol. 08",
      author: "Kohta Hirano",
      synopsis: "London is already bathed in blood, its citizenry almost entirely slaughtered by vampiric, reborn nazi soldiers. And marching through the rivers of blood - thousands of extreme Catholic warriors in creepy cloaks. But the focus of this chaotic eighth volume is the return of Alucard, the slave-paladin of the British Protestants, who's just piloted an aircraft character up the Thames to join the fray. It's a crazy face-off between three gory armies and their primary killers, and if you think that sounds nuts, wait until you dive into the crimson-stained new volume of Kohta Hirano's creepy-cool Hellsing manga series.",
      release_date: "January 1st 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1911.jpg"},

{
      title: "Hellsing, Vol. 01",
      author: "Kohta Hirano",
      synopsis: "There's a secret organization somewhere in England created to defend the Queen and country from monsters of all sorts. Yes, it's hard to believe in this day and age.... but really, isn't this the true age of monsters?Enter Hellsing, an agency, long in tooth, with the experience, know-how, and...er...equipment to handle the problems that arise when vampires, ghouls take on these dark forces. 'What equipment?' you may say. How about another vampire, and a big pistol loaded with special silver bullets? That oughta do the trick.Hellsing the long-awaited manga is finally in America, thanks to Dark Horse Comics and the folks at Digital Manga, and you're gonna love it. Come get some smart-ass gore and action as only Japan seems to produce, in that crazy 'non-Western' formats the kids seem to love. And nice and thick at over 200 pages!",
      release_date: "September 1st 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1912.jpg"},

{
      title: "Hellsing, Vol. 05",
      author: "Kohta Hirano",
      synopsis: "As the emerging Millennium Project, an army of Nazi undead, is unleashed upon the world. What ensues is a war of blood and nostalgia. Featuring old sharpshooter rifles, and throwback uniforms, mixed with jet technology and vampires, this title contains mysticism and apocalypse.",
      release_date: "January 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1913.jpg"},

{
      title: "Hellsing, Vol. 03",
      author: "Kohta Hirano",
      synopsis: "What's left of the Hellsing crew and their new team of hired bodyguards have traveled to South American to investigate the Millennium threat.",
      release_date: "December 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1914.jpg"},

{
      title: "Hellsing, Vol. 06",
      author: "Kohta Hirano",
      synopsis: "The war between three armies of vampires, humans, and those in between is in full swing. The Hellsing organization is embattled as London is falling to Nazi vampire forces, turning the city's citizens into rivers of blood and a population of ghouls. It looks like it might be the end of Sir Integral Wingates Hellsing and her henchman, Walter. But what's this? The Vatican? But that means the Vatican is unprotected. If you haven't figured it out yet, Earth is in chaos of a World War like no other. New forces will rise up, surprises of undead power will surge forth, guns will blaze, and blades will sing. There's no telling how this will end, as Hellsing clamors forward with a seething wit and a frantic pace, and style that passes beyond gothic grace.",
      release_date: "November 14th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1915.jpg"},

{
      title: "Hellsing, Vol. 02",
      author: "Kohta Hirano",
      synopsis: "Hellsing continues with more blood, guts, ghouls, and gothic murder. Created by Kohta Hirano, and making its way into an incredibly popular anime, Hellsing pushes the boundary of horror, yet looks so visually stunning and graphically cool that instead of being scary, it's super fun. Certainly not intended for younger readers, this series follows the Hellsing Organization, an old institution created by English royalty to squash the ghoulish undead of the world, as they face an insurgence of murderous monsters running rampant across the isles, fueled by... could it be... Nazi's? Watch the dark story unravel as Dark Horse Manga presents Hellsing volume 2.",
      release_date: "December 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1916.jpg"},

      [genres[0], genres[7], genres[21], genres[18]]
      ],
[
{
      title: "Akira, Vol. 5",
      author: "Katsuhiro Otomo",
      synopsis: "In the 21st century, the once-glittering Neo-Tokyo lies in ruins, leveled in minutes by the infinite power of the child psychic giant, Akira. Now a wasteland of rubble and anarchy, the Great Tokyo Empire rises, a ragtag group of zealots and crazies who worship and fear Akira and his mad prime minister, Tetsuo, an angry teen with immense powers of his own -- and equally immense twisted ambitions. The planet at large is not taking the threat lying down, however, and the might of the world is ready to take on the Empire, but will technology's most advanced weaponry be enough to destroy Akira -- and is Tetsuo an ever greater threat? The fifth chapter in a sweeping epic of over 2000 pages, Akira vol. 5 is the penultimate act of a mind-blowing graphic-novel masterpiece of awe-inspiring imagination and gut-wrenching power, and the inspiration for the classic Akira animated film.",
      release_date: "December 10th 1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1917.jpg"},

{
      title: "Akira, Vol. 6",
      author: "Katsuhiro Otomo",
      synopsis: "The explosive finale to one of graphic fiction's greatest achievements is here! The mad psychic colossus Tetsuo, the world's military, and the remaining psychics of The Project face off -- with the child psychic god, Akira, the wild card -- in what may not only decide the fate of mankind, but may determine the next step in human evolution! This long-awaited volume -- a staggering 440 pages -- features the impossible-to-find final chapters of Akira, never before collected in the U.S., presented as they were intended to be seen in their original, stunning black and white! Featuring a revised translation and top-quality art reproduction, this is the final edition of one of comics' definitive works, a six-volume epic of over two thousand pages. Katsuhiro Otomo's entire masterpiece is finally available -- only from Dark Horse!",
      release_date: "March 23rd 1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1918.jpg"},

{
      title: "Akira, Vol. 2",
      author: "Katsuhiro Otomo",
      synopsis: "The science fiction tale set in 2019 in Tokyo after the city was destroyed by World War III, follows the lives of two teenage friends, Tetsuo and Kaneda, who have a consuming fear of a monstrous power known as Akira.",
      release_date: "September 4th 1985",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1919.jpg"},

{
      title: "Akira, Vol. 1",
      author: "Katsuhiro Otomo",
      synopsis: "The science fiction tale set in 2019 in Tokyo after the city was destroyed by World War III, follows the lives of two teenage friends, Tetsuo and Kaneda, who have a consuming fear of a monstrous power known as Akira.",
      release_date: "September 21st 1984",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1920.jpg"},

{
      title: "Akira, Vol. 3",
      author: "Katsuhiro Otomo",
      synopsis: "In the 21st century, the glittering Neo-Tokyo has risen from the rubble of a Tokyo destroyed by an apocalyptic telekinetic blast from a young boy called Akira -- the subject of a covert government experiment gone wrong now imprisoned in frozen stasis. But Tetsuo, an angry young man with immense and rapidly growing psychic abilities, has done the unthinkable: he has released Akira and set into motion a chain of events that could once destroy the city and drag the world to the brink of Armageddon. Resistance agents and an armada of government forces race against the clock to find the child with godlike powers before his unthinkable destructive abilities are unleashed! One of the true international classics of graphic fiction and unavailable for nearly a decade in America, Akira has once again taken America by storm, its first Dark Horse volume selling out almost overnight in comic shops and bookstores across the country!",
      release_date: "September 1st 1986",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1921.jpg"},

{
      title: "Akira, Vol. 4",
      author: "Katsuhiro Otomo",
      synopsis: "The science fiction tale set in 2019 in Tokyo after the city was destroyed by World War III, follows the lives of two teenage friends, Tetsuo and Kaneda, who have a consuming fear of a monstrous power known as Akira.",
      release_date: "July 10th 1987",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1922.jpg"},

      [genres[7], genres[5], genres[20]]
      ],
[
{
      title: "Beast Master, Vol. 1",
      author: "Kyousuke Motomi",
      synopsis: "Reads R to L (Japanese Style). Taming a Beast was never this dangerous! ",
      release_date: "June 25th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1923.jpg"},

{
      title: "Beast Master, Vol. 2",
      author: "Kyousuke Motomi",
      synopsis: "Taming a Beast was never this dangerous!R to L (Japanese Style). Taming a Beast was never this dangerous!  Leo's 18th birthday is around the corner, but celebrating seems impossible as someone is after Leo's life! Can Leo overcome the dangers of his past? Or will this beast-like boy be separated from his beloved 'master'...forever?",
      release_date: "January 1st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1924.jpg"},

      [genres[14], genres[13]]
      ],
[
{
      title: "Reborn! Vol. 09: New Item Arrives!",
      author: "Akira Amano",
      synopsis: "Junior high student Tsuna is a failure at school, sports, and social life. He needs a Mafia hit man tutor like he needs a hole in the head...and he's about to get both!Tsuna, Reborn and their friends are in deep trouble! The villainous Mukuro appears to be unstoppable, and further efforts by Yamamoto and Gokudera to take him down only seem to prove the point. It finally falls to Tsuna to face this nemesis, though he knows he doesn't have a prayer of coming out of the encounter in one piece. His only hope is to receive a Deathperation Shot, but Reborn has only one left! Will it be enough? Junior high student Tsuna is a failure at school, sports, and social life. He needs a Mafia hit man tutor like he needs a hole in the head...and he's about to get both!",
      release_date: "April 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1925.jpg"},

{
      title: "Reborn! Vol. 03: Faintly Arrives!",
      author: "Akira Amano",
      synopsis: "Tsuna, a timid junior high student, is a failure at school, sports, and social life. But everything changes for Tsuna when Reborn, a fedora-wearing, gun-toting toddler who claims to be an Italian hit man, shows up at his house. Reborn was sent to Japan to groom Tsuna for his future life as a big mafia boss! Reborn's gun has quite an unusual effect: When Reborn shoots people in the head, they die but are then 'reborn' with temporary supernatural powers that allow them to fulfill their dying wish. Reborn and Tsuna make an unlikely pair, but every day they're together, Tsuna gets reborn into a new (and better) guy!",
      release_date: "March 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1926.jpg"},

{
      title: "Reborn! Vol. 05: The Prince of Star Arrives!",
      author: "Akira Amano",
      synopsis: "Tsuna becomes the protector of a master statistician and his book of statistics, which supposedly holds the key to Mafia control of the world! Naturally, other gangs would like to have this book, but that isn't Tsuna's biggest challenge. He also gets embroiled in the snowball fight to end all snowball fights, and finds himself on a zoo date with Kyoko!",
      release_date: "July 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1927.jpg"},

{
      title: "Reborn! Vol. 06: Ochōshimono Arrives!",
      author: "Akira Amano",
      synopsis: "As if Reborn's training regimen at home and at school weren't harrowing enough, Tsuna soon discovers that even his vacations are now being co-opted by his 'tutor' to further the cause of turning Tsuna into a proper boss for the Vongola Family! But even his leisure travails pale when he finds out what awaits at the wedding of...Reborn and Bianchi!",
      release_date: "September 2nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1928.jpg"},

{
      title: "Reborn! Vol. 17: Hibird Arrives!",
      author: "Akira Amano",
      synopsis: "The Power of the Rings Tsuna and his friends have been thrust ten years into the future, where all is decidedly not well. Their only hope of survival seems to lie with Lal Mirch, one-time associate of Tsuna's father Iemitsu.",
      release_date: "November 2nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1929.jpg"},

{
      title: "Reborn! Vol. 07: Hot Summer Arrives!",
      author: "Akira Amano",
      synopsis: "Tsuna is targeted for assassination, so a weapons tuner for the Vongola Family arrives to upgrade Reborn's arsenal. This winds up creating a fair amount of chaos, but it's summer and Tsuna soon finds other distractions--learning to swim, taking part in a summer poetry contest, racing into the ocean to rescue a girl in distress, and defying a ghost bent on taking him to the 'other side'!",
      release_date: "December 2nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1930.jpg"},

{
      title: "Reborn! Vol. 08: The Neighboring Town Boys Arrives!",
      author: "Akira Amano",
      synopsis: "Students at Tsuna's school are being attacked, and it's up to Tsuna and Reborn--on orders from the ninth generation boss of the Vongola Family--to figure out why and take the culprit down. Then it's time for a lunch break, featuring the ever-deadly cuisine of Bianchi, who has a lesson in love to teach. But the big surprise is Tsuna's discovery that a member of his 'family' has become a turncoat!",
      release_date: "February 3rd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1931.jpg"},

{
      title: "Reborn! Vol. 16: Ten Years Later Arrives!",
      author: "Akira Amano",
      synopsis: "Tsuna is just a scaredy-cat junior high student who's no good at school or sports...until Reborn shoots him in the head and he starts life fresh with the power to solve his problems! Junior high student Tsuna is a failure at school, sports, and social life. He needs a mafia hit man mentor like he needs a hole in the head...and he's about to get both! Reborn's gun will kill you and make you stronger! Final Volume!Reads R to L (Japanese Style). Tsuna is just a scaredy-cat junior high student who's no good at school or sports...until Reborn shoots him in the head and he starts life fresh with the power to solve his problems!Junior high student Tsuna is a failure at school, sports, and social life. He needs a mafia hit man mentor like he needs a hole in the head...and he's about to get both!Reborn's gun will kill you and make you stronger! Ten Years LaterTsuna wins the Sky Battle and secures the Vongola succession at last. He responds by passing out, though he manages to revive in time to join his friends in a celebration of the victory. But just when things appear to be returning to normal, Reborn gets into a fight with Lambo. Lambo tries to shoot himself with his Ten-Year Bazooka and hits Reborn instead. What happens next launches Tsuna into his most bizarre adventure yet!",
      release_date: "August 3rd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1932.jpg"},

{
      title: "Reborn! Vol. 13: The Mist Guardian Arrives!",
      author: "Akira Amano",
      synopsis: "Tsuna is just a scaredy-cat junior high student who's no good at school or sports...until  shoots him in the head and he starts life fresh with the power to solve his problems!Junior high student Tsuna is a failure at school, sports, and social life. He needs a mafia hit man mentor like he needs a hole in the head...and he's about to get both!Reborn's gun will kill you and make you stronger! R to L (Japanese Style).  Yamamoto uses the Shigure Soen Ryu sword technique taught to him by his father to battle Superbi Squalo, who has beaten a Shigure Soen Ryu practitioner once before! Even though Squalo sees through his moves, Yamamoto refuses to lose faith in the technique and presses on. The question is, does he have any chance of winning?! Meanwhile, the identity of the person chosen to be Tsuna's Mist Guardian is finally revealed! Junior high student Tsuna is a failure at school, sports and social life. He needs a Mafia hit man tutor like he needs a hole in the head...and he's about to get both!",
      release_date: "January 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1933.jpg"},

{
      title: "Reborn! Vol. 02: Many Arrives!",
      author: "Akira Amano",
      synopsis: "Tsuna, a timid junior high student, is a failure at school, sports, and social life. But everything changes for Tsuna when Reborn, a fedora-wearing, gun-toting toddler who claims to be an Italian hit man, shows up at his house. Reborn was sent to Japan to groom Tsuna for his future life as a big mafia boss! Reborn's gun has quite an unusual effect: When Reborn shoots people in the head, they die but are then 'reborn' with temporary supernatural powers that allow them to fulfill their dying wish. Reborn and Tsuna make an unlikely pair, but every day they're together, Tsuna gets reborn into a new (and better) guy!",
      release_date: "December 27th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1934.jpg"},

{
      title: "Reborn! Vol. 04: Bucking Bronco Arrives!",
      author: "Akira Amano",
      synopsis: "It's a reunion--mafia style! Dino, the 10th-generation of the Chiavorone family, and Reborn's former student, brings his squad of goons to pay Tsuna a visit. The explosive little Lambo decides to liven things up a bit by tossing several grenades at the goons. Things quickly escalate as Dino springs into action in a battle of whips versus grenades!",
      release_date: "May 2nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1935.jpg"},

{
      title: "Reborn! Vol. 15: Zero Point Breakthrough Arrives!",
      author: "Akira Amano",
      synopsis: "Tsuna is just a scaredy-cat junior high student who's no good at school or sports...until Reborn shoots him in the head and he starts life fresh with the power to solve his problems! Junior high student Tsuna is a failure at school, sports, and social life. He needs a mafia hit man mentor like he needs a hole in the head...and he's about to get both! Reborn's gun will kill you and make you stronger!R to L (Japanese Style). Tsuna is just a scaredy-cat junior high student who's no good at school or sports...until  shoots him in the head and he starts life fresh with the power to solve his problems! Junior high student Tsuna is a failure at school, sports, and social life. He needs a mafia hit man mentor like he needs a hole in the head...and he's about to get both! Reborn's gun will kill you and make you stronger! : Tsuna finally faces Xanxus in the Ring battle! While they trade blows, Xanxus shows off the power of his Flames of Rage, the very ability possessed by the 2nd Generation boss of the Vongola. Tsuna soon discovers that Xanxus has brought a lot more to the party and is pummeled by attack after attack. Tsuna's friends, meanwhile, pass the Storm Ring around in an attempt to protect Lambo from the renewed fury of Leviathan!",
      release_date: "May 2nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1936.jpg"},

{
      title: "Reborn! Vol. 12: Hard Battle Arrives!",
      author: "Akira Amano",
      synopsis: "The battle between the Varia assassins and Tsuna's 'family' for the Vongola rings is on! Tsuna's intervention on Lambo's behalf has caused forfeiture of both their rings, so it's up to Gokudera to hold up the side. He gives it his all, but the Varia are proving themselves masters of not playing fair and appear to view the rules, such as they are, as applicable only to their opponents!",
      release_date: "October 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1937.jpg"},

{
      title: "Reborn! Vol. 14: The Sky Match Arrives!",
      author: "Akira Amano",
      synopsis: "Tsuna is just a scaredy-cat junior high student who's no good at school or sports...until  shoots him in the head and he starts life fresh with the power to solve his problems!Junior high student Tsuna is a failure at school, sports, and social life. He needs a mafia hit man mentor like he needs a hole in the head...and he's about to get both!Reborn's gun will kill you and make you stronger! R to L (Japanese Style).  Tsuna's old adversary, Mukuro Rokudo, has successfully fought on the side of Tsuna's 'family' for possession of the Mist Ring. But his opponent, the Varia known as Mammon, has a highly developed sense of never-say-die! Later, Tsuna finally completes his training and returns in time to confront one of the Varia who is running amok. The whole game changes, however, when he finds out who this Varia really is! Junior high student Tsuna is a failure at school, sports and social life. He needs a Mafia hit man tutor like he needs a hole in the head...and he's about to get both!",
      release_date: "March 2nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1938.jpg"},

{
      title: "Reborn! Vol. 10: Ring Arrives!",
      author: "Akira Amano",
      synopsis: "Junior high student Tsuna is a failure at school, sports, and social life. He needs a Mafia hit man tutor like he needs a hole in the head...and he's about to get both!Tsuna faces a group of assassins that's taken exception to his candidacy for the coveted position of boss of the Vongola Family. With recent experience having made their deficiencies in fighting prowess glaringly apparent, Tsuna's 'family' members decide they need to undergo a serious training regimen in order to meet this new threat. It hardly helps that Tsuna, now possessed of an impressive new ability, needs the training more than anyone else!Junior high student Tsuna is a failure at school, sports, and social life. He needs a Mafia hit man tutor like he needs a hole in the head...and he's about to get both!",
      release_date: "June 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1939.jpg"},

{
      title: "Reborn! Vol. 11: Varia Arrives!",
      author: "Akira Amano",
      synopsis: "Junior high student Tsuna is a failure at school, sports, and social life. He needs a Mafia hit man tutor like he needs a hole in the head...and he's about to get both!Tsuna and his friends continue to train for the imminent confrontation with the Varia. Tsuna manages to complete the second stage of his training and Yamamoto has learned all he can from his father about swordplay, but Gokudera has yet to master the fighting technique of Dr. Shamal. Meanwhile, two members of the Varia have arrived ahead of schedule and are looking to take out anyone in possession of a Vongola ring!",
      release_date: "August 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1940.jpg"},

{
      title: "Reborn! Vol. 01: Reborn Arrives!",
      author: "Akira Amano",
      synopsis: "Tsunayoshi Sawada (Tsuna for short) is a cowardly junior high student who doesn't excel at academics or sports. He only attends school so he can stare at his beautiful classmate Kyoko from afar. But Tsuna's life takes a dramatic turn when Reborn, a suit-wearing, gun-toting baby who claims to be an Italian hit man, shows up at his house. Reborn was sent to Japan to groom Tsuna for his future life as a big Mafia boss. Tsuna doesn't believe this absurd story, so Reborn shoots Tsuna in the head with his gun. As Tsuna faces his own death, he's filled with regret that he never confessed his feelings to Kyoko...and suddenly he's overcome with supernatural powers that allow him to run off screaming to tell Kyoko how much he loves her. After five minutes, Tsuna goes back to normal. Reborn explains how his gun works: when he shoots a person in the head, if that person has regrets about her life, then she will die and be reborn, temporarily endowed with special powers that enable her to fix or solve whatever is the source of her regret. (If Reborn shoots someone who is free of regret, she would die.)Tsuna becomes Reborn's disciple, and because Reborn shoots Tsuna in the head all the time, he is constantly being reborn and growing into a stronger and better person, gradually impressing those around him and making friends.---Junior high student Tsuna is a failure at school, sports, and social life. He needs a Mafia hit man tutor like he needs a hole in the head...and he's about to get both!When Reborn, a fedora-wearing, gun-toting toddler, arrives and says he's come to groom Tsuna for his future as boss of an Italian organized crime family, Tsuna is more than a little skeptical. But Reborn may have the 'magic bullet' necessary to turn Tsuna's life around!",
      release_date: "October 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1941.jpg"},

      [genres[14], genres[4], genres[1], genres[10], genres[15]]
      ],
[
{
      title: "07 Ghost, Volume 06",
      author: "Yuki Amemiya",
      synopsis: "Ayanami has set his sights on capturing Teito at all costs, and has chosen the vessel with which to capture his prey -- the passionate and faithful Kuroyuri! When Kuroyuri's schemes place Teito at the mercy of Ayanami's entire military, Bishop Frau must make a soul-shattering decision between his duty as a Seven Ghost. . . and Teito's life.",
      release_date: "May 24th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1942.jpg"},

{
      title: "07-Ghost, Volume 02",
      author: "Yuki Amemiya",
      synopsis: "His best friend's fate spurs Teito into trying to master the Bascule - a powerful weapon that can harness and focus his innate power. Friends become enemies and rivals become allies as Teito begins to fulfill his destiny, and protect his fallen country from the minions of his former masters.",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1943.jpg"},

{
      title: "07 Ghost, Volume 07",
      author: "Yuki Amemiya",
      synopsis: "Trapped in an ancient battle between a wicked God and the Seven Ghosts and guided by three mysterious priests, Teito discovers a power that could save the world. . . and shed light on his own mysterious past.",
      release_date: "November 25th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1944.jpg"},

{
      title: "07-GHOST, Volume 16",
      author: "Yuki Amemiya",
      synopsis: "Years ago, the Seven Ghost Landkarte succumbed to a dark desire to eradicate all sin by erasing humanity. His plan has run unchecked for years, and now Frau, Teito, and fellow Seven Ghost Ea are the only ones left standing in his way. If Teito hopes to continue on his journey to seal the evil god Verloren, then he'll have to find a way to forgive even this most irredeemable of souls.",
      release_date: "January 1st 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1945.jpg"},

{
      title: "07-Ghost, Volume 01",
      author: "Yuki Amemiya",
      synopsis: "Thousands of years ago, two powerful countries existed in a delicate balance of power. Each received a magical Eye to watch over it. Each thought they were invincible... until one fell. The destinies of both now depend on only one thing... a boy named Teito.",
      release_date: "November 25th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1946.jpg"},

{
      title: "07-GHOST, Volume 15",
      author: "Yuki Amemiya",
      synopsis: "“The identities of the two final Seven Ghosts - revealed. The identity of the Warmonger - revealed. The twisted web of romance and blood relations that drew the Barsburg and Raggs empires into a tragic war - revealed. With all the cards laid on the table, the world of 07-Ghost stands poised for the final battle of good versus evil!",
      release_date: "January 1st 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1947.jpg"},

      [genres[4], genres[1], genres[18]]
      ],
      [
{
      title: "Parasyte, Volume 4",
      author: "Hitoshi Iwaaki",
      synopsis: "Shinichi, an ordinary high school student, is the only one who knows that aliens have invaded Earth and are controlling the minds of thousands of unwitting victims. It's a secret too dangerous to share...but too big to cover up. Then Shinichi meets Kana, a brave young girl with a strange gift that may allow her to detect the alien parasites. Has Shinichi at last found an ally to combat these creatures?",
      release_date: "January 20th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1948.jpg"},

{
      title: "Parasyte, Volume 2",
      author: "Hitoshi Iwaaki",
      synopsis: "Shin looks like an ordinary high school boy, but he has a terrible secret: an alien parasite has infected his body. This mysterious creature is ruthless, deadly, and utterly indifferent to human suffering...and it is beginning to assert itself over Shin. As Shinji fights for control of his body, can he also hold on to his humanity?",
      release_date: "January 18th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1949.jpg"},

{
      title: "Parasyte, Volume 7",
      author: "Hitoshi Iwaaki",
      synopsis: "Shinichi is both man and monster. He's an ordinary high school student whose body has been invaded by an alien parasite. And he alone knows a terrible secret: The aliens are plotting the destruction of humankind. Now Shinichi is the target - for both the government and the alien invaders - in a hunt that will lead to a terrifying, bloody showdown....",
      release_date: "July 20th 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1950.jpg"},

{
      title: "Parasyte, Volume 6",
      author: "Hitoshi Iwaaki",
      synopsis: "Shinichi has been hiding his true nature from the world: His body has been colonized by an alien being, and now he's half-human, half-alien. The other alien invaders, led by the cruel and beautiful Tamura, have discovered his secret. Shinichi is a threat to their plan to destroy the human race - a threat that these ruthless creatures will no longer ignore....",
      release_date: "January 19th 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1951.jpg"},

{
      title: "Parasyte, Volume 1",
      author: "Hitoshi Iwaaki",
      synopsis: "They arrive in silence and darkness. They descend from the skies. They have a hunger for human flesh. They are everywhere. They are parasites, alien creatures who must invade - and take control of - a human host to survive. And once they have infected their victims, they can assume any deadly form they choose: monsters with giant teeth, winged demons, creatures with blades for hands. But most have chosen to conceal their lethal purpose behind ordinary human faces. So no one knows their secret - except an ordinary high school student. Shin is battling for control of his own body against an alien parasite, but can he find a way to warn humanity of the horrors to come?",
      release_date: "July 20th 1990",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1952.jpg"},

{
      title: "Parasyte, Volume 5",
      author: "Hitoshi Iwaaki",
      synopsis: "MONSTER Shinichi was just an ordinary high school student, until his body was invaded by a parasite, a horrifying alien being. Now Shinichi is a monster with a human face . . . and a human conscience. He is unlike anything else in the world-part man, part alien, and caught in a desperate struggle to save his own soul.",
      release_date: "August 19th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1953.jpg"},

{
      title: "Parasyte, Volume 3",
      author: "Hitoshi Iwaaki",
      synopsis: "ALIEN NATION Aliens parasites have invaded Earth and taken over the minds of ordinary people. Shin has been infected with a parasite, but he still can think and act for himself. Now he's been approached by two mysterious victims of the invasion: Tamiya, a beautiful schoolteacher, and Shimada, another student. What do the aliens want with humanity . . . and with Shin?",
      release_date: "July 18th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1954.jpg"},

{
      title: "Parasyte, Volume 8",
      author: "Hitoshi Iwaaki",
      synopsis: "MONSTER TWIST Shinichi vows to destroy Goto, one of the deadliest of the alien parasites that have invaded Earth-and people's bodies. But at the moment of truth, Shinichi discovers something unexpected in his heart: sympathy for the monster. Soon Shinichi, who harbors his own alien parasite, will come to a stunning realization about the dark side of human nature-and his own soul. This is the final volume of Parasyte. Includes special extras after the story!",
      release_date: "February 16th 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1955.jpg"},

      [genres[7], genres[21], genres[5]]
      ],
      [
{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 7: Castaway",
      author: "Yuu Watase",
      synopsis: "Now that the Seiryu Warriors have ruined their attempt to summon the god Suzaku, Miaka and her Celestial Warriors are forced to travel to a frozen northern country in hopes of gathering the sacred treasures that will grant them a second chance. Illustrations. Rated for older teens.",
      release_date: "October 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1956.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 5: Rival",
      author: "Yuu Watase",
      synopsis: "A tale of a normal teenager who is transported into a fictional version of ancient China.",
      release_date: "March 20th 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1957.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 14: Prophet",
      author: "Yuu Watase",
      synopsis: "When Miaka was whisked away into the pages of a mysterious old book, she began a dual existence, divided between her life as an ordinary schoolgirl in modern Japan and her role as a priestess in a fictional version of ancient China. Priestess Miaka and her Celestial Warriors saved the earth from destruction, and in the wake of their triumph, Miaka believed that the world of the book was closed to her forever… but she was wrong!Suzaku's ProphetThe voice of the god Suzaku is invading Miaka's thoughts, and she is given a new mission: to restore the balance of power between the four gods. To do it, Miaka must defeat a new foe - a rising, monstrous power with ambitions to take over all of the universes!",
      release_date: "July 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1958.jpg"},

{
      title: "Fushigi Yûgi: VizBig Edition, Vol. 2",
      author: "Yuu Watase",
      synopsis: "Includes:Fushigi Yugi: The Mysterious Play, Volumes 4-6",
      release_date: "2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1959.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 6: Summoner",
      author: "Yuu Watase",
      synopsis: "When best friends Miaka and Yui open an ancient Chinese book, they find themselves transported to a parallel world. Trapped in the Universe of the Four Gods, Miaka is identified as a priestess who must save an entire empire.",
      release_date: "July 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1960.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 10: Enemy",
      author: "Yuu Watase",
      synopsis: "Convinced that she can never summon the God Suzaku and get her wishes granted, Miaka runs away from Tamahome and her celestial Warriors, straight into the arms of her enemy Amiboshi.",
      release_date: "January 1st 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1961.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 1: Priestess",
      author: "Yuu Watase",
      synopsis: "When best friends Miaka and Yui open the pages of an ancient Chinese book, they are transported into the Universe of the Four Gods, a parallel world to ancient China. Now, to escape schoolwork and family problems, Miaka flees to the parallel world, only to find a lot more danger and romance than she bargained for.",
      release_date: "May 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1962.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 17: Demon",
      author: "Yuu Watase",
      synopsis: "An enormous explosion rocks Taka's apartment complex with Taka is inside, and as fire engulfs the building, an image of the demon god Tenko appears in the flames Could Taka have been injured in the blast, or, worse, have fallen into Tenko's clutches? When Tenko steals the four stones that Miaka has already collected, is all hope lost for the return of Taka's memories? And will Tenko's manipulation of Taka and Miaka's friends slowly drive wedges between them and ensure their defeat?",
      release_date: "April 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1963.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 15: Guardian",
      author: "Yuu Watase",
      synopsis: "Miaka must reenter The Universe of the Four Gods and collect the seven magic stones that contain her soulmate Taka's lost memories . . . or else risk losing him forever. Illustrations. Rated for older teens.",
      release_date: "October 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1964.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 9: Lover",
      author: "Yuu Watase",
      synopsis: "Series Description: Fushigi Yugi features a modern girl magically transported into an ancient Chinese epic fantasy. When they open an ancient Chinese book, best friends Miaka and Yui are transported to the bizarre and dangerous Universe of the Four Gods. In a world with no fast food and no friends, they must find the seven Celestial Warriors and tap the power they hold. Attacks by ninja emissaries, an excursion into the court of the enemy, and Yui's sudden transformation into the Priestess of Seiryu put the two to the ultimate test A much-loved member of the Celestial Warriors of Suzaku has given his life for the sake of a treasure left behind by the god of the North. The Shentso-Pao is one of the keys to summoning the god Suzaku and having Miaka's most cherished wishes granted. Even if she passes the trials and obtains the treasure, can she hold onto it with the murderous Warriors of Seiryu close on her heels?",
      release_date: "April 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1965.jpg"},

{
      title: "Fushigi Yûgi: VizBig Edition, Vol. 5",
      author: "Yuu Watase",
      synopsis: "R to L (Japanese Style). Get It All--Get Big , The 3-in- Edition Change Your Perspective--Get BIGA Collection of Volumes 13 - 15 Yui summons Seiryu and uses one of her wishes to make Nakago a god. She then sends Miaka back to the real world to separate her from Tamahome, but Tamahome holds on to Miaka, and the couple is sent to present-day Japan together. Suboshi follows Yui to Japan, intent on destroying Miaka for Yui. Simultaneous battles rage in both 'The Universe of the Four Gods' and in present-day Japan, and Celestial Warriors die. But Yui is soon to discover that having her wishes granted comes at a great personal price...",
      release_date: "2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1966.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 2: Oracle",
      author: "Yuu Watase",
      synopsis: "Transported to the Universe of the Four Gods, Miaka is saved from the Imperial Guards when she is proclaimed to be the Priestess of Suzaku. But now she must deal with the lovestruck Emperor and the ire of his would-be bride.",
      release_date: "May 1st 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1967.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 13: Goddess",
      author: "Yuu Watase",
      synopsis: "'First published by Shogakukan Inc. in Japan as 'Fushigi Yugi.' --t.p. verso.",
      release_date: "April 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1968.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 16: Assassin",
      author: "Yuu Watase",
      synopsis: "As enigmatic exchange student Lian slowly takes control of the minds of everyone in school, his agenda becomes clear: he is training an army of assassins to kill Miaka. Illustrations. Rated for older teens.",
      release_date: "January 26th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1969.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 3: Disciple",
      author: "Yuu Watase",
      synopsis: "An exciting, funny, and heartfelt tale of a normal teenager who is transported into a fictional version of ancient China. She encounters base villains and dashing heroes, and still manages to worry about her grades and where her next meal is coming from!",
      release_date: "1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1970.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 8: Friend",
      author: "Yuu Watase",
      synopsis: "Now that the Seiryu Warriors have ruined their attempt to summon the god Suzaku, Miaka and her Celestial Warriors are forced to travel to a frozen northern country in hopes of gathering the sacred treasures that will grant them a second chance. Rated for older teens.",
      release_date: "January 26th 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1971.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 4: Bandit",
      author: "Yuu Watase",
      synopsis: "When best friends Miaka and Yui open an ancient Chinese book, they find themselves transported to a parallel world. Trapped in the Universe of the Four Gods, Miaka is identified as a priestess who must save an entire empire.",
      release_date: "January 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1972.jpg"},

{
      title: "Fushigi Yûgi: The Mysterious Play, Vol. 18: Bride",
      author: "Yuu Watase",
      synopsis: "The Neverending Story meets Romance of the Three Kingdoms in this praised shojo (girls') manga. When classmates Miaka and Yui open an ancient magical Chinese book, Miaka is transported inside, beyond the reach of schoolwork and family problems, into the Universe of the Four Gods. Heralded as the legendary Priestess of Suzaku, she becomes involved in romance and court politics, and must find the Seven Celestial Warriors of Suzaku to fulfill a prophecy and find her way home.",
      release_date: "1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1973.jpg"},

      [genres[4], genres[13], genres[1], genres[22]]
      ],
      [
{
      title: "Toradora! Vol. 5",
      author: "Yuyuko Takemiya",
      synopsis: "Ryuji Takasu thought that his ill-fated luck had turned around now that he was in Junior High sitting next to the girl of his dreams, Minori Kushieda. Ryuji was wrong; for after unwittingly crossing the most feared and fearsome girl in school, Taiga Aisaku, everything went off the deep end!New transfer student Ami might have won Ryuuji all to herself for the summer...but Taiga, Minori, and Kitamura won't be giving them a moment of peace! Let the wet hot Japanese summer begin!",
      release_date: "January 1st 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1974.jpg"},

{
      title: "Toradora! Vol. 3",
      author: "Yuyuko Takemiya",
      synopsis: "'A romance of warmth and humor with an uncanny ability to dodge the excesses of the genre while exploiting all the joys it has to offer.'—Ryuji Takasu thought that his ill-fated luck had turned around now that he was in Junior High and sitting next to the girl of his dreams, Minori Kushieda. Ryuji was wrong; after he unwittingly crossed the most fearsome girl in school, Taiga Aisaku, everything went off the deep end! Taiga made Ryuji's life by taking it over, and Ryuji's every attempt to make peace led only to further complications.It's taken time, but Ryuji and Taiga have found some common ground and can at least tolerate each other (just a little). The problem is everyone in Ryuji's class is now convinced that he and Taiga are datingeven Minori! And to make matters even more embarrassing, Minori has given Ryuji and Taiga her blessings. How's Ryuji ever going to win Minori's heart?",
      release_date: "September 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1975.jpg"},

{
      title: "Toradora! Vol. 7",
      author: "Yuyuko Takemiya",
      synopsis: "Ryuji Takasu thought that his ill-fated luck had turned around now that he was in Junior High sitting next to the girl of his dreams, Minori Kushieda. Ryuji was wrong; for after unwittingly crossing the most feared and fearsome girl in school, Taiga Aisaku, everything went off the deep end!It's taken time, but Ryuji and Taiga have slowly found some common ground and can at least tolerate each other (just a little). The problem is, Fate just doesn't seem to throw Ryuji a bone. Everyone in Ryuji's class is now convinced that he and Taiga are dating--even Minori! And to make matters even more embarassing, Minori has given Ryuji and Taiga her blessings. How's Ryuji ever going to win Minori's heart now?!",
      release_date: "April 21st 2015",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1976.jpg"},

{
      title: "Toradora! Vol. 6",
      author: "Yuyuko Takemiya",
      synopsis: "A must-have for fans of over-the-top high school comedies like School Rumble and The Melancholy of Haruhi Suzumiya, this is the sixth volume in the bestselling series.The gang is back in school and it's nearly time for the Culture Festival. Ryuuji and Taiga and the rest of Class 2-C can't figure out what to do for the event, until a random lottery pick tasks them with presenting... a pro-wrestling performance?!Over on the home front, Taiga's dad has decided to pop back into her life. The possibility of a divorce with his current wife could mean a reunion with his estranged daughter, but Taiga doesn't trust the old man. Ryuuji feels conflicted. While he hopes for a happily-ever-after between father and daughter, it could spell the end of his own 'domestic bliss' with Taiga.",
      release_date: "October 1st 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1977.jpg"},

      [genres[14], genres[13], genres[15]],
      ],
      [
{
      title: "Blade of The Immortal, Volume 16: Shortcut",
      author: "Hiroaki Samura",
      synopsis: "As Rin frets over her bodyguard Manji's disappearance, she is surprised by the arrival of two warriors, the feisty Doa Yoshino and her companion, Isaku Yasono-okami. Rin quickly regrets her decision to let this couple stay with her, but her detective work takes priority when she returns to the stronghold of Habaki Kagamura to search for Manji.",
      release_date: "2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1978.jpg"},

{
      title: "Blade of the Immortal, Volume 21: Demon Lair II",
      author: "Hiroaki Samura",
      synopsis: "A prisoner subjected to Habaki Kagimura and crazy Doc Burando's twisted experiments for far too long, Manji finds himself closer to freedom than ever before -- but several colorful villains block his way! While the shogun's executioner matches Manji and Doa's skills, the reborn, powerful Isaku struggles with Asaemon and Kagimura's henchmen. The breakout battle in the tunnels beneath Edo Castle continues! With plenty of mortal enemies to go around, Manji and company are surprised by the appearance of Burando's most horrific kessen-chu success story, just as the already treacherous tunnels begin to flood. Rin tries to remain hopeful, Burando faces the reality of his 'immortality experiments' on Manji, and a monstrous villain makes a return appearance!",
      release_date: "May 30th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1979.jpg"},

{
      title: "Blade of the Immortal, Volume 4: On Silent Wings",
      author: "Hiroaki Samura",
      synopsis: "Manji is one of the most skilled samurai in all of feudal Japan. He is also immortal, condemned to a life of combat until he spills the blood of a thousand evil men. But along with eternal life comes the need to make an eternal living, and so manji works as a bodyguard for Rin, who seeks to personally avenge her father's murder at the hands of one of Japan's deadliest swordsmen, Anotsu Kagehisa. But with Manji's instruction and her own burning thirst for retribution, can Rin ever stand against such a powerful and ruthless adversary? And in her quest to kill Anotsu, does she risk becoming more like him?",
      release_date: "October 31st 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1980.jpg"},

{
      title: "Blade of the Immortal Volume 25: Snowfall at Dawn",
      author: "Hiroaki Samura",
      synopsis: "The showdown that fans have been waiting for begins here, as Manji and Shira finally cross swords! Although he's missing an arm, Manji's mystical healing powers still ensure that he's a formidable opponent -- but his greatest foe, the masochistic Shira, has a few depraved tricks up his own sleeves! With Shira deadlier than ever, having had plenty of time to plot twisted revenge schemes, will Manji be able to protect Rin from his deranged nemesis? Plus -- an Itto-ryu warrior dies, in typically dramatic Hiroaki Samura fashion. Samura's widely acclaimed Blade of the Immortal manga series has won awards across the globe, including the Eisner Award in America, the prestigious Media Arts Award of Japan, and multiple British Eagle Awards.",
      release_date: "September 23rd 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1981.jpg"},

{
      title: "Blade of the Immortal, Volume 28: Raining Chaos",
      author: "Hiroaki Samura",
      synopsis: "Another group of suicidal soldiers face off! Heads and limbs fly as the vicious grudge match between desperate rogue Anotsu and disgraced officer Habaki continues! Three weird Rokki-dan thugs catch up to the fleeing Itto-Ryu crew -- with unexpected results! Hiroaki Samura's epic manga series nears its final volume, so now's the time to catch up with Manji, Rin, and your favorite battling groups of anachronistic, freakish warriors! Blade of the Immortal has won many awards across the globe, including the Eisner Award in America, the prestigious Media Arts Award of Japan, and multiple British Eagle Awards.",
      release_date: "January 1st 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1982.jpg"},

{
      title: "Blade of the Immortal, Volume 1: Blood of a Thousand",
      author: "Hiroaki Samura",
      synopsis: "Blade of the Immortal,Vol. 1- Blood of a Thousand by Samura,Hiroaki. [2010] Paperback",
      release_date: "September 22nd 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1983.jpg"},

{
      title: "Blade of the Immortal, Vol. 15: Trickster",
      author: "Hiroaki Samura",
      synopsis: "Kidnapped and bound by three Ittoryu warriors, Rin is unable to warn her bodyguard Manji, the immortal swordsman, that he's heading into a trap. To make matters worse, the Itto-ryu possess a large dose of kessen-satsu, the only poison known to damage Manji's blood and severely cripple his regenerative abilities. And is Mugai-ryu assassin Giichi following Manji in order to help rescue Rin … or will he just stick around long enough to finish off any survivors?",
      release_date: "November 30th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1984.jpg"},

{
      title: "Blade of the Immortal, Volume 5: On Silent Wings II",
      author: "Hiroaki Samura",
      synopsis: "In her quest across feudal Japan to avenge the murder of her parents, Rin has seen too much death and agony. When Rin befriends a young boy, she is horrified to learn that his father is one of her parents' killers. Wery of blood, Rin now wishes only for an apology from the killer, a mask maker whose only desire is to keep his evil past from his son and who will take up the sword again to protect his secret. Protecting Rin, however, is the immortal samurai, Manji--but if he kills the mask maker, will Rin's young friend be drawn into the same cycle of vengeance that has scarred her own life?",
      release_date: "1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1985.jpg"},

{
      title: "Blade of the Immortal, Volume 19: Badger Hole",
      author: "Hiroaki Samura",
      synopsis: "The time for reconnaissance, planning, and waiting is over! Rin and Doa, desperate to be reunited with their friends (or even reassured that they're alive), take their first bold steps in penetrating Edo Castle's defenses and foiling Kagimura's foul 'immortality' experiments! A trip to an old doctor, a chance encounter with a high-strung peasant, and an appearance by a strange, all-new Itto-ryu warrior combine to make this volume an important series of encounters in persistent Rin's quest to find Manji and Isaku-and in her own growth as a warrior! The 'Badger Hole' is a dank passageway that leads to an underground tunnel system beneath Edo Castle. With some new skills and tricks, these two young ladies brave darkness and the promise of death to run headlong towards Kagimura's cruel prisons, where Manji hangs drugged and helpless!",
      release_date: "June 30th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1986.jpg"},

{
      title: "Blade of the Immortal, Volume 7: Heart of Darkness",
      author: "Hiroaki Samura",
      synopsis: "It is said that the enemy of my enemy is my friend, but couldn't he just be another enemy? Rin and her bodyguard, the immortal swordsman Manji, need to know the answer when they visit the headquarters of the mysterious Akagi assassins - led by the beautiful and deadly Hyakurin - who are out for vengeance against the Itto-Ryu, the rogue swordschool of Anotsu Kagehisa, the man responsible for the murder of Rin's parents. Can Rin and Manji hold to their own course once they've agreed to join forces with the misfit band of killers? Collecting the eight-issue story arc. 'Samura's art is the icing which makes this...confection of violence and irreverence rather enticing.' - The Comics Journal",
      release_date: "1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1987.jpg"},

{
      title: "Blade of the Immortal, Volume 18: The Sparrow Net",
      author: "Hiroaki Samura",
      synopsis: "The immortality of the captive Manji is being sorely tested, as the horrifying experiments commanded by Habaki Kagimura in the dungeons below Edo castle continue. One of Kagimura’s doctors, Ayame Burando, has already gone half-mad, tormented by the sickening mutilations intended to unlock the secret of passing Manji’s amazing regenerative powers to others, and Burando’s replacements have upped the ante with their utter incompetence. Meanwhile, Manji’s charge, Rin, is desperately trying to find him, but Edo’s brutal police are on her trail, and the race is on for Rin to free her immortal bodyguard before she joins him behind bars!",
      release_date: "October 30th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1988.jpg"},

{
      title: "Blade of the Immortal, Volume 11: Beasts",
      author: "Hiroaki Samura",
      synopsis: "After traveling a long and perilous road together, Rin and her immoral bodyguard, Manji, have become separated, Rin risking life and limb in her pursuit of her family's murderer, the ruthless Anotsu Kagehisa, leader of the outlaw Itto-Ryu sword school. Manji is slowly recovering -- and reassembling -- after being dismembered by Itto-ryu thugs, and has set off to find Rin. Meanwhile, both friends and enemies are also assembling. Manji's ally, the beautiful assassin Hyakurin has put a lot of Itto-ryu swordsmen under the dirt, but the tides are turned when she falls under the hands of a group of Itto-ryu killers who will go to any length -- and spare no agonies -- to get her to talk. Collecting issues #66-72 of the ongoing series.",
      release_date: "January 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1989.jpg"},

{
      title: "Blade of the Immortal, Volume 10: Secrets",
      author: "Hiroaki Samura",
      synopsis: "Anotsu Kagehisa, murderous leader of the rogue Ittö-ryü, has journeyed to the mountains far from Edo to the romote Shingyötö-ryü dojo under invitation to bring the sword school under his wing. But instead of a warm welcome, Anotsu finds a dojo full of angry young men who don't want to take orders from an upstart, unless he can proves he's tougher than the best of them! That sits just fine with Anotsu, who has dedicated his life to putting the killing back into Japan's formalized sword schools, but Anotsu suspects that something more than proof of his worthiness lies beneath the challenge. Meanwhile, the immortal swordsman, Manji, is recovering from a battle that left him literally cut to pieces. His charge, Rin, is till nowhere to be found, bound for vengeance against Anotsu, but soon his troubles may become a bit more immediate, troubles that even an immortal may not survive! Collecting issues #58-#65 of the ongoing series.",
      release_date: "2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1990.jpg"},

{
      title: "Blade of the Immortal Volume 14: Last Blood",
      author: "Hiroaki Samura",
      synopsis: "Rin has spent countless days chasing the murderer of her parents, and now she has Anotsu Kagehisa where she wants him, but the deathly ill Anotsu is too sick for the honor-bound Rin to strike down. But such is not the case for the students of the Shingyvtv-ry], who are out to avenge the death of their sword master, and they have Rin captured and Anotsu cornered. The spirit of revenge is thick in the air - and about to get thicker as Manji, Rin's immortal bodyguard, finally reunites with his charge as this pot of retribution prepares to boil over. And so Manji's faced with a strange irony - to save Rin, he must cut down the men who are out to kill Anotsu, Manji's sworn enemy",
      release_date: "2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1991.jpg"},

{
      title: "Blade of the Immortal, Volume 17: On the Perfection of Anatomy",
      author: "Hiroaki Samura",
      synopsis: "Manji, the immortal swordsman, lies imprisoned in the bakufu stronghold of the mysterious Habaki Kagemura. Seeking to impart the life-extending powers of the Manji’s kessen chu bloodworms to other humans, Kagimura orders his medical examiners to discover the secrets of Manji’s amazing regenerative abilities. Using a series of convicts as live subjects in an increasingly grisly series of twisted experiments, Burando, Kagimura’s lead medical examiner, begins to grow more desperate and sickened with each horrifying failure. And through it all, Manji lives, and regenerates, and bides his time for the moment that he can pay back his tormentors... limb by limb!",
      release_date: "2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1992.jpg"},

{
      title: "Blade of the Immortal, Volume 22: Footsteps",
      author: "Hiroaki Samura",
      synopsis: "Hiroaki Samura's latest Blade of the Immortal volume finds Manji and Rin recovering from their harrowing escape out of Edo's underground prisons and finally confronting their odd relationship. Döa and Isaku have something important to announce when Anotsu and the Itto-ryu reunite with their missing members, and Habaki Kagimura faces a death sentence! To atone for his failures and sins, Kagimura has one month to destroy Anotsu and his crew — or Kagimura must commit suicide. With his Mugai-ryu assassins disbanded, Kagimura enlists even stranger felons than before, creating the frightening, new Rokki-dan gang. With his colorful cast expanding, Samura's knack for creating memorable characters and his masterful ability to dovetail multiple plotlines into each other are evident in this new volume, which also packs a powerful surprise ending!",
      release_date: "December 21st 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1993.jpg"},

{
      title: "Blade of the Immortal, Volume 26: Blizzard",
      author: "Hiroaki Samura",
      synopsis: "Last volume's vicious battle continues -- and a popular, key character meets a grisly end! With the help of some new allies, Manji and Rin may have a fighting chance, but can a wounded and road-weary Magatsu hold his own against an invigorated, freshly armed foe? Hiroaki Samura's spellbinding masterpiece finds several major story lines finally beginning to dovetail. As some characters' strange paths are beginning to converge, is Samura's epic study on revenge and survival beginning to wind its way toward a massive, final confrontation?",
      release_date: "May 21st 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1994.jpg"},

{
      title: "Blade of the Immortal Volume 27: Mist on the Spider's Web",
      author: "Hiroaki Samura",
      synopsis: "With Hiroaki Samura's epic series completed in Japan, now's the time to catch up with Manji, Rin, and your favorite battling groups of anachronistic, enigmatic warriors! Anotsu Kagehisa's Itto-Ryu crew is splintered - yet still deadly - as Habaki Kagimura's group of suicidal Rokki-dan soldiers closes in on them! The cursed former general Kagimura is desperate to find and kill the remaining members of the Itto-Ryu - even if it puts his own daughter's life on the line! Hiroaki Samura's Blade of the Immortal series has won many awards across the globe, including the Eisner Award in America, the prestigious Media Arts Award of Japan, and multiple British Eagle Awards.",
      release_date: "May 1st 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1995.jpg"},

{
      title: "Blade of the Immortal, Volume 2: Cry of the Worm",
      author: "Hiroaki Samura",
      synopsis: "The curse of the bloodworm is what keeps Manji alive -- slit his throat or stab him in the heart and those mystical worms will force his body to heal. This immortal curse will not be lifted until Manji has killed one thousand evil men. Manji's female companion, Rin, finds the treasured sword of her destroyed  (school of swordsmanship). The ronin who has it must have been involved in the destruction of the school -- and that means that Manji could be one step closer to ending his curse. If you like ninja action, Hiroaki Samura's  will keep you on edge.",
      release_date: "December 15th 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1996.jpg"},

{
      title: "Blade of the Immortal, Volume 13: Mirror of the Soul",
      author: "Hiroaki Samura",
      synopsis: "Anotsu Kagehisa, master swordsman and leader of the rogue Itto-ryu dojo, has sheathed his blade for the moment to join in marriage with the daughter of yet another dojo soon to be brought under his dark wing. But for a man of action, the formal traditions of feudal Japan can be just as tense and fraught with hidden agendas as the battlefield. And while Anotsu may indulge in a moment of peace, his enemies are not at rest, among them Rin, who has stalked him for years to take revenge for the murder of her parents. Anotsu had best make sure that if he stops to smell the flowers, he doesn't end up losing his head!",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1997.jpg"},

{
      title: "Blade of the Immortal, Volume 9: The Gathering II",
      author: "Hiroaki Samura",
      synopsis: "His droop-toed characters and hilarious sound effects have gained Don Martin worldwide recognition and acclaim as the seminal MAD artist and a master of the profoundly absurd cartoon! Packed with outrageous gags and unique humor, this is Don's hand-picked collection of his favorite material -- including his syndicated newspaper strip The Nutheads, and material never before published in the U.S.! New cover painting by Martin.This special limited edition hardcover of Don Martin's Droll Book, includes a numbered signature sheet featuring an all-new, full-color illustration signed by the artist! Limited to 500 copies!",
      release_date: "1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1998.jpg"},

{
      title: "Blade of the Immortal, Volume 29: Beyond Good and Evil",
      author: "Hiroaki Samura",
      synopsis: "Disgraced Edo officer Habaki and his strange group of Rokki-dan thugs turn a seemingly innocent harbour into a port of death - killing everyone who's docked there just in case they're working with Anotsu's fleeing warriors! And when will Manji, revenge-seeking Rin, desperate Anotsu, and possibly the most powerful soldier arrive?",
      release_date: "April 1st 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1999.jpg"},

{
      title: "Blade of the Immortal, Volume 8: The Gathering",
      author: "Hiroaki Samura",
      synopsis: "The immortal samurai, Manji, and his charge, Rin have lost their best chance to avenge the death of Rin's parents at the hands of Anotsu Kagehisa's renegade sword school, the deadly Itto-ryu.",
      release_date: "1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2000.jpg"},

{
      title: "Blade of the Immortal, Volume 12: Autumn Frost",
      author: "Hiroaki Samura",
      synopsis: "You'd think that Manji, the immortal swordsman, would have dispatched just about every sinister personality in feudal Japan on his mission to slay a thousand evil men. But instead of thinning out the vicious herd, he's only shaken loose the most vicious and depraved. Now, Manji and his pal Magatsu are on the trail of one of the baddest apples in the barrel, Shira, old enemy of Manji - and a one-handed enemy, courtesy of the immortal's blade. But while Manji and Magatsu are hunting Shira, the crafty killer has hired a pack of hunters of his own, and if he can't kill Manji, he's hoping for the next best thing: to cut Manji to pieces on a daily basis. Streetwise and violent and yet possessed with a dark grace and beauty, Hiroaki Samura's award-winning Blade of the Immortal has taken its rightful place among the finest that graphic fiction has to offer, a stunning tour-de-force of story and art like none other.",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2001.jpg"},

{
      title: "Blade of the Immortal, Volume 6: Dark Shadows",
      author: "Hiroaki Samura",
      synopsis: "MANGA ACTION ADVENTURE WITH THE IMMORTAL SAMURAI MANJI, WHO WILL NOT HAVE HIS CURSE OF ETERNAL LIFE LIFTED UNTIL HE HAS KILLED 1000 EVIL MEN. WORKING AS A BODYGUARD FOR THE YOUNG GIRL RIN, MANJI MUST FIGHT THE RENEGADE ITTO-RYU SWORD SCHOOL TO AVENGE THE DEATH OF RIN'S FATHER. BLADE OF THE IMMORTAL HAS WON JAPAN'S 1998 MEDIA ARTS AWARD AND THE USA'S WILL EISNER AWARD.",
      release_date: "1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2002.jpg"},

{
      title: "Blade of the Immortal, Volume 24: Massacre",
      author: "Hiroaki Samura",
      synopsis: "There s going to be a massacre at Edo Castle! While the bitter Kagimura believes that he s sending his forces chasing after Anotsu and the entire Itto-ryu crew, Anotsu fakes them all out and risks his life in one mad dash back to Edo Castle grounds! What is his strange mission? Hiroaki Samura's widely acclaimed Blade of the Immortal manga series has won awards across the globe, including the Eisner Award in America, the prestigious Media Arts Award of Japan, and multiple British Eagle Awards.'",
      release_date: "2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2003.jpg"},

{
      title: "Blade of the Immortal, Volume 20: Demon's Lair",
      author: "Hiroaki Samura",
      synopsis: "A massive, 280-page volume brings readers back into the 'Badger Hole' with Rin and Doa, as they make some shocking discoveries and finally find their missing companions! When Rin bumps into Toraemon, the unfortunate assistant to crazy Doc Burando and witness to his disgusting 'immortality experiments,' it seems that breaking Manji free will be a breeze. Not so. Getting Manji out of Edo's nightmarish underground cells and dank tunnel systems will be just as arduous as the ordeal of locating him was!",
      release_date: "2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2004.jpg"},

{
      title: "Blade of the Immortal, Volume 3: Dreamsong",
      author: "Hiroaki Samura",
      synopsis: "Makie is a natural-born killer bred to be a geisha. Splitting her life between servitude and slaughter could lead to an untimely death, so it's time she chooses a path, but her choice could mean trouble for Manji, the immortal samurai. It's round two for the man who gave up his right to die and the woman who gave up her right to dream. And this time, there'll be no winners.",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2005.jpg"},

      [genres[0], genres[7], genres[1], genres[9]]
      ],
[
{
      title: "Goth",
      author: "Otsuichi",
      synopsis: "A notebook that leads to murder - a refrigerator filled with hands... a pit of dead dogs... an accidental suicide... a boy buried alive - and where two teenagers linked by an obsession with murder and torture explore the recesses of humanity's dark side.",
      release_date: "July 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2006.jpg"},

      [genres[8], genres[1], genres[18]]
      ],
[
{
      title: "InuYasha: Good Intentions",
      author: "Rumiko Takahashi",
      synopsis: "Inu-Yasha's magic sword can only be wielded in defense of humanity. But when the lovesick Nobunaga tells Kagome and InuYasha the story of a 300-year-old demon, it seems that such a sword might come in handy!",
      release_date: "October 18th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2007.jpg"},

{
      title: "InuYasha: Flesh and Bone",
      author: "Rumiko Takahashi",
      synopsis: "The adventure ensues in this new tale of the best-selling graphic novel. Inu-Yasha, Kagome, and Shippo continue their quest for more shards of the shattered magic jewel. Along the way, they meet a young girl named Nazuma fleeing from a horde of Spider-Head demons.",
      release_date: "April 18th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2008.jpg"},

{
      title: "InuYasha: River of Blood",
      author: "Rumiko Takahashi",
      synopsis: "River of BloodKagome faces a difficult decision - only she can help Kikyo heal from Naraku's miasma. Will the love triangle between Kagome, Inuyasha, and Kikyo stop her from doing the right thing? Kohaku comes under Naraku's power and is ordered to steal the infant Hakudoshi. Will Kohaku be able to resist? While Inuyasha and his comrades watch, Naraku shows up at the demon bird's nest for a showdown. A series of disturbing events is about to unfold, and a path to the borderland will be revealed",
      release_date: "September 18th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2009.jpg"},

{
      title: "InuYasha: Lost and Alone",
      author: "Rumiko Takahashi",
      synopsis: "In this adventure, Kagome returns to present-day Japan, only to find herself in the middle of an eerie ghost story. Can she save the lost soul of a little girl?",
      release_date: "January 18th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2010.jpg"},

{
      title: "InuYasha: Building a Better Trap",
      author: "Rumiko Takahashi",
      synopsis: "It isn't only demons who can gain power from the Shikon jewel, as Kagome, InuYasha, and their companions see when they fall afoul of the hideous 'Peach Man.' Meanwhile, there are even more mysteries of the jewel to be uncovered, as they meet a village of warriors dedicated to fighting the demons the jewel creates.",
      release_date: "January 18th 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2011.jpg"},

{
      title: "InuYasha: The Struggle Continues",
      author: "Rumiko Takahashi",
      synopsis: "Historical action and romance from one of Japan’s most beloved creators! L to R (Western Style). The evil Midoriko and Naraku both seek to restore the Shikon Jewel. To do this they must take the final shards from Koga and Kohaku. Then Inuyasha and the gang stumble across a new sword with some intriguing powers. Could this sword lead to a victory against both Midoriko and Naraku?  Kagome is a modern Japanese high school girl. Never the type to believe in myths and legends, her world view dramatically changes when, one day, she's pulled out of her own time and into another! There, in Japan's ancient past, Kagome discovers more than a few of those dusty old legends are true, and that her destiny is linked to one legendary creature in particular--the dog-like half-demon called Inuyasha! That same trick of fate also ties them both to the Shikon Jewel, or 'Jewel of Four Souls.' But demons beware...the smallest shard of the Shikon Jewel can give the user unimaginable power.",
      release_date: "February 18th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2012.jpg"},

{
      title: "InuYasha: Turning Back Time",
      author: "Rumiko Takahashi",
      synopsis: "Transported back to Japan's feudal era, high school student Kagome accidentally releases the feral half-demon dog boy Inu-Yasha from his imprisonment for stealing the Jewel of Four Souls.",
      release_date: "May 18th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2013.jpg"},

{
      title: "Inuyasha, Volume 06",
      author: "Rumiko Takahashi",
      synopsis: "With the power granted by a large piece of the Shikon Jewel, Naraku's scheming is in high gear as his minions go forth to do his bidding. Kikyo, the priestess whose duty it once was to guard the jewel, gave the fragment to him, but why? Then Inuyasha takes on another of Naraku's evil offspring, a demon that inhabits the very sword his half brother Sesshomaru wields. Naraku's human origins may yet prove to be his downfall if Kikyo can exploit his weaknesses by forcing him to make a difficult choice, one that is mirrored by Inuyasha's lost love for Kikyo and a possible future with Kagome!",
      release_date: "February 1st 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2014.jpg"},

{
      title: "InuYasha: The Demon of the Birds",
      author: "Rumiko Takahashi",
      synopsis: "The Demon of the BirdsThe search for the final shard of the Shikon Jewel leads Inuyasha and the gang to a mountain fortress. But the gate is guarded by two giant statues and a force that will only allow the dead to enter Seeking a path to the underworld, Naraku meanwhile teams up with a new demon, Abi Hime, who hunts the blood of innocent villagers to heal her mother. Inuyasha and friends step in to stop them when they find that Kikyo may be involved",
      release_date: "July 18th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2015.jpg"},

{
      title: "InuYasha: Close Enemies",
      author: "Rumiko Takahashi",
      synopsis: "Inu-Yasha's half-brother, the demon Sessho-Maru, has returned with vengeance on his mind and new, stronger powers. Will Inu-Yasha be able to defeat his stronger sibling again? It doesn't help that the demon Naraku is on a rampage.",
      release_date: "September 18th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2016.jpg"},

{
      title: "The Art of Inuyasha",
      author: "Rumiko Takahashi",
      synopsis: "This book includes cell art and paintings from the hit anime series running on the Cartoon Network. Showcasing the excellent artwork and beautiful characters of the immensely popular time-traveling horror/action series, this book offers fans page after page of full-color designs, plus character profiles, watercolors from the manga covers, character profiles and 66 pages of colored manga pages, and much more!",
      release_date: "February 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2017.jpg"},

{
      title: "Inuyasha, Volume 15",
      author: "Rumiko Takahashi",
      synopsis: "After falling through an ancient well, schoolgirl Kagome has become the defender of both modern and 16th-century Japan against the forces of myth and darkness. But if she thought the horrors she and partner Inu-Yasha have faced so far were bgad, she hasn't met Inu-Yasha's family yet. This installment includes the final fight with the soulless, seductive Yura of the Hair.",
      release_date: "May 18th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2018.jpg"},

{
      title: "InuYasha: Wounded Souls",
      author: "Rumiko Takahashi",
      synopsis: "Kikyo, the killer of InuYasha in the distant past, is distraught from the shock of being resurrected, and she must make a decision — whether to return to death for Kagome's sake or hold onto her second chance at life.",
      release_date: "May 18th 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2019.jpg"},

      [genres[0], genres[4], genres[1], genres[10], genres[18]]
      ],
[
{
      title: "Ghost in the Shell 2: Man-machine Interface",
      author: "Masamune Shirow",
      synopsis: "March 6, 2035. Motoko Aramaki is a hyper-advanced cyborg, a counter-terrorist net security expert heading the investigative department of the giant multi-national, Poseidon Industrial. Partly transcending the physical world and existing in a virtual world of networks, Motoko is a fusion of multiple entities and identities, deploying remotely controlled prosthetic humanoid surrogates around the globe to solve a series of bizarre crimes. Meanwhile, Tamaki Tamai, a psychic investigator from the Channeling Agency, has been commissioned to investigate strange changes in the temporal universe, brought about by two forces, one represented by the teachings of a professor named Rahampol, and the other by the complex, evolving Motoko entity. What unfolds will be all in a day's work...a day that will change everything, forever.",
      release_date: "June 28th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2020.jpg"},

{
      title: "Ghost in the Shell 1.5: Human-error Processor",
      author: "Masamune Shirow",
      synopsis: "This volume presents for the first time in America the lost Ghost in the Shell stories, created by Masamune, but never collected until now. Deep into the 21st century, the line between man and machine has been inexorably blurred as humans rely on the enhancement of mechanical implants, and robots are upgraded with human tissue. Older teens.",
      release_date: "July 23rd 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2021.jpg"},

{
      title: "Ghost in the Shell",
      author: "Masamune Shirow",
      synopsis: "In the rapidly converging landscape of the 21st century Major Kusanagi is charged to track down the craftiest and most dnagerous terrorists and cybercriminals, including ghost hackers When he track the trail of one hacker, her quest leads her to a world she could never have imagined.",
      release_date: "October 5th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2022.jpg"},

      [genres[0], genres[5]]
      ],
[
{
      title: "Blue Exorcist, Vol. 3",
      author: "Kazue Kato",
      synopsis: "As a new Exorcist Esquire at True Cross Academy, Rin Okumura has a long way to go before he reaches the top rank of Paladin. When Rin and his classmates are sent to search for a ghost, Amaimon, King of Earth, takes Rin by surprise and steals the Koma Sword. Higher powers have been observing events at the academy and make their presence known. New players enter the game, and Rin doesn't even know he's playing!",
      release_date: "March 4th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2023.jpg"},

{
      title: "Blue Exorcist, Vol. 7",
      author: "Kazue Kato",
      synopsis: "Mamushi and Todo now have both eyes of the Impure King and are headed for the temple that was once the center of the Myodha sect. Mamushi wants to seal the eyes away, but may be too late to realize Todo’s true purpose—the awakening of the Impure King! Meanwhile, Rin learns more about Father Fujimoto’s connection to Tatsuma and the origin of the Koma Sword. Rin will need the weapon and all of his strength to face the terrible power of the Impure King!",
      release_date: "September 2nd 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2024.jpg"},

{
      title: "Blue Exorcist, Vol. 8",
      author: "Kazue Kato",
      synopsis: "Awakened by the traitor Saburota Todo, the Impure King’s massive form threatens to engulf the city of Kyoto. As the Exorcists of the Tokyo Branch and the monks of the Myodha temple do all they can to contain the demon, Rin and his friends find themselves separated and facing their own battles. While Rin and Ryuji race to confront the full might of the Impure King, Yukio takes on Todo singlehanded and discovers that he may be his own worst enemy!",
      release_date: "April 4th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2025.jpg"},

{
      title: "Blue Exorcist, Vol. 6",
      author: "Kazue Kato",
      synopsis: "The heads of the various Myodha temple families gather to discuss recent events surrounding the Eyes of the Impure King. Revelations at the meeting only deepen suspicion of Suguro’s father, Tatsuma, and angry accusations follow. Tatsuma’s silence on the matter isn’t helping either. Amid all the swirling distrust, Rin tries to make sense of things but struggles to keep his flame in check. Then Rin receives a letter that may shed more light on the current situation—and the secret past!",
      release_date: "April 4th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2026.jpg"},

{
      title: "Blue Exorcist, Vol. 9",
      author: "Kazue Kato",
      synopsis: "All of Rin’s friends have done their best to hold off the deadly Impure King so Rin can confront it. Now it’s entirely up to Rin to finish off the gigantic demon. Although Rin has finally drawn the Koma sword and found his confidence, that alone may not be enough to defeat the Impure King! And Yukio’s battle with the possessed Saburota Todo may have awakened something dark deep within him.",
      release_date: "September 4th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2027.jpg"},

{
      title: "Blue Exorcist, Vol. 1",
      author: "Kazue Kato",
      synopsis: "Raised by Father Fujimoto, a famous exorcist, Rin Okumura never knew his real father. One day a fateful argument with Father Fujimoto forces Rin to face a terrible truth – the blood of the demon lord Satan runs in Rin's veins! Rin swears to defeat Satan, but doing that means entering the mysterious True Cross Academy and becoming an exorcist himself. Can Rin fight demons and keep his infernal bloodline a secret? It won't be easy, especially when drawing his father's sword releases the demonic power within him!",
      release_date: "August 4th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2028.jpg"},

{
      title: "Blue Exorcist, Vol. 11",
      author: "Kazue Kato",
      synopsis: "Rin and his friends continue to investigate the Seven School Mysteries. Yukio watches as the Exwires take on the Academy’s ghosts, troubled by lingering doubts about his own feelings. Rin seems to be learning to control his power more, but is tapping his inner demonic fire going to be his salvation or his doom?",
      release_date: "August 2nd 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2029.jpg"},

      [genres[0], genres[15], genres[18]]
      ],
      [

{
      title: "Negima! Volumes 19-21",
      author: "Ken Akamatsu",
      synopsis: "TO THE MAGICAL WORLD!Asuna trains hard to accompany Negi on the quest of his life-- a journey to the Magical World to find his mysterious and powerful father! But when they arrive, they realize it's going to be even harder than they thought. A mysterious platinum-haired boy named Fate scatters Negi's students to the winds, and it's up to him to save them from the unknown dangers lurking in this new realm!Contains Negima! volumes 19-20-21!",
      release_date: "June 25th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2030.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 33",
      author: "Ken Akamatsu",
      synopsis: "A PERFECT WORLDNegi and his party have arrived at the Gravekeeper's Palace and are ready to rescue their friends and save the world, but the evil organization has another trick up their seeve. Ala Alba is about to find out exactly what Cosmo Entelekheia means - as they experience it firsthand. Includes special extras after the story!",
      release_date: "February 17th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2031.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 7",
      author: "Ken Akamatsu",
      synopsis: "IT'S TRAINING TIME!After their adventures on a school trip to Kyoto, you'd think that Negi and his students would want to rest. But now that they're back at Mahora Academy, relaxation is pretty low on the list! First there are Asuna's dreams, which hint at a deeper relationship between Negi and his father of which she is unaware. Then Negi starts a quest to improve his abilities. To do this, the teacher will need to become a student - and Negi's students will become his teachers.Fei Ku is a master of every martial art imaginable, but can she teach Negi the skill he needs to survive? And there's only one magic user at Mahora Academy with abilities that surpass Negi's own. Dark Evangeline might train him, but only at a price - and does Negi really want to be Evangeline's personal slave?!",
      release_date: "September 17th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2032.jpg"},

{
      title: "Negima!: Magister Negi Magi, Vol. 15",
      author: "Ken Akamatsu",
      synopsis: "STUDENT VS. TEACHER!Boy wizard Negi Springfield has met some tough challenges. After all, heâ��s an English teacher at an all-girls high school. But now he must face one of his own students in battle . . . without relying on his magical powers!Includes special extras after the story![Rating logo:]OTAges 16+",
      release_date: "August 17th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2033.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 20",
      author: "Ken Akamatsu",
      synopsis: "BLAST FROM THE PASTAsuna and her friends want to give Negi some fun in the sun at the beach before they all set out on a dangerous journey to the Magical World. But then Negiâ��s childhood friend Anya crashes the partyâ��and all hell breaks loose when her jealousy goes nuclear!",
      release_date: "October 17th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2034.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 9",
      author: "Ken Akamatsu",
      synopsis: "MAHORAFEST MADNESSItâ��s almost time for the legendary MahoraFestâ��the Mahora Academy Festivalâ��and the whole school is buzzing with anticipation. Class 3-A is preparing a haunted house, even though the class really is haunted. Evaâ��s robotic servant appears to be malfunctioning, but the mechanical girl might just be feeling human emotions. And sheâ��s not the only one! Asuna sees the upcoming festival as the perfect opportunity to finally confess true love to Takahata-sensei. Unfortunately, Asuna canâ��t work up the nerve. Whatâ��s a girl to do? Why, go out on a practice date with a magically aged Negi, of course!",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2035.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 4",
      author: "Ken Akamatsu",
      synopsis: "A FIELD TRIP INTO PERILTen-year-old teacher/magician Negi Springfield is looking forward to taking his class of beautiful girls to the historic cities of Kyoto and Nara–but there’s a catch! Negi’s student, Konoka, is a kidnap target of feuding magicians in those very cities. Her grandfather, the school principal, orders Negi to protect Konoka–while keeping the fact that she’s in danger a secret from the unsuspecting girl. To add to Negi’s headaches, his sword-wielding student, Setsuna, may be a spy for the kidnappers. With so much on his mind, how is a young magician to see the sights, care for a sarcastic stoat, and stay in the good graces of his hot-tempered magical partner Asuna?",
      release_date: "January 16th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2036.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 21",
      author: "Ken Akamatsu",
      synopsis: "A Fateful EncounterNegi and his students have journeyed to the Magical World in search of Negiâ��s father. But a mysterious platinum-haired boy called Fate has other plans for them. Seriously wounded, Negi watches helplessly as his students are teleported to the far corners of this mysterious realm. Negi made a promise to protect his students no matter what. Can he rescue them from certain peril?",
      release_date: "January 17th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2037.jpg"},

{
      title: "Negima! Magister Negi Magi, Vol. 1",
      author: "Ken Akamatsu",
      synopsis: "Ten-year-old prodigy Negi Springfield, has just graduated from magic academy. He dreams of becoming a master wizard. Instead he's sent to Japan to teach English...at an all-girls high school! All the students are delighted with their cute new teacher--except for Asuna, who resents Negi for replacing the teacher she secretly has a crush on. Although he is forbidden to display his magical powers, sometimes Negi can't resist. And when Asuna discovers Negi's secret, she vows to make his life as difficult as possible--just the thing to prepare Negi for the challenges of life as a master wizard!",
      release_date: "July 17th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2038.jpg"},

{
      title: "Negima! Magister Negi Magi, Vol. 2",
      author: "Ken Akamatsu",
      synopsis: "KNOWLEDGE CAN BE DANGEROUS!For ten-year-old teacher Negi Springfield and his all-girl class, it's time for final exams! If his students manage  to end up with the lowest scores in school, the principal has promised to make Negi an  teacher. To prepare for the tests, the class takes a trip to the school's Library Island. But this is no quiet place of study...stone golems, traps, and secret passageways are the norm throughout the enormous library building. With all of these distractions, can Negi's class hope to climb out of the cellar--both academically and literally?",
      release_date: "August 12th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2039.jpg"},

{
      title: "Negima! Volumes 7-9",
      author: "Ken Akamatsu",
      synopsis: "10-year-old Negi Springfield has just graduated from a British school for wizards. After meeting with the school headmaster to discuss his graduate work assignment, he finds that he will be moving to Japan--to teach English at an all-girls high school. Under strict instructions not to show his magic powers, Negi finds that he can't resist using them to help others. Of course, despite his good intentions sometimes his magic just makes things even worse!",
      release_date: "December 6th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2040.jpg"},

{
      title: "Negima! Volumes 16-18",
      author: "Ken Akamatsu",
      synopsis: "10-year-old Negi Springfield has just graduated from a British school for wizards. After meeting with the school headmaster to discuss his graduate work assignment, he finds that he will be moving to Japan--to teach English at an all-girls high school. Under strict instructions not to show his magic powers, Negi finds that he can't resist using them to help others. Of course, despite his good intentions sometimes his magic just makes things even worse!",
      release_date: "November 27th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2041.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 38",
      author: "Ken Akamatsu",
      synopsis: "THE ETERNAL QUESTION Class 3-A has finally had enough of Negi and his philandering ways! They've devised an elaborate plot for revenge, but everything changes when they discover that their young teacher may actually have some small affection for one special girl. Can Negi escape with his secret intact, or will they make him talk?FINAL VOLUME!",
      release_date: "May 17th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2042.jpg"},

{
      title: "Negima! Volumes 10-12",
      author: "Ken Akamatsu",
      synopsis: "TIME AFTER TIMEThe epic Mahora Academy Festial storyline that spanned over 700 pages begins here, in this omnibus collection of Negima! Volumes 10, 11, and 12. Exhausted by Evangeline's training, battling enemy wizards, hiding his magic abilities, and teaching 31 students, Negi sleeps through the first day of the festival! All the girls he promised to spend the day with are going to be incredibly disappointed... or are they? This is Negima!, after all! But before the festival is over, Negi finds himself competing in the Budokai Marital Arts Tournament, and there's more at stake than he thinks!Includes special extras after the story!",
      release_date: "March 13th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2043.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 36",
      author: "Ken Akamatsu",
      synopsis: "NEGI VS. FATE   The battle with Fate continues, and neither opponent shows any sign of giving in. Knowing Fate's past, Negi is even more determined to win him over to his side. It comes down to one last clash of spells, but with magic as powerful as theirs, they can't possibly both survive.",
      release_date: "November 17th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2044.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 5",
      author: "Ken Akamatsu",
      synopsis: "A KISS IS NOT JUST A KISSWhen ten-year-old prodigy Negi Springfield graduated from university with a degree in magic, he never imagined he would soon be teaching English to a bevy of gorgeous high school girls. Now Negi’s old friend Chamo, a lecherous weasel from Wales, and student Asakura have arranged a competition among the girls to see which of the lovely students will be the first to kiss the teacher! Sure, a kiss will strengthen Negi’s magical abilities, but doesn’t this contest just support Chamo’s voyeuristic proclivities? On the other hand, Negi needs all the help he can get when the magical creatures of western Japan strike back!",
      release_date: "April 16th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2045.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 35",
      author: "Ken Akamatsu",
      synopsis: "TWO WORLDS COLLIDE   The time has come for the long-awaited showdown between Negi Springfield and Fate Averruncus. Negi is prepared to do whatever it takes to knock his own version of sense into Fate. Meanwhile the two worlds have connected, and Mahora Academy must save itself from hordes of demons!Includes special extras after the story!",
      release_date: "August 17th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2046.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 32",
      author: "Ken Akamatsu",
      synopsis: "His battle with Fate looms ever closer, but Negi has more pressing concerns. The darkness has started to consume him, and if he doesn't get it under control, he'll turn into a monster. Before Negi can keep his students safe from Fate, he has to keep them safe from himself.",
      release_date: "October 7th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2047.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 17",
      author: "Ken Akamatsu",
      synopsis: "THE ULTIMATE BATTLEBoy wizard and high school teacher Negi is the only one who can stop Chao and her plans for world domination. But Chaoâ��master magician, Martian warrior, and supergeniusâ��may be the most formidable opponent the boy wonder has ever faced. Who will survive their final clash?",
      release_date: "January 17th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2048.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 14",
      author: "Ken Akamatsu",
      synopsis: "ALL GROWN UP?Negi Springfield has finally met his fatherâ��or at least a hologram of him. Now Negi is more determined than ever to follow in his fatherâ��s footsteps. But there is no time for self-reflection: After his mind-blowing performance at the BudÅ�kai Martial Arts Tournament, Negi is at the center of a media storm. On the run from marauding reporters, Negi disguises himself with the help of a potion that turns him into a gorgeous bishÅ�nen. But using magic puts Negi at risk. His sneaky pupil Chisame may finally discover his secretâ��that Negi is really a powerful wizard!",
      release_date: "April 17th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2049.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 30",
      author: "Ken Akamatsu",
      synopsis: "Now that Negi has learned all about his parents and his village, Goedel invites the boy to join forces with him, promising to help Negi get revenge on those who destroyed his life. Our hero asserts that vengeance was never his goal, but the dark magic inside him claims otherwise.",
      release_date: "May 17th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2050.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 31",
      author: "Ken Akamatsu",
      synopsis: "10-year-old Negi Springfield has just graduated from a British school for wizards. After meeting with the school headmaster to discuss his graduate work assignment, he finds that he will be moving to Japan--to teach English at an all-girls high school. Under strict instructions not to show his magic powers, Negi finds that he can't resist using them to help others. Of course, despite his good intentions sometimes his magic just makes things even worse!",
      release_date: "August 17th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2051.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 22",
      author: "Ken Akamatsu",
      synopsis: "NEW TEACHERTo help his students get home from the Magical World, Negi must become a more powerful wizardâ��and fast. Just when heâ��s beginning to doubt himself, he meets Rakan, his fatherâ��s old friend and rival. Rakan is an awesome wizard, but his teaching methods are a little . . . eccentric. Can he teach Negi to be strong like his father?Includes special extras after the story!",
      release_date: "April 17th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2052.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 18",
      author: "Ken Akamatsu",
      synopsis: "TELL ME A SECRETNow that the Mahora Festival is finally over, everyone’s ready for some peace and quiet. But the school is in an uproar after Misora impersonates a priest . . . and convinces her fellow students to spill their deepest secrets in the confessional. It seems like everyone has a secret–and all of them involve Negi!",
      release_date: "April 17th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2053.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 29",
      author: "Ken Akamatsu",
      synopsis: "Realizing it might be a trap, Negi and friends accept an invitation to the ball where Goedel claims he will tell Negi everything he wants to know.  Haruna insists that Negi make as many pactios as possible before walking into danger, but the girls won’t surrender their lips so easily!",
      release_date: "January 14th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2054.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 26",
      author: "Ken Akamatsu",
      synopsis: "HIS FATHER’S SON After hearing about his father’s heroics, Negi vows to prove himself—by winning the martial arts tournament and freeing his students from slavery. With his teacher’s help, Negi has gotten much stronger, so it should be a piece of cake! What possibly could go wrong? Turns out: plenty! Available on DVD from FUNimation Entertainment ",
      release_date: "May 15th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2055.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 27",
      author: "Ken Akamatsu",
      synopsis: " INVINCIBLE It’s time for the final match to decide the winner of the Nagi Cup, but Negi must compete against martial arts legend Jack Rakan. Will Negi’s intense training and new trump cards be enough to beat the unbeatable hero?",
      release_date: "September 17th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2056.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 19",
      author: "Ken Akamatsu",
      synopsis: "WIN OR DIE!Itâ��s summer breakâ��a time when most kids are getting ready for a vacation full of fun and friends. But not Asuna. Sheâ��s prepping for the challenge of her life. Sheâ��s started a new school club thatâ��s devoted to helping Negi find his father, but before Asuna can embark on this adventure she has to prove her mettle. The test: a dangerous mission on a snow-covered mountain. Does Asuna have what it takes to survive?",
      release_date: "July 17th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2057.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 34",
      author: "Ken Akamatsu",
      synopsis: "DARKNESS FALLSThe battle gets fierce as Negi and his party come up against the leaders of Cosmo Entelekheia. Our hero manages to defeat Dynamis, but in the process he allows the dark magic to almost consume him. As he fights for his humanity, his class must fight Fate for their lives.Includes special extras after the story!",
      release_date: "May 17th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2058.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 37",
      author: "Ken Akamatsu",
      synopsis: "ENEMY TO WOMANKIND   The war is over, and all that's left is the save the Magical World from imminent destruction. With the help of Asuna and others in his class, Negi is working to put his plan into effect. Meanwhile, Negi's students are realizing just what a heartbreaker the little boy has become.",
      release_date: "February 17th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2059.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 23",
      author: "Ken Akamatsu",
      synopsis: "DARKNESS OR LIGHT?The great tournament that will decide the fate of Negi and his friends is fast approaching. Negi has no choice: He must become a great wizard like his father–and soon. For Negi will have to face his powerful nemesis, Fate Averruncus, and make a profound decision, one that will bring him victory or death!Available on DVD from FUNimation EntertainmentIncludes special extras after the story!",
      release_date: "August 12th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2060.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 28",
      author: "Ken Akamatsu",
      synopsis: "Now that the tournament is over, Negi wants to find his missing students and take them home. But first, he’s confronted by a sinister man who claims to know the answers to all of Negi’s questions. He promises to share those answersâ€”but only if Negi will join his cause. Â  Available on DVD from FUNimation Entertainment",
      release_date: "November 17th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2061.jpg"},

{
      title: "Negima! Magister Negi Magi, Vol. 3",
      author: "Ken Akamatsu",
      synopsis: "BLOOD FEUD WITH A VAMPIREThere is a vampire stalking the night! Normally ten-year-old teacher/magician Negi Springfield would have no problem dispatching such a villain, but this vampire has a magic-enhancing partner--and worse, the vampire is a student in his own class! Now he must find a partner of his own, but with a class full of beautiful girls all vying for the position, it won't be an easy task. Add in Negi's old friend, a skirt-chasing, wisecracking weasel from Wales, and the nice orderly chaos of Negi's life turns into a hilarious melee of sirens and sorcery!",
      release_date: "November 17th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2062.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 6",
      author: "Ken Akamatsu",
      synopsis: "The chaotic class trip continues as Negi Springfield and his thirty-one beautiful female students explore the historic cities of Kyoto and Nara. Negi’s special headache is Konoka, the headmaster’s granddaughter, who turns out to have her own magical abilities! Although she’s not aware of them, others certainly are . . . and Konoka is kidnapped by a group of wizards who plan to corrupt her budding talents. Negi is going to need all the help he can get–even if it comes from a former foe. . . .",
      release_date: "June 17th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2063.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 24",
      author: "Ken Akamatsu",
      synopsis: "NODOKA IN PERILThe Festival of Ostia is the Magical Worldâ��s most amazing eventâ��and includes a major martial arts tournament in which Negi and his friends will be active participants! But a team of professional bounty hunters blocks Nodokaâ��s way to the event. Can Negi save her, or will they all fall into the huntersâ�� trap?",
      release_date: "November 17th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2064.jpg"},

{
      title: "Negima!: Magister Negi Magi, Volume 25",
      author: "Ken Akamatsu",
      synopsis: "A TRICK OF FATE When the Festival of Ostia begins, Fate Averruncus emerges from hiding to set his evil plans into motion. But first he gives Negi a proposition. If Negi promises not to interfere with Fate’s plot, he will allow Negi and the girls to go home unharmed. Now Negi must choose between his students and an entire world. ",
      release_date: "February 17th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2065.jpg"},

{
      title: "Negima!: Magister Negi Magi, Vol. 16",
      author: "Ken Akamatsu",
      synopsis: "In Stock. Covers do have a few bends and some wear. Mint!",
      release_date: "October 17th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2066.jpg"},

      [genres[0], genres[14], genres[4], genres[22], genres[15]]
      ],
      [
{
      title: "Naoki Urasawa's Monster, Volume 5: After the Carnival",
      author: "Naoki Urasawa",
      synopsis: "Johan is a cold and calculating killer with a mysterious past, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracy and serial murder open the door to a compelling, intricately woven plot in this masterpiece manga thriller.Suspecting that Johan suffers from a multi-personality disorder, Dr. Tenma calls upon expert criminal psychologist Rudy Gillen to help him in his campaign to stop Johan. But will Dr. Gillen come to the same conclusion as the authorities - that Tenma is the killer with the split personality?",
      release_date: "May 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2067.jpg"},

{
      title: "Naoki Urasawa's Monster, Volume 9: A Nameless Monster",
      author: "Naoki Urasawa",
      synopsis: "Johan is a cold and calculating killer with a mysterious past, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracy and serial murder open the door to a compelling, intricately woven plot in this masterpiece manga thriller.When an unusual children's book causes a disturbing reaction in Johan, it may provide an ideal opportunity for Tenma to fire a well-aimed sniper shot. Could this curious book created by an obscure Czech writer also be the key to unlocking more secrets of Johan's enigmatic past?",
      release_date: "July 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2068.jpg"},

{
      title: "Naoki Urasawa's Monster, Volume 10: Picnic",
      author: "Naoki Urasawa",
      synopsis: "Johan is a cold and calculating killer with a mysterious past, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracy and serial murder open the door to a compelling, intricately woven plot in this masterpiece manga thriller.'Cedok Bridge, the three frogs...the mother of the twins is in Pargue.' A cryptic message from wealthy financier Schuwald sends Tenma to the city of a hundred spires. There, he meets Grimmer, an investigative reporter tracking down the former director of the infamous 511 Kinderheim orphanage. Could it be that the horrific experiments of the past are being recreated in Prague?",
      release_date: "December 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2069.jpg"},

{
      title: "Naoki Urasawa's Monster, Volume 8: My Nameless Hero",
      author: "Naoki Urasawa",
      synopsis: "Johan is a cold and calculating killer with a mysterious past, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracy and serial murder open the door to a compelling, intricately woven plot in this masterpiece manga thriller.Tenma is hot on Johan's trail and he's more determined than ever. Now in top physical condition and armed with a high-performance sniper rifle, has Tenma acquired the keen hunter's edge necessary to bag his prey? Or will his physician's instincts prevent him from carrying out his dreaded task?",
      release_date: "February 1998",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2070.jpg"},

{
      title: "Naoki Urasawa's Monster, Volume 1: Herr Dr. Tenma",
      author: "Naoki Urasawa",
      synopsis: "An ice-cold killer is on the loose, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracies, serial murders, and a scathing indictment of hospital politics are all masterfully woven together in this compelling manga thriller. Tenma risks his promising medical career to save the life of a critically wounded young boy. Unbeknownst to him, this child is destined for a terrible fate. Who could have known that Tenma would create a monster!",
      release_date: "December 5th 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2071.jpg"},

{
      title: "Naoki Urasawa's Monster, Volume 7: Richard",
      author: "Naoki Urasawa",
      synopsis: "Johan is a cold and calculating killer with a mysterious past, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracy and serial murder open the door to a compelling, intricately woven plot in this masterpiece manga thriller.When Johan works his way into the inner circle of powerful financier Hans Schuwald, things get dicey for Richard Brown, a private detective hired to find Schuwald's long-lost son. As Richard edges closer to a horrifying truth, his path clashes with Johan's hidden agenda - and his unfortunate fate is all but sealed.",
      release_date: "December 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2072.jpg"},

{
      title: "Naoki Urasawa's Monster, Volume 6: The Secret Woods",
      author: "Naoki Urasawa",
      synopsis: "Johan is a cold and calculating killer with a mysterious past, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracy and serial murder open the door to a compelling, intricately woven plot in this masterpiece manga thriller.Tenma's former fiancée Eva Heinneman's life has gone downhill since the death of her father and her breakup with Tenma. Now she's involved with a menacing man with a shady past and a mysterious connection to Johan. Meanwhile, Johan has worked his way into the graces of a powerful but lonely old financier. Could Johan be targeting this man for more than just his money?",
      release_date: "May 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2073.jpg"},

{
      title: "Naoki Urasawa's Monster, Volume 3: 511 Kinderheim",
      author: "Naoki Urasawa",
      synopsis: "An ice-cold killer is on the loose, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracies, serial murders, and a scathing indictment of hospital politics are all masterfully woven together in this compelling manga thriller.Tenma's on the run!! A wanted man, he's the prime suspect for the serial killings he's trying to stop. But he still manages to edge closer to the truth about Johan's mysterious past, and everything seems to point to a now defunct institution of East Berlin - an infamous 'experimental' orphanage called 511 Kinderheim!",
      release_date: "March 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2074.jpg"},

{
      title: "Naoki Urasawa's Monster, Volume 2: Surprise Party",
      author: "Naoki Urasawa",
      synopsis: "An ice-cold killer is on the loose, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracies, serial murders, and a scathing indictment of hospital politics are all masterfully woven together in this compelling manga thriller.Tenma springs to action when he discovers that Johan, the boy whose life he saved nine years ago, has grown up and turned into a serial killer. But when Tenma finds out that Johan has strong inside connections with government officials, he realizes that this monster is far more powerful than he could have ever imagined.",
      release_date: "September 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2075.jpg"},

{
      title: "Naoki Urasawa's Monster, Volume 4: Ayse's Friend",
      author: "Naoki Urasawa",
      synopsis: "Johan is a cold and calculating killer with a mysterious past, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracies and serial murder open the door to a compelling, intricately woven plot in this masterpiece manga thriller.As Tenma uncovers more about the infamous 511 Kinderheim orphanage, Johan's twin sister Anna sets out on her own to stop her brother. Their separate searches lead them both to a powerful neo-Nazi organization conspiring to establish Johan as their new superleader! Can Tenma and Anna stop Johan from becoming another Hitler?",
      release_date: "August 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2076.jpg"},

{
      title: "Naoki Urasawa's Monster, Volume 15: The Door to Memories",
      author: "Naoki Urasawa",
      synopsis: "Johan is a cold and calculating killer with a mysterious past, and brilliant Dr. Kenzo Tenma is the only one who can stop him! Conspiracy and serial murder open the door to a compelling, intricately woven plot in this masterpiece manga thriller.Dangerous men of influence hoping to exploit Johan's frightening min for their own shadowy purposes are also hot on the 'monster's' trail, and they're willing to use Eva, Tenma's ex-fiancée, to identify him. But what will happen to Eva when her assistance is no longer required? Will her only chance for salvation rest on the shoulders of the very man who's been hired to kill her?!",
      release_date: "October 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2077.jpg"},

      [genres[0], genres[21], genres[8]]
      ],
      [
{
      title: "X/1999, Volume 02: Overture",
      author: "CLAMP",
      synopsis: "This supernatural saga begins when teenager Kamui loses his entire family in a mysterious accident. Kamui finds that he is heir to a bizarre destiny that could determine the fate of the entire world.",
      release_date: "1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2078.jpg"},

{
      title: "X (3-in-1 Edition), Vol. 1",
      author: "CLAMP",
      synopsis: "Reads R to L (Japanese Style). ",
      release_date: "October 11th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2079.jpg"},

{
      title: "X/1999, Volume 03: Sonata",
      author: "CLAMP",
      synopsis: "'Originally published in Japan in 1993 by Kodakawa Shoten Publishing, Inc., Ltd., Tokyo'--T.p. recto.",
      release_date: "1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2080.jpg"},

{
      title: "X/1999, Volume 01: Prelude",
      author: "CLAMP",
      synopsis: "As part of the X/1999 series, this volume features breathless action and stunning art. When Kamui returns to Tokyo, he learns that his childhood girlfriend Kotori and psychic Princess Hitoni are having strange dreams about his role in a coming apocalypse! Is he the angel of salvation, or the devil of destruction?",
      release_date: "July 29th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2081.jpg"},

{
      title: "X (3-in-1 Edition), Vol. 2",
      author: "CLAMP",
      synopsis: "Reads R to L (Japanese Style). ",
      release_date: "April 10th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2082.jpg"},

{
      title: "X (3-in-1 Edition), Vol. 3",
      author: "CLAMP",
      synopsis: "Reads R to L (Japanese Style), for audiences rated teen plus. X, the epic series from CLAMP, is now available in this deluxe collector’s edition. The pages have been recomposed in the original right-to-left reading order and restored to the highest quality. Each volume contains three of the original graphic novels, along with gorgeous, full-color illustrations never before published outside Japan. As the gears of fate turn, Kamui draws ever closer to the moment when he must make his inevitable choice: become either humanity’s savior or its scourge. After his last surviving blood relative sacrifices herself to bring forth the Sacred Sword, the weapon he will need in the war to come, that moment finally arrives. With Kamui’s decision, however, come unimaginable consequences for Fuma and Kotori. Meanwhile, the members of both sides of the conflict—the Dragons of Heaven and the Dragons of Earth—converge on Tokyo, obeying the call of their intertwined destinies. Among them is Subaru Sumeragi, a powerful magic user, who arrives just in time to help Kamui see the path that he must take. But Subaru must conquer his own doubts and fears when he’s finally reunited with the one person who is truly special to him—and whom he must fight to the death.",
      release_date: "April 10th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2083.jpg"},

      [genres[0], genres[7], genres[4], genres[8], genres[15], genres[18]]
      ],
      [
{
      title: "Naruto, Vol. 09: Turning the Tables",
      author: "Masashi Kishimoto",
      synopsis: "Still in the thick of the Chūnin Selection Exams, the student ninja unleash their signature techniques as they spar in a series of one-on-one elimination matches. The heated battles bring out a new side in many of the opponents as they fight to advance to the third stage of the test and, in some cases, struggle to survive! Naruto looses an explosive new move on his foe—but will it be enough to win? And when Hyuga clan members Neji and Hinata are pitted against each one another, will old family grudges make their duel even more vicious than the others?",
      release_date: "October 4th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2084.jpg"},

{
      title: "Naruto, Vol. 18: Tsunade's Choice",
      author: "Masashi Kishimoto",
      synopsis: "Naruto's training with Jiraiya intensifies, while Orochimaru uses threats to coerce a legendary kunoichi into helping him. But will her tragic past play a part in destroying Naruto's future?",
      release_date: "August 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2085.jpg"},

{
      title: "Naruto, Vol. 26: Awakening",
      author: "Masashi Kishimoto",
      synopsis: "The battle between former best friends Sasuke and Naruto grows even more fierce. Will Sasuke risk everything, even Naruto's life, to obtain the power of the Mangekyo?",
      release_date: "February 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2086.jpg"},

{
      title: "Naruto, Vol. 01: The Tests of the Ninja",
      author: "Masashi Kishimoto",
      synopsis: "In another world, ninja are the ultimate power—and in the village of Konohagakure live the stealthiest ninja in the world. But twelve years ago Konohagakure was attacked by a fearsome threat—a nine-tailed fox demon which claimed the life of the Hokage, the village champion. Today, peace has returned, and a troublemaking orphan named Uzumaki Naruto is struggling to graduate from the Ninja Academy. His goal: to become the next Hokage. But unknown to Naruto and his classmates, within him is a terrifying force...",
      release_date: "September 21st 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2087.jpg"},

{
      title: "Naruto, Vol. 24: Unorthodox",
      author: "Masashi Kishimoto",
      synopsis: "Kankuro, Temari and Gaara unexpectedly aid Konohagakure against the Sound Ninja. Could they have another purpose besides rekindling the old alliance between Leaf and Sand?",
      release_date: "October 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2088.jpg"},

{
      title: "Naruto, Vol. 07: Orochimaru's Curse",
      author: "Masashi Kishimoto",
      synopsis: "Deep within the Forest of Death, Naruto, Sasuke and Sakura are still reeling from Orochimaru's attack—and now they must battle his minions, the mysterious Sound Ninja. And as Sasuke struggles with the strange force growing inside him, spreading like an infection from the curse-mark Orochimaru burned into his neck, time is running out for the student ninja to collect the scrolls they need to pass the Chūnin Exams!",
      release_date: "May 1st 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2089.jpg"},

{
      title: "Naruto, Vol. 17: Itachi's Power",
      author: "Masashi Kishimoto",
      synopsis: "What does Sasuke's older brother want with Naruto? As Jiraiya trains Naruto to push beyond his limits, secrets of the past are revealed, and a mysterious shinobi who could change everything begins to take center stage.",
      release_date: "May 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2090.jpg"},

{
      title: "Naruto, Vol. 14: Hokage vs. Hokage!!",
      author: "Masashi Kishimoto",
      synopsis: "Their village is under attack, and Naruto, Sakura and Shikamaru can't stay behind to defend it. They have a top priority mission to track down Sasuke and the Sand chūnin. But with nine bloodthirsty ninja on their heels, the hunters have quickly become the hunted! Back at the village, the Third Hokage is still trapped in Orochimaru's impenetrable barrier. Pushed to the breaking point, the Hokage must decide how far he will go to save what is precious to him!",
      release_date: "November 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2091.jpg"},

{
      title: "Naruto, Vol. 47: The Seal Destroyed",
      author: "Masashi Kishimoto",
      synopsis: "Naruto inches ever closer to discovering the true identity of his nemesis, Pain. But is it worth it as the frustrated ninja begins to morph at last into the dreaded Nine Tails? Plus an unexpected confession reveals incredible secrets about his past as Naruto prepares for the ultimate battle with Pain. Can the chakra-challenged Naruto win when one misstep could spell disaster?",
      release_date: "August 4th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2092.jpg"},

{
      title: "Naruto, Vol. 61: Uchiha Brothers United Front",
      author: "Masashi Kishimoto",
      synopsis: "As Madara uses his dominating power to fend off the Five Kage, Sasuke is reunited with his brother Itachi. Can the brothers put aside their differences and help each other out? When they come face-to-face with Kabuto, the man who revived Itachi from the dead, they'll have to team up if they have any hope of survival!",
      release_date: "July 27th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2093.jpg"},

{
      title: "Naruto, Vol. 15: Naruto's Ninja Handbook!",
      author: "Masashi Kishimoto",
      synopsis: "The tension between Naruto and Gaara builds, and Naruto finds himself not only understanding his rival but also sympathizing with him. But that doesn't mean he's gone soft. As Gaara continues to mutate, Naruto prepares for the fight of his life!",
      release_date: "December 20th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2094.jpg"},

{
      title: "Naruto, Vol. 32:  The Search for Sasuke",
      author: "Masashi Kishimoto",
      synopsis: "A new ninja causes trouble among the ranks of Team Kakashi when they return from the battle against Sasori. The secrets this stranger hides could be disastrous for Naruto. Meanwhile, Naruto's nemesis Orochimaru has troubles of his own—his stronghold may be infiltrated by a spy!",
      release_date: "April 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2095.jpg"},

{
      title: "Naruto, Vol. 08: Life-and-Death Battles",
      author: "Masashi Kishimoto",
      synopsis: "As the preliminaries to the third phase of the Chūnin Exams begin, the student ninja face off against each other in no-holds-barred, one-on-one bouts. Deaf to Sakura's pleas to withdraw from the contest and despite the crippling effects of the curse placed on him by the nefarious Orochimaru, Sasuke enters the first match against one of the vicious Sound Ninja spies. But with his signature fighting techniques suddenly off-limits, how can Sasuke possibly prevail? And even if he manages to survive the violent brawl, Orochimaru's curse is threatening to change Sasuke forever!",
      release_date: "August 3rd 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2096.jpg"},

{
      title: "Naruto, Vol. 04: The New Opponents",
      author: "Masashi Kishimoto",
      synopsis: "There comes a time in every ninja's training when he must put aside his morals and face the truth: ninjas are tools for killing. For Naruto, seeing Sasuke dead, that time is now. Rage awakens the nine-tailed fox spirit within Naruto, giving him the strength to overcome Haku—but can he bring himself to finish the job?As the battle for the Land of the Waves comes to a tragic ending, our heroes return to the village of Konohagakure in time for the Chūnin Exams. But junior ninjas from around the world have gathered to take the exam, bringing their own strange ninjutsu and mysterious goals.",
      release_date: "October 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2097.jpg"},

{
      title: "Naruto, Vol. 25: Brothers",
      author: "Masashi Kishimoto",
      synopsis: "Sasuke delves deep to remember how his brother Itachi became the feared ninja he is today! In the bloody battle that ensues between Naruto and his best friend, Naruto realizes that being close to an Uchiha brother could mean his downfall.",
      release_date: "December 3rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2098.jpg"},

{
      title: "Naruto, Vol. 33: The Secret Mission",
      author: "Masashi Kishimoto",
      synopsis: "Morphing out of control, a stronger-than-ever Naruto turns on his own teammates! Orochimaru triggers a frightening change in Naruto as he reveals a sinister plot that's been the death of far more people than anyone knew.",
      release_date: "June 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2099.jpg"},

{
      title: "Naruto, Vol. 02: The Worst Client",
      author: "Masashi Kishimoto",
      synopsis: "Tired of menial tasks, Naruto, Sasuke and Sakura ask for a tougher assignment. But you should always be careful what you wish for! Along with their sensei, Kakashi, the trio must guard a cranky old man from the Land of Waves. But Tazuna the bridge builder is in more danger than anyone could have imagined. And now the young ninja are too!",
      release_date: "June 2nd 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2100.jpg"},

{
      title: "Naruto, Vol. 13: The Chūnin Exam, Concluded...!!",
      author: "Masashi Kishimoto",
      synopsis: "The final battle of the Chūnin Exam is at hand! Sasuke makes it to the arena in time to compete, but the anticipation has only whetted Gaara's terrible bloodlust and strained his already fragile sanity. Can Gaara pull himself together in time to face Sasuke's newfound strength? Or will the demon inside him take complete control and wreak havoc on Konohagakure?!",
      release_date: "August 2nd 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2101.jpg"},

{
      title: "Naruto, Vol. 16: Eulogy",
      author: "Masashi Kishimoto",
      synopsis: "Death in the village! When the dust settles from Orochimaru's attack, the shinobi find that not everyone has survived. While the ninja mourn, an unlikely candidate is chosen for greatness, a long-lost ninja returns with a dangerous entourage, and Naruto finds his life in more turmoil than ever before.",
      release_date: "March 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2102.jpg"},

{
      title: "Naruto, Vol. 46: Naruto Returns",
      author: "Masashi Kishimoto",
      synopsis: "Naruto's friends are tested as an attempt to overthrow Tsunade begins and they must all fight—or fall. New secrets about Pain are revealed, but they only add to the mystery of his identity. As Pain commences with the final destruction of Konoha, Naruto and the Toads prepare to take him on in battle. Can Naruto save his beloved village?",
      release_date: "May 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2103.jpg"},

{
      title: "Naruto, Vol. 10: A Splendid Ninja",
      author: "Masashi Kishimoto",
      synopsis: "With only a few matches left to be fought in the preliminaries to the third portion of the Chūnin Selection Exams, the highly anticipated bout between mysterious Sand ninja Gaara and intense, earnest Konoha ninja Rock Lee begins. Will Gaara's bloodlust and his strange powers of sand manipulation be too much for Lee to handle? Or could Lee prove that dedication and an amazing work ethic are enough to make him a splendid ninja?",
      release_date: "December 4th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2104.jpg"},

{
      title: "Naruto, Vol. 31: Final Battle",
      author: "Masashi Kishimoto",
      synopsis: "Naruto and his fellow ninja engage in deadly conflict with the enemy. If any of them makes the wrong decision, it could be one of Naruto's closest friends who pays the ultimate price.",
      release_date: "December 26th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2105.jpg"},

{
      title: "Naruto, Vol. 29: Kakashi vs. Itachi",
      author: "Masashi Kishimoto",
      synopsis: "Guy vs. Kisame!! Kakashi vs. Itachi!! We finally learn what may be happening to Gaara and what might also be in store for Naruto, when they both come face to face with a devious common enemy: the Akatsuki!",
      release_date: "August 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2106.jpg"},

{
      title: "Naruto, Vol. 05: Exam Hell",
      author: "Masashi Kishimoto",
      synopsis: "The three ninja-in-training have signed up for the Chūnin Selection Exams, which they must pass if they ever want to advance to the rank of full-fledged shinobi. They learn too late how grueling the exams are—and how dangerous. If the tests of skill, stealth, and battle prowess don't kill them, their fellow junior ninja will. And, since the three pass or fail as a group, they're only as strong as their weakest link: Naruto!",
      release_date: "December 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2107.jpg"},

{
      title: "Naruto, Vol. 19: Successor",
      author: "Masashi Kishimoto",
      synopsis: "It's all-out shinobi war as Naruto, Tsunade, Jiraiya and Shizune take on Orochimaru and Kabuto in battle—with the final fate of Tsunade hanging on the outcome! Will her darkest fears finally become reality?!",
      release_date: "November 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2108.jpg"},

{
      title: "Naruto, Vol. 12: The Great Flight",
      author: "Masashi Kishimoto",
      synopsis: "At last, the finals of the third phase of the Chūnin Selection Exams begin! In the first battle, Naruto faces off against Neji, widely considered to be the most talented young ninja in Konohagakure. With his newfound ability to access the power of the Nine-Tailed Fox, can Naruto beat his genius opponent? Or will Neji overcome his family's troubled history to triumph in the match?",
      release_date: "May 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2109.jpg"},

{
      title: "Naruto, Vol. 30: Puppet Masters",
      author: "Masashi Kishimoto",
      synopsis: "Sakura takes her place at the front of the fight to save Naruto. With Granny Chiyo at her side, she must battle Sasori, who can create golems from the undead. But Granny Chiyo is a puppet master too—only it could be Sakura's strings she's pulling!",
      release_date: "November 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2110.jpg"},

{
      title: "Naruto, Vol. 49: The Gokage Summit Commences",
      author: "Masashi Kishimoto",
      synopsis: "As the five leaders of the strongest villages in the ninja world meet to discuss the fate of their universe—and how to deal with the ever-looming threat of the rogue organization, the Akatsuki—plans are made that will affect Naruto deeply. The new Hokage, leader of Naruto's village, is not afraid to make the final end move against Naruto's old pal, Sasuke!",
      release_date: "January 4th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2111.jpg"},

{
      title: "Naruto, Vol. 27: Departure",
      author: "Masashi Kishimoto",
      synopsis: "Sakura, Sasuke and Naruto part ways to begin training with separate sensei. Plus, take a trip back in time to finally learn the true story of Kakashi's greatest secret!",
      release_date: "April 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2112.jpg"},

{
      title: "Naruto, Vol. 28: Homecoming",
      author: "Masashi Kishimoto",
      synopsis: "It's been two years since Naruto left to train with Jiraiya. Now he reunites with his old friends to find out he's still not the most accomplished of his former teammates. But when one of them is kidnapped, it's up to Naruto to prove he's got the stuff to save them!",
      release_date: "June 3rd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2113.jpg"},

{
      title: "Naruto, Vol. 42: The Secret of the Mangekyo",
      author: "Masashi Kishimoto",
      synopsis: "To truly end the Akatsuki's reign of pain, Naruto's teacher Jiraiya must delve deep into the past to uncover the secret of Pain's origin. At the same time, Sasuke moves toward the final battle of the Uchiha brothers when he closes in on the elusive Itachi!",
      release_date: "May 2nd 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2114.jpg"},

{
      title: "Naruto, Vol. 45: Battlefield, Konoha",
      author: "Masashi Kishimoto",
      synopsis: "Sasuke and Naruto find that their powers are ever-increasing. Sasuke can now use the Mangekyo Sharingan in multiple ways, and Naruto may have become even more powerful than his fallen sensei, Jiraiya! But is anyone powerful enough to stop the ultimate attack as the Pains of the Akatsuki launch their deadly strike against Naruto's home village?!",
      release_date: "February 4th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2115.jpg"},

{
      title: "Naruto, Vol. 06: The Forest of Death",
      author: "Masashi Kishimoto",
      synopsis: "Through Naruto's pluck and a healthy dose of luck, Naruto, Sasuke and Sakura passed the written portion of their Chūnin Exam—but that was only the beginning. They're now in the thick of the exam's second portion, held in the aptly named Forest of Death, and instructor Mitarashi Anko has promised to cut the number of advancing teams by half!Each team is turned against the others, using stealth and cunning to purloin the scrolls that they need to pass the test, while trying to survive the many perils that lurk in the forest. And if that's not enough, there's a mysterious imposter among the students who has it in for Sasuke!",
      release_date: "March 2nd 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2116.jpg"},

{
      title: "Naruto, Vol. 03: Bridge of Courage",
      author: "Masashi Kishimoto",
      synopsis: "While they recover from their injuries, Kakashi puts Naruto, Sasuke, and Sakura on a strict training regimen to protect Tazuna's family against Zabuza's next attack. But Zabuza has a dangerous new apprentice in Haku. And as the bridge comes closer to completion, our heroes must be willing to kill—or die.",
      release_date: "August 4th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2117.jpg"},

{
      title: "Naruto, Vol. 44: Senjutsu Heir",
      author: "Masashi Kishimoto",
      synopsis: "Naruto must decipher the cryptic last words of his beloved mentor. What did Jiraiya find out about the leader of the Akatsuki that was so important he had to hide it in code? And can Naruto stand a fighting chance against those who managed to take down one of the Three Great Shinobi?",
      release_date: "November 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2118.jpg"},

{
      title: "Naruto, Vol. 23: Predicament",
      author: "Masashi Kishimoto",
      synopsis: "Orochimaru's nefarious plans for Sasuke are revealed, and Naruto vows to save his friend. But first he must battle the mysterious Kimimaro, who has deadly past ties to the Sound Ninja Four!",
      release_date: "August 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2119.jpg"},

{
      title: "Naruto, Vol. 21: Pursuit",
      author: "Masashi Kishimoto",
      synopsis: "Tsunade sends a team to hunt down the conflicted Sasuke, who's made a terrible choice of new teammates. Are Naruto, Neji and the others capable of beating the Sound Four? They have no choice but to find out!",
      release_date: "March 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2120.jpg"},

{
      title: "Naruto, Vol. 58:  Naruto vs. Itachi",
      author: "Masashi Kishimoto",
      synopsis: "Kabuto’s hold over his army of undead minions tightens as he senses that he’s losing power over the stronger members of his Immortal Corps, including Nagato Pain. Sasuke’s brother, Itachi, may have the best chance of breaking Kabuto’s hold. But he’s still not completely in control of his actions, which means Naruto may have to take him down once and for all.",
      release_date: "November 4th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2121.jpg"},

{
      title: "Naruto, Vol. 64: Ten Tails",
      author: "Masashi Kishimoto",
      synopsis: "With the masked man's identity revealed as Obito, Kakashi's resolve is severely shaken. It will be up to Naruto to inspire his old master to continue the fight. But when Ten Tails is finally awakened, will the entire ninja world be doomed?",
      release_date: "April 4th 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2122.jpg"},

{
      title: "Naruto, Vol. 40: The Ultimate Art",
      author: "Masashi Kishimoto",
      synopsis: "It's Deidara vs. Sasuke! Is even Deidara's Ultimate Art no match for the all-powerful new Sasuke? Plus, deep inside the Land of Rain lies a secret of the Akatsuki that sheds doubt on the mysterious organization's true intentions as well as their bizarre leader, Pain.",
      release_date: "November 2nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2123.jpg"},

{
      title: "Naruto, Vol. 20: Naruto vs. Sasuke",
      author: "Masashi Kishimoto",
      synopsis: "It's ninja vs. ninja and Sakura is caught in the middle! With the Sound Four looming close and Lee in the hospital, all three friends hurl toward an uncertain future and find that growing up sometimes means growing apart.",
      release_date: "December 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2124.jpg"},

{
      title: "Naruto, Vol. 60: Kurama",
      author: "Masashi Kishimoto",
      synopsis: "Now aligned with the tailed beasts and his fellow jinchūriki hosts more than ever, Naruto impresses the Allied Shinobi Forces with his newfound strength. But his comrades are not going to leave this final battle with the forces of Tobi up to Naruto alone. As they rush to assist their friend, Sasuke returns. And this time, he's intent on taking out Naruto once and for all.",
      release_date: "May 2nd 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2125.jpg"},

{
      title: "Naruto, Vol. 48: The Cheering Village",
      author: "Masashi Kishimoto",
      synopsis: "Finally face-to-face with his ultimate nemesis, Naruto finds out there's way more to the true Pain than he could have ever imagined. As the consequences of the tumultuous politics of the past come to light, an unexpected turn of events puts a new ninja in power in Konoha. And the first act by the new leader will change Naruto's world forever.",
      release_date: "November 4th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2126.jpg"},

{
      title: "Naruto, Vol. 11: Impassioned Efforts",
      author: "Masashi Kishimoto",
      synopsis: "Now preparing for the finals of the Chūnin Selection Exams, Naruto studies with naughty new mentor Jiraiya and struggles to harness the power of the Nine-Tailed Fox chakra locked within him. Meanwhile, other ninja villages are forming secret alliances against Konohagakure...",
      release_date: "March 4th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2127.jpg"},

      [genres[0], genres[4], genres[1], genres[10]]
      ],
      [
{
      title: "Claymore, Vol. 7: Fit for Battle",
      author: "Norihiro Yagi",
      synopsis: "Fearing that she's no match for the deadly Claymore named Ophelia, Clare spirits her companion Raki away to relative safety. But no matter how far they run they won't be able to escape Ophelia's heightened senses. And now that Ophelia knows that Clare has awakened, she will not rest until she has destroyed Clare.",
      release_date: "November 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2128.jpg"},

{
      title: "Claymore, Vol. 6: The Endless Gravestones",
      author: "Norihiro Yagi",
      synopsis: "Teresa, a powerful Claymore, saves a young girl from her bandit captors and leaves the child in the care of some villagers. But triumph quickly gives way to despair when the situation takes a tragic turn, and Teresa is forced to kill a human--an act that will condemn her to death at the hands of her own kind.",
      release_date: "April 30th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2129.jpg"},

{
      title: "Claymore, Vol. 11: Kindred of Paradise",
      author: "Norihiro Yagi",
      synopsis: "In the northern town of Pieta, Clare and a force of Claymores battle a troupe of Awakened Ones to prevent them from advancing south. Their orders are to hold off the evil horde at all costs, while the Organization prepares a secret weapon. Clare and her comrades realize that theirs is a suicide mission. As their friends fall one by one, the warriors band together to make their last stand.",
      release_date: "November 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2130.jpg"},

{
      title: "Claymore, Vol. 9: The Deep Abyss of Purgatory",
      author: "Norihiro Yagi",
      synopsis: "Clare and her fellow Claymores Galatea and Jean must battle the Awakened Beings that are holding them captive. In the process, they find their captors' true motive: by torturing the warriors, they want to force them to awaken, and join them in a gathering of Yoma. Will Clare and her comrades be able to defeat the Awakened Beings without becoming one themselves?",
      release_date: "November 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2131.jpg"},

{
      title: "Claymore, Vol. 15: Genesis of War",
      author: "Norihiro Yagi",
      synopsis: "Sexy sword-swinging ladies. R to L (Japanese Style). Galatea's plans to eliminate the Awakened former number 2, 'Bloody' Agatha, have failed, but the arrival of Clare and her comrades turns the tide of battle. In the aftermath, Miria decides to finally share her shocking discoveries about the true nature of the Yoma, of the Organization and of the Claymores themselves. In a world where monsters called Yoma prey on humans and live among them in disguise, humanity's only hope is a new breed of warrior known as Claymores. Half human, half monster, these silver-eyed slayers possess supernatural strength, but are condemned to fight their savage impulses or lose their humanity completely.",
      release_date: "December 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2132.jpg"},

{
      title: "Claymore, Vol. 19: Phantoms in the Heart",
      author: "Norihiro Yagi",
      synopsis: "Sexy, sword-swinging ladies in an epic medieval monster huntReads R to L (Japanese Style). Priscilla relentlessly pursues Clare's destruction, while Deneve and Helen remain just as determined to protect her. But when the combined form of Luciela and Rafaela attacks, Clare and her cohorts are pulled into the twisting mass. Meanwhile, in Ribona, Miria heads east to destroy the Organization. She encounters Rubel and his secret weapons: mysterious warrior twins who may be Alicia and Beth's successors, as well as the Organization's number 10—a deadly fighter who can read Miria's mind.",
      release_date: "December 3rd 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2133.jpg"},

{
      title: "Claymore, Vol. 3: Teresa of the Faint Smile",
      author: "Norihiro Yagi",
      synopsis: "A Claymore - a female warrior named for the sword she carries - travels from medieval village to village to destroy Yoma, monsters who disguise themselves as humans and who are almost impossible to kill. Claymores are half-humans, half-demons who willingly transformed themselves by mixing their blood with monster's blood. Claire, nicknamed silver-eyed killer, is such a powerful Claymore, she can slay a Yoma using only one hand. But she must constantly struggle to keep from becoming a monster herself.",
      release_date: "November 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2134.jpg"},

{
      title: "Claymore, Vol. 10: The Battle of the North",
      author: "Norihiro Yagi",
      synopsis: "Clare and a group of Claymores are sent to the north to battle a group of Yoma that have banded together under the command of Isley, a powerful Awakened Being. When the warriors arrive, they find their new enemies to be unusually dangerous. They are incredibly strong, well organized, and seem to have a plan to dominate the entire region. Will the Claymores be able to stop this monstrous army?",
      release_date: "May 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2135.jpg"},

{
      title: "Claymore, Vol. 5: The Slashers",
      author: "Norihiro Yagi",
      synopsis: "Teresa, a powerful Claymore, saves a young girl from her bandit captors and leaves the child in the care of some villagers. But triumph quickly gives way to despair when the situation takes a tragic turn, and Teresa is forced to kill a human--an act that will condemn her to death at the hands of her own kind.",
      release_date: "January 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2136.jpg"},

{
      title: "Claymore, Vol. 22: Claws and Fangs of the Abyss",
      author: "Norihiro Yagi",
      synopsis: "Sexy, sword-swinging ladies in an epic medieval monster huntIn a world where monsters called Yoma prey on humans and live among them in disguise, humanity's only hope is a new breed of warrior known as Claymores. Half human, half monster, these silver-eyed slayers possess supernatural strength but are condemned to fight their savage impulses or lose their humanity completely. Rebel Claymores, the Organization that created them, and a host of reanimated top-level warriors clash with savage intensity. The Claymores’ demonic impulses are provoked, threatening to destroy their human consciousnesses. Meanwhile, Hysteria, animated by blind vengeance, grows stronger with each attack against her. Is it possible that the rebels will be defeated by their long-dead comrades? Reads R to L (Japanese Style) for teen plus audiences.",
      release_date: "June 4th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2137.jpg"},

{
      title: "Claymore, Vol. 2: Darkness in Paradise",
      author: "Norihiro Yagi",
      synopsis: "A Claymore - a female warrior named for the sword she carries - travels from medieval village to village to destroy Yoma, monsters who disguise themselves as humans and who are almost impossible to kill. Claymores are half-humans, half-demons who willingly transformed themselves by mixing their blood with monster's blood. Claire, nicknamed silver-eyed killer, is such a powerful Claymore, she can slay a Yoma using only one hand. But she must constantly struggle to keep from becoming a monster herself.",
      release_date: "May 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2138.jpg"},

{
      title: "Claymore, Vol. 8: The Witch's Maw",
      author: "Norihiro Yagi",
      synopsis: "Clare's battle with the awakened Ophelia ends with a surprising request from Ophelia. Ominous signs begin to emerge as Clare searches for Raki. Not only are the usually solitary Yoma joining forces, they appear to be preparing for battle. More mysteriously, Clare is taken captive by a male Awakened Being and held in a dungeon with other Claymores. Who are her captors, and what do they want?",
      release_date: "April 28th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2139.jpg"},

{
      title: "Claymore, Vol. 4: Marked for the Death",
      author: "Norihiro Yagi",
      synopsis: "Teresa, a powerful Claymore, saves a young girl from her bandit captors and leaves the child in the care of some villagers. But triumph quickly gives way to despair when the situation takes a tragic turn, and Teresa is forced to kill a human--an act that will condemn her to death at the hands of her own kind.",
      release_date: "May 1st 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2140.jpg"},

{
      title: "Claymore, Vol. 18: The Ashes of Lautrec",
      author: "Norihiro Yagi",
      synopsis: "Sexy, sword-swinging ladies in an epic medieval monster huntReads R to L (Japanese Style), for audiences T+  The Ashes of Lautrec After finding herself mysteriously drawn to the lair of Riful of the West, Clare made contact with the fused form of Rafaela and Luciela, which Awakened and transformed into the terrible being known as the Destroyer. Now, the entire land of Lautrec is subject to its dreadful, relentless assault. It seems that nothing, and no one, can halt the devastation. But there may be one force that is greater still…",
      release_date: "July 2nd 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2141.jpg"},

{
      title: "Claymore, Vol. 21: Corpse of the Witch",
      author: "Norihiro Yagi",
      synopsis: "Reads R to L (Japanese Style). In a world where monsters called Yoma prey on humans and live among them in disguise, humanity's only hope is a new breed of warrior known as Claymores. Half human, half monster, these silver-eyed slayers possess supernatural strength but are condemned to fight their savage impulses or lose their humanity completely.A battle begins between rebel Claymore warriors and the Organization that created them. When the team of seven notorious rebel fighters is joined by an army of newly minted soldiers loyal to rebel leader Miria, it seems their victory is a foregone conclusion. Then the Organization releases its newest secret weapon: reanimated high-level warriors from past generations of Claymores.",
      release_date: "December 2nd 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2142.jpg"},

{
      title: "Claymore, Vol. 12: The Souls of the Fallen",
      author: "Norihiro Yagi",
      synopsis: "In a world where monsters called Yoma prey on humans and live among them in disguise, humanity’s only hope is a new breed of warrior known as Claymores.",
      release_date: "April 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2143.jpg"},

{
      title: "Claymore, Vol. 1: Silver-eyed Slayer",
      author: "Norihiro Yagi",
      synopsis: "A Claymore - a female warrior named for the sword she carries - travels from medieval village to village to destroy Yoma, monsters who disguise themselves as humans and who are almost impossible to kill. Claymores are half-humans, half-demons who willingly transformed themselves by mixing their blood with monster's blood. Claire, nicknamed silver-eyed killer, is such a powerful Claymore, she can slay a Yoma using only one hand. But she must constantly struggle to keep from becoming a monster herself.",
      release_date: "January 5th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2144.jpg"},

      [genres[0], genres[4], genres[9]]
      ],
      [
{
      title: "Mushishi, Vol. 7",
      author: "Yuki Urushibara",
      synopsis: "Ginko is sent on a fact-finding expedition to discover what the head of an ancient clan of mushishi is doing in an isolated, abandoned Japanese village. But the answer may be more than Ginko can handle: the Ragged Road he is investigating leads to mushi that can leave a man worse than dead!Includes special extras after the story!",
      release_date: "February 23rd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2145.jpg"},

{
      title: "Mushishi, Vol. 4",
      author: "Yuki Urushibara",
      synopsis: "Nebulous and unseen, existing in a state somewhere between life and death, mushi bring nothing but pain, suffering, and destruction to humans. A small community of wandering healers and naturalists known as mushishi protect humans from the ravages of these malevolent entities. Ginko, with his green eye and white hair, is a mushishi. But when Ginko tries to help a boy who seems to have found spring in the middle of winter, he and the boy both become victims of the life-sucking creatures.",
      release_date: "October 22nd 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2146.jpg"},

{
      title: "Mushishi, Vol. 8/9/10",
      author: "Yuki Urushibara",
      synopsis: "Ginko is a master of the ephemeral life form known as Mushi. Their influence can be as visible as a mountain never giving up its winter to allow for spring, or as subtle as a prank played in a child's game. To some they are a curse; to others they offer unimagined possibility. Read the final three volumes of Ginko's journeys in this one remarkable edition!",
      release_date: "2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2147.jpg"},

{
      title: "Mushishi, Vol. 2",
      author: "Yuki Urushibara",
      synopsis: "DARK MOUNTAINMushi, a terrifying primitive life-form, take countless shapes–most of them deadly to the human race. Enter Ginko, a mushi expert, known as a mushishi. Though his laconic smile and soft-spoken manner don’t seem imposing, he represents the human world’s greatest defense. When a fellow mushishi disappears, Ginko must search for him on a mushi-infested mountain, putting his own life on the line!",
      release_date: "February 20th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2148.jpg"},

{
      title: "Mushishi, Vol. 1",
      author: "Yuki Urushibara",
      synopsis: "THEY HAVE EXISTED SINCE THE DAWN OF TIME.Some live in the deep darkness behind your eyelids. Some eat silence. Some thoughtlessly kill. Some simply drive men mad. Shortly after life emerged from the primordial ooze, these deadly creatures, mushi, came into terrifying being. And they still exist and wreak havoc in the world today. Ginko, a young man with a sardonic smile, has the knowledge and skill to save those plagued by mushi . . . perhaps.",
      release_date: "November 22nd 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2149.jpg"},

{
      title: "Mushishi, Vol. 5",
      author: "Yuki Urushibara",
      synopsis: "Imagine being blind–but that nebulous creatures called mushi allow you to see farther and better than any human, even into another person’s future. Ginko, whose lifelong task is to understand the many kinds of mushi, encounters such a woman and becomes entangled in the shocking future she sees for him.",
      release_date: "October 22nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2150.jpg"},

{
      title: "Mushishi, Vol. 3",
      author: "Yuki Urushibara",
      synopsis: "They live on the shadowy border between the possible and the impossible–ancient life-forms known as mushi. Rare is the individual who can see them, but those with that special ability, the mushishi, can counter the creatures’ deadly effects on humans. After a young boy is orphaned in the forest, he is saved by a reclusive female mushishi. But the lake near the mushishi’s home holds a deadly secret, and the boy must find out what it is before his only friend is lost forever.",
      release_date: "December 18th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2151.jpg"},

{
      title: "Mushishi, Vol. 6",
      author: "Yuki Urushibara",
      synopsis: "A father disappears and his son, a hunter, inherits his father’s power to lure animals to their deaths, quietly and entranced. But this ability poisons the mind and the body. Can mushi master Ginko cure the son before he shares his father’s fate, or will the young man turn his deadly powers on his would-be savior?",
      release_date: "June 23rd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2152.jpg"},

      [genres[4], genres[18]]
      ],
      [
{
      title: "Ouran High School Host Club, Vol. 9",
      author: "Bisco Hatori",
      synopsis: "In middle school, Tamaki Suoh must entice the coldhearted twins, Hikaru and Kaoru Hitachiin, to join his newly created Host Club. But in order to get them to accept his proposal, he must first best them at their own game.",
      release_date: "September 5th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2153.jpg"},

{
      title: "Ouran High School Host Club, Vol. 4",
      author: "Bisco Hatori",
      synopsis: "One day, Haruhi, a scholarship student at exclusive Ouran High School, breaks an $80,000 vase that belongs to the 'Host Club', a mysterious campus group consisting of six super-rich (and gorgeous) guys. To pay back the damages, she is forced to work for the club, and it's there that she discovers just how wealthy the boys are and how different they are from everybody else.",
      release_date: "December 31st 1999",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2154.jpg"},

{
      title: "Ouran High School Host Club, Vol. 5",
      author: "Bisco Hatori",
      synopsis: "In this sharp-witted romantic comedy about the clash of the classes (of all kinds), a poor girl at a rich kids' school ends up working at the school's toniest club-and gets mistaken for a boy!",
      release_date: "January 5th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2155.jpg"},

{
      title: "Ouran High School Host Club, Vol. 2",
      author: "Bisco Hatori",
      synopsis: "The school-wide physical exam has thrown the members of the elegant Host Club for a loop. How can the doctor not discover that Haruhi is a girl? And once the female customers learn the turn, Haruhi can kiss her job goodbye. Illustrations. Rated for teens.",
      release_date: "November 5th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2156.jpg"},

{
      title: "Ouran High School Host Club, Vol. 3",
      author: "Bisco Hatori",
      synopsis: "In this sharp-witted romantic comedy about the clash of the classes (of all kinds), a poor girl at a rich kids' school ends up working at the school's toniest club, and gets mistaken for a boy! ",
      release_date: "March 5th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2157.jpg"},

{
      title: "Ouran High School Host Club, Vol. 6",
      author: "Bisco Hatori",
      synopsis: "In this sharp-witted romantic comedy about the clash of the classes (of all kinds), a poor girl at a rich kids' school ends up working at the school's toniest club-and gets mistaken for a boy!",
      release_date: "July 5th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2158.jpg"},

{
      title: "Ouran High School Host Club, Vol. 11",
      author: "Bisco Hatori",
      synopsis: "In this screwball romantic comedy, Haruhi, a poor girl at a rich kids' school, is forced to repay an $80,000 debt by working for the school's swankiest, all-male club--as a boy! There, she discovers just how wealthy the six members are and how different the rich are from everybody else... ",
      release_date: "November 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2159.jpg"},

{
      title: "Ouran High School Host Club, Vol. 10",
      author: "Bisco Hatori",
      synopsis: "Ever since the day he helped her up after a nasty tumble, Black Magic Club member Reiko Kanazuki has been obsessed with Hunny. She is devoting all her knowledge of the dark arts to curse him and steal his soul. Will the sweetest member of the Host Club fall victim to her spells?",
      release_date: "August 14th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2160.jpg"},

{
      title: "Ouran High School Host Club, Vol. 7",
      author: "Bisco Hatori",
      synopsis: "Hunny's little brother, Chika, pays a visit to the Host Club--and immediately starts attacking Hunny, using all his martial-arts prowess against his older brother! Chika seems to be the absolute opposite of his sweets-loving, Bun-Bun-toting sibling, but why is he so angry with Hunny? The Host Club is determined to find out the cause...",
      release_date: "December 5th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2161.jpg"},

{
      title: "Ouran High School Host Club, Vol. 14",
      author: "Bisco Hatori",
      synopsis: " ",
      release_date: "May 1st 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2162.jpg"},

{
      title: "Ouran High School Host Club, Vol. 12",
      author: "Bisco Hatori",
      synopsis: "In this screwball romantic comedy, Haruhi, a poor girl at a rich kids' school, is forced to repay an $80,000 debt by working for the school's swankiest, all-male club--as a boy! There she discovers just how wealthy the six members are and how different the rich are from everybody else... ",
      release_date: "July 22nd 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2163.jpg"},

{
      title: "Ouran High School Host Club, Vol. 15",
      author: "Bisco Hatori",
      synopsis: "Reads R to L (Japanese Style), for T audiences. The members of the Host Club plan an event to help Tamaki get over his separation anxiety from the Host Club, and even Haruhi gets in on the action. Will the bonds of friendship between Tamaki and Haruhi become bonds of love?",
      release_date: "2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2164.jpg"},

{
      title: "Ouran High School Host Club, Vol. 1",
      author: "Bisco Hatori",
      synopsis: "One day, Haruhi, a scholarship student at exclusive Ouran High School, breaks an $80,000 vase that belongs to the 'Host Club', a mysterious campus group consisting of six super-rich (and gorgeous) guys. To pay back the damages, she is forced to work for the club, and it's there that she discovers just how wealthy the boys are and how different they are from everybody else.",
      release_date: "August 5th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2165.jpg"},

{
      title: "Ouran High School Host Club, Vol. 17",
      author: "Bisco Hatori",
      synopsis: "Tamaki’s father and grandmother, the heads of the powerful Suoh Corp., are behind the Host Club’s suspension and the plan for Haruhi to be shipped off abroad. Now the Host Club members must pull out all the stops to save their beloved leader from his family’s infighting.",
      release_date: "September 3rd 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2166.jpg"},

{
      title: "Ouran High School Host Club Box Set",
      author: "Bisco Hatori",
      synopsis: "The complete best-selling series, now in a value-priced box setReads R to L (Japanese style) for teen audiences. In this screwball romantic comedy, Haruhi, a poor girl at a rich kids school, is forced to repay an $80,000 debt by working for the school's swankiest, all-male club, as a boy! There she discovers just how wealthy the six members are and how different the rich are from everybody else.",
      release_date: "August 16th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2167.jpg"},

{
      title: "Ouran High School Host Club, Vol. 8",
      author: "Bisco Hatori",
      synopsis: "The first-years in Class 1-A are taking part in a test of courage, where the loser will receive the dubious honor of being dubbed Best of Cowards. Kazukiyo Souga, the club president and fraidy-cat at heart, is happy to be on a team with the levelheaded Haruhi, but will he be able to stomach the antics of his other teammates - the twins Hikaru and Kaori Hitachiin?",
      release_date: "April 5th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2168.jpg"},

{
      title: "Ouran High School Host Club, Vol. 16",
      author: "Bisco Hatori",
      synopsis: "The two senior members of the Host Club are graduating and will lead separate lives at university. Everyone is mourning the loss of the Hunny-Mori Combo, but the longtime duo already seems to have ended their close friendship. Now Mori has challenged Hunny to a duel--but why?",
      release_date: "2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2169.jpg"},

{
      title: "Ouran High School Host Club, Vol. 13",
      author: "Bisco Hatori",
      synopsis: "Mei, wanting Haruhi to face up to her feelings, leaves out a magazine that has a checklist for determining whether a girl is in love. As Haruhi reads through the checklist, she realizes that one host may have captured her heart without her even knowing...",
      release_date: "August 20th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2170.jpg"},

      [genres[14], genres[13], genres[22], genres[15]]
      ],
      [
{
      title: "Battle Angel Alita, Volume 04: Angel of Victory",
      author: "Yukito Kishiro",
      synopsis: "Alita must choose a challenge team to defeat Jashugan, the proud, invincible Motorball champion. Who will give their all-their very life-for the lovely Battle Angel? In the intense heat of battle during her final one-on-one showdown with Jashugan, Alita slips into a trance that provides an incredible revelation about her mysterious past.",
      release_date: "May 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2171.jpg"},

{
      title: "Battle Angel Alita, Volume 01: Rusty Angel",
      author: "Yukito Kishiro",
      synopsis: "Yukito Kishiro blurs the lines between human and machine in the sci-fi/action adventure Battle Angel Alita.Daisuke Ido, a talented cybernetic doctor, finds the head of a cyborg in a junk heap. When he rebuilds her body, Alita's only clue to her past surfaces-her deadly fighting instincts! And now she is determine to find out the truth about who she once was...",
      release_date: "September 24th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2172.jpg"},

{
      title: "Battle Angel Alita, Volume 07: Angel Of Chaos",
      author: "Yukito Kishiro",
      synopsis: "Alita meets Kaos, the son of mad scientist Desty Nova, who uses his psychometric powers to repair Alita's cyborg body after she falls into a sinkhole. A refurbished Alita finally goes head to head against the forces of Barjack and is ready to kill their leader, Den, when she's unexpectedly betrayed. Then Alita discovers the secret relationship between Den and Kaos...",
      release_date: "1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2173.jpg"},

{
      title: "Battle Angel Alita, Volume 03: Killing Angel",
      author: "Yukito Kishiro",
      synopsis: "Her spirit crushed over the loss of Hugo, Alita runs away from Doc Ido and the life she's built in the Scrapyard to become a challenger in motorball, a combat-like game that pits cyborg competitors against each other. As they race through the obstacle course, fighting for the ball, Alita learns her foes will do anything to win, and that losers often don't live to talk about their defeat.",
      release_date: "1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2174.jpg"},

{
      title: "Battle Angel Alita, Volume 09: Angel's Ascension",
      author: "Yukito Kishiro",
      synopsis: "The final volume of this epic sci-fi action series finds the beautiful and deadly cyborg Alita locked in a nightmarish virtual-reality battle with her nemesis, Desty Nova -- a struggle that may spell the end of the world.",
      release_date: "1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2175.jpg"},

{
      title: "Battle Angel Alita, Volume 08: Fallen Angel",
      author: "Yukito Kishiro",
      synopsis: "'First published in Japan in 1991 by Shueisha Inc., Tokyo'--T.p. verso.",
      release_date: "September 1st 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2176.jpg"},

{
      title: "Battle Angel Alita, Volume 05: Angel Of Redemption",
      author: "Yukito Kishiro",
      synopsis: "'First published in Japan in 1991 by Shueisha Inc., Tokyo'--T.p. verso.",
      release_date: "1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2177.jpg"},

{
      title: "Battle Angel Alita, Volume 06: Angel Of Death",
      author: "Yukito Kishiro",
      synopsis: "Alita's death sentence is commuted in exchange for her service as a member of the 'Tuned,' an elite force of the utopian city of Tiphares. Her first assignment is to protect a nuclear-powered train from the infamous bandit known as Barjack.",
      release_date: "June 1st 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2178.jpg"},

{
      title: "Battle Angel Alita, Volume 02: Tears of an Angel",
      author: "Yukito Kishiro",
      synopsis: "Alita's mastery of the lethal Panzer Kunst technique may not help her in volume 2 of this popular series. Her worst enemy may be herself.",
      release_date: "February 24th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2179.jpg"},

      [genres[0], genres[5]]
      ],
      [
{
      title: "Nana, Vol. 4",
      author: "Ai Yazawa",
      synopsis: "This is the story of two 20-year old women who share the same name. Even though they come from completely different backgrounds, they somehow meet and become best friends. The world of NANA is a world exploding with sex, music, fashion, gossip, and all-night parties.",
      release_date: "December 10th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2180.jpg"},

{
      title: "Nana, Vol. 7",
      author: "Ai Yazawa",
      synopsis: "Nana K. was happy to be Blast's biggest cheerleader, but now that the band is taking off, she's discovering that there are hordes of fans eager to take her place. At the same time, her involvement with Trapnest hottie Takumi is turning into a romantic entanglement she hadn't expected. When a chance for another kind of happiness presents itself, will Nana K. be strong enough to face the difficult choices that result?",
      release_date: "October 15th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2181.jpg"},

{
      title: "Nana, Vol. 8",
      author: "Ai Yazawa",
      synopsis: "Hachi's happiness with Nobu is slipping through her fingers as an unexpected complication with Takumi threatens to upend her entire life. And unlike her past romantic woes, the choice she makes now will change the lives of everyone around her.",
      release_date: "May 15th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2182.jpg"},

{
      title: "Nana, Vol. 1",
      author: "Ai Yazawa",
      synopsis: "Nana Komatsu is a young woman who's endured an unending string of boyfriend problems. Moving to Tokyo, she's hoping to take control of her life and put all those messy misadventures behind her. She's looking for love and she's hoping to find it in the big city. Nana Osaki, on the other hand, is cool, confident and focused. She swaggers into town and proceeds to kick down the doors to Tokyo's underground punk scene. She's got a dream and won't give up until she becomes Japan's No. 1 rock'n'roll superstar. This is the story of two 20-year-old women who share the same name. Even though they come from completely different backgrounds, they somehow meet and become best friends. The world of Nana is a world exploding with sex, music, fashion, gossip and all-night parties.",
      release_date: "May 15th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2183.jpg"},

{
      title: "Nana, Vol. 10",
      author: "Ai Yazawa",
      synopsis: "Being an engaged woman isn't as wonderful as Hachi thought it would be. She has a trendy new apartment, but she's isolated from all her friends and Takumi is hardly ever home. When scandal hits Blast hard, Trapnest (and her fiancé) flee to Europe and Hachi is left to watch Blast suffer in the scandal rags and tabloid shows.",
      release_date: "March 15th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2184.jpg"},

{
      title: "Nana, Vol. 11",
      author: "Ai Yazawa",
      synopsis: "Nana 11",
      release_date: "August 11th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2185.jpg"},

{
      title: "Nana, Vol. 3",
      author: "Ai Yazawa",
      synopsis: "This is the story of two 20-year old women who share the same name. Even though they come from completely different backgrounds, they somehow meet and become best friends. The world of NANA is a world exploding with sex, music, fashion, gossip, and all-night parties.",
      release_date: "May 15th 2001",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2186.jpg"},

{
      title: "Nana, Vol. 13",
      author: "Ai Yazawa",
      synopsis: "This is the story of two 20-year-old women who share the same name. Even though they come from completely different backgrounds, they somehow meet and become best friends. The world of Nana is a world exploding with sex, music, fashion, gossip and all-night parties.",
      release_date: "August 12th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2187.jpg"},

{
      title: "Nana, Vol. 20",
      author: "Ai Yazawa",
      synopsis: "The all-time best-selling shojo title in Japan R to L (Japanese Style). Ren's drug use is spiraling out of control and he doesn't want to drag Trapnest down with him. Neither Takumi nor Reira are willing to let Ren quit the band, and both do their best to give him the time he needs to get it together. But Ren isn't sure this is something he can handle on his own. Will he turn to Nana for help, or will their strained relationship make him try to face his demons alone? Nana 'Hachi' Komatsu hopes that moving to Tokyo will help her make a clean start and leave her capricious love life behind her. Nana Osaki, who arrives in the city at the same time, has plans to score big in the world of rock'n'roll. Although these two young women come from different backgrounds, they quickly become best friends in a whirlwind world of sex, music, fashion, gossip and all-night parties!",
      release_date: "September 12th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2188.jpg"},

{
      title: "Nana, Vol. 21",
      author: "Ai Yazawa",
      synopsis: "Reads R to L (Japanese Style). The all-time best-selling shojo title in Japan ",
      release_date: "March 13th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2189.jpg"},

{
      title: "Nana, Vol. 14",
      author: "Ai Yazawa",
      synopsis: "This is the story of two 20-year-old women who share the same name. Even though they come from completely different backgrounds, they somehow meet and become best friends. The world of Nana is a world exploding with sex, music, fashion, gossip and all-night parties.",
      release_date: "December 15th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2190.jpg"},

{
      title: "Nana, Vol. 5",
      author: "Ai Yazawa",
      synopsis: "Nana K. is going home--for an awesome TrapNest concert! She drags Nana O. along, convinced that somehow Ren will sense his ex-flame in the audience. But life is never that easy, and Nana O. isn't sure if she even wants Ren back. As for Nana K., is she prepared for TrapNest to come down off the stage and into her life, or will her fan-girl attitude land her in a heap of trouble?",
      release_date: "May 15th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2191.jpg"},

{
      title: "Nana, Vol. 9",
      author: "Ai Yazawa",
      synopsis: "Takumi and Hachi are getting married, but it's far from a joyous announcement. Nobu and Nana are devastated, and even Takumi's bandmates take the news hard. With paparazzi skulking around for a new scandal to exploit and tensions between Trapnest and Blast on high alert, will Hachi ever get her happily ever after?",
      release_date: "November 14th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2192.jpg"},

{
      title: "Nana, Vol. 12",
      author: "Ai Yazawa",
      synopsis: "Hachi tells herself that she's got her eye on the future and her life with Takumi, but she just can't let go of the past and her friendship with Nana and the rest of Blast - especially Nobu. And the tangle gets thicker when Hachi's wedding has to be postponed in favor of Nana and Ren's nuptials. Can Hachi handle another delay in her happily ever after?",
      release_date: "March 15th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2193.jpg"},

{
      title: "Nana, Vol. 2",
      author: "Ai Yazawa",
      synopsis: "This is the story of two 20-year old women who share the same name. Even though they come from completely different backgrounds, they somehow meet and become best friends. The world of NANA is a world exploding with sex, music, fashion, gossip, and all-night parties.",
      release_date: "December 11th 2000",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2194.jpg"},

{
      title: "Nana, Vol. 6",
      author: "Ai Yazawa",
      synopsis: "Nana Osaki's band Blast is taking off in a big way--from sold-out club dates to a record label waving a contract at them. But the Trapnest menace still lurks, stealing away everything she cares for. Trapnest took her boyfriend, and even though Ren is back in her life, his band still comes first. And now her trusty sidekick Nana K. is being lured away by Trapnest bassist Takumi. But this time, Nana O. won't give up without a fight!",
      release_date: "September 13th 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2195.jpg"},

      [genres[7], genres[13], genres[16]]
      ],
      [
{
      title: "Soul Eater, Vol. 07",
      author: "Atsushi Ohkubo",
      synopsis: "Shinigami-sama summons the strongest weapons from around the world to contain the rogue kishin and the spread of his madness. As these powerful weapons strategize for what will be the most difficult battle of their lives, the students of DWMA try to get back to their normal lives as best they can. For Maka, adjusting to the dangerous times is nothing compared to Crona's struggle to adjust to life as a DWMA student!",
      release_date: "September 22nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2196.jpg"},

{
      title: "Soul Eater, Vol. 03",
      author: "Atsushi Ohkubo",
      synopsis: "Tsubaki and Black*Star set off on their most difficult mission yet: a battle with the Uncanny Sword Masamune, a soul on the brink of becoming a Kishin. But this fight holds personal significance for Tsubaki - their target is her older brother. Jealous of her inherited talents, Masamune is holding nothing back. Usually docile and complacent, Tsubaki must find the strength to overtake the Uncanny Sword before she too is sucked into the darkness.",
      release_date: "April 22nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2197.jpg"},

{
      title: "Soul Eater, Vol. 01",
      author: "Atsushi Ohkubo",
      synopsis: "Maka is a weapon meister, determined to turn her partner, a living scythe named Soul Eater, into a powerful death scythe - the ultimate weapon of Death himself! Charged with the task of collecting and devouring the tainted souls of ninety-nine humans and one witch, Maka and her fellow meisters strive to master their weapons as they face off against the bizarre and dangerous minions of the underworld. But the meisters' own personal quirks may prove a bigger obstacle than any sultry enchantress!",
      release_date: "June 22nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2198.jpg"},

{
      title: "Soul Eater, Vol. 04",
      author: "Atsushi Ohkubo",
      synopsis: "At Maka's request, she and Soul meet with Doctor Stein for an intensive tutoring session. Although Stein warns that they may never be able to resonate again if they fail to complete the training, Maka insists, desperate to become stronger so that Soul is never hurt again. But Soul's strange nightmares have made him reluctant to seek power, and his unwillingness to share his fears only frustrates his partner. With their soul wavelengths pulling apart, will Maka and Soul be able to come together when danger emerges on their next assignment?",
      release_date: "August 22nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2199.jpg"},

{
      title: "Soul Eater, Vol. 06",
      author: "Atsushi Ohkubo",
      synopsis: "Death the Kid and Black*Star race after Free and Eruka, ready to do whatever it takes to stop the Black Blood before it is used to revive the slumbering First Kishin. Meanwhile, Maka has allowed herself to slip into madness in an effort to reach Crona’s troubled soul. In addition to being horribly embarrassing, her actions carry a great risk. If Maka can’t find Crona fast, she too will be consumed by madness!",
      release_date: "January 1st 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2200.jpg"},

{
      title: "Soul Eater, Vol. 02",
      author: "Atsushi Ohkubo",
      synopsis: "The remedial assignment continues as Soul and Maka confront Dr. Franken Stein, the man behind Sid-sensei's unfortunate transformation and the strongest meister ever to graduate from Death Weapon Meister Academy. Even without a weapon, his massive soul dwarfs them all-even big shot Black*Star! Can Maka rally her strength to face Stein in battle, or will despair be her downfall?",
      release_date: "November 22nd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2201.jpg"},

{
      title: "Soul Eater, Vol. 05",
      author: "Atsushi Ohkubo",
      synopsis: "On the night of DWMA’s anniversary celebration, every meister and weapon in Death City has gathered at the school for an evening of music and dancing. Little do they know that the witch Medusa is about the crash Shinigami-sama’s party. Trapping the meisters inside, the witch makes her way to the chamber where the First Kishin is imprisoned. Will the few meisters who’ve managed to escape be enough to prevent Medusa from rousing the madness that slumbers far below in the Kishin’s domain?",
      release_date: "December 22nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2202.jpg"},

      [genres[0], genres[4], genres[1], genres[10], genres[18]]
      ],
      [
{
      title: "A Bride's Story, Vol. 2",
      author: "Kaoru Mori",
      synopsis: "Acclaimed creator Kaoru Mori's tale of life on the nineteenth-century Silk Road continues as the young bride, Amir Halgal, struggles to remain with her new groom despite the wishes of her family, who would see her wed another. Will Amir be able to preserve the bonds she has cultivated in her new home?",
      release_date: "June 15th 2010",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2203.jpg"},

{
      title: "A Bride's Story, Vol. 1",
      author: "Kaoru Mori",
      synopsis: "Acclaimed creator Kaoru Mori (Emma, Shirley) brings the nineteenth-century Silk Road to lavish life, chronicling the story of Amir Halgal, a young woman from a nomadic tribe betrothed to a twelve-year-old boy eight years her junior. Coping with cultural differences, blossoming feelings for her new husband, and expectations from both her adoptive and birth families, Amir strives to find her role as she settles into a new life and a new home in a society quick to define that role for her.",
      release_date: "October 15th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2204.jpg"},

{
      title: "A Bride's Story, Vol. 3",
      author: "Kaoru Mori",
      synopsis: "Acclaimed creator Kaoru Mori's tale of life on the nineteenth-century Silk Road continues, this time introducing a new would-be bride--Talas. A young widow, Talas opens her home to the researcher Mr. Smith, who has ventured to her town to continue his studies. However, when Talas's uncle begins to see Smith as an impediment to his plans to wed his son to Talas, the old man's schemes land the Englishman in prison! Far from friends and even farther from home, Smith's outlook seems grim...",
      release_date: "June 15th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2205.jpg"},

{
      title: "A Bride's Story, Vol. 4",
      author: "Kaoru Mori",
      synopsis: "Acclaimed creator Kaoru Mori’s tale of life on the nineteenth-century Silk Road turns westward, following Englishman Mr. Smith on his long journey to Ankara. Passing through a fishing village along the Aral Sea, Smith and his guide encounter a pair of spirited young girls named Laila and Leily--identical twins who are fishing not for sturgeon, but for husbands! Despite their efforts to find two wealthy, healthy, and handsome brothers to wed, Laila and Leily’s plans generally only land them in loads of trouble!",
      release_date: "May 12th 2012",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2206.jpg"},

{
      title: "A Bride's Story, Vol. 5",
      author: "Kaoru Mori",
      synopsis: "Acclaimed creator Kaoru Mori's tale of life on the nineteenth-century Silk Road takes on an air of celebration as, at long last, Laila and Leily's wedding day arrives! But the marriage ceremony may be even more taxing for the girls than their search for a pair of grooms. Sitting still and silent as their guests celebrate and eat is a trial that will push the girls' patience to its limit, not to mention that of Sami and Sarm! As the twins finally make their vows and commit themselves to their husbands, the gravity of the moment finally sets in. Though they have dreamed of marriage for years, only now do they realize that everything in their lives is about to change...Crafted in painstaking detail, Ms. Mori's pen breathes life into the scenery and architecture of the period in this heart-warming, slice-of-life tale that is at once wholly exotic, yet familiar and accessible through the everyday lives of the characters she has created.",
      release_date: "January 15th 2013",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2207.jpg"},

      [genres[7], genres[13], genres[9], genres[16]]
      ],
      [
{
      title: "Pandora Hearts, Volume 7",
      author: "Jun Mochizuki",
      synopsis: "The past holds everyone in its thrall, and Oz, Alice, Raven, Break, and their acquaintances are no exception, especially as recollections of the tragedy of Sablier elude even those who were present. Indeed, with his own body playing host to Jack Vessalius, the hero of Sablier, the likelihood of Oz escaping the past seems nigh impossible. But given a renewed lease on life by Elliot Nightray — the legitimate heir to the Nightray dukedom, of all people — Oz is eager to keep moving forward by learning all that he can about the events that came to pass all those years ago. To this end, he and his friends seek an audience with another of the four great dukes — Duke Rufus Barma. But it is not a glimpse into a hundredyear-old disaster that is revealed to them in the Duke’s presence, but rather one into Break’s lamentable, shockingly unforgettable past…",
      release_date: "December 27th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2208.jpg"},

{
      title: "Pandora Hearts, Volume 8",
      author: "Jun Mochizuki",
      synopsis: "The snow-white maiden encountered once upon a time in the depths of the Abyss by the clown christened the Red-Eyed Specter…who was she really? As there are two sides to every story, could it be there are two sides to the existence known as Alice? Duke Barma may have provided a sordid outline, but Break colors the tale with vivid swathes of bloody crimson as he opens up about his past. Will these tragic truths long secreted away isolate Break further from his allies once he has revealed them?",
      release_date: "March 27th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2209.jpg"},

{
      title: "Pandora Hearts, Volume 6",
      author: "Jun Mochizuki",
      synopsis: "Though Oz’s sudden appearance in the midst of Pandora wreaks havoc, the initially chilly reception to the prison-breaker runs more than warm when Jack Vessalius, hero of the tragedy of Sablier and the man from Alice’s memories, manifests in Oz’s body. Sensing Oz’s resultant inner turmoil, Uncle Oscar drags Oz and company on a “mission” to Lutwidge Academy, where Oz’s little sister, Ada, is a student. But some carefree fun and a tearful reunion ten years in the making is not all for which Oz must prepare himself: crimson-cloaked foes are lying in wait to torture him for answers about the events of a hundred years ago…",
      release_date: "August 27th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2210.jpg"},

{
      title: "Pandora Hearts, Volume 3",
      author: "Jun Mochizuki",
      synopsis: "Heir to an aristocratic family, Oz Vessalius is a carefree teen. That is until his fifteenth birthday. His entire world changes at his coming of age ceremony when dark forces rise to punish Oz for the sins of a past life. Incarcerated in a prison known as the Abyss, Oz’s life and perhaps his sanity are saved by a black rabbit called Alice. As Oz plunges deeper down the proverbial rabbit hole, he must unravel the mysteries surrounding him before falling into the clutches of the shadowy cabal called Pandora!Contents:Retrace X: MaledictionRetrace XI: GrimRetrace XII: Where Am IRetrace XIII: A Lost Raven",
      release_date: "July 27th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2211.jpg"},

{
      title: "Pandora Hearts, Volume 4",
      author: "Jun Mochizuki",
      synopsis: "As Oz Vessalius and his valet, Gilbert, are reunited with their dear Uncle Oscar, they fail to notice an alienated Alice lost in thought stumbling right into the lurking Xerxes Break. Before Alice can take heed of Break’s warning of a trap set by the Cheshire Cat — a powerful, extraordinary chain — she and Break are spirited away to Cheshire’s lair, where both danger and fragments of Alice’s past reside. With Sharon’s help, Oz and Gil find a way to enter the sealed dimension of memories, but not only do their allies await them there, so too does the man from Alice’s earlier memory! Does he hold the key to the truth about Oz’s “sin”?Contents:Retrace XIV: Lop EarRetrace XV: Welcome to LabyrinthRetrace XVI: Keeper of the SecretRetrace XVII: Odds and EndsRetrace XVIII: Hollow Eye Socket",
      release_date: "December 27th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2212.jpg"},

{
      title: "Pandora Hearts, Volume 2",
      author: "Jun Mochizuki",
      synopsis: "Oz Vessalius may have survived his stint in the Abyss, but he is no closer to discovering the truth behind the “sin” for which he was condemned. On the advice of a mysterious man who appeared to him when Alice regained the first of her memories, Oz, along with Alice and Pandora’s Raven, embarks on a mission to investigate the site of his disastrous coming-of-age ceremony in search of answers. However, what begins as a simple investigation becomes the revelation of a harsher reality, which comes swooping down on Oz as the hands of the clock continue ticking away mercilessly…Contents:Retrace V: Clockwise DoomRetrace VI: Where am IRetrace VII: ReunionRetrace VIII: WhipsererRetrace IX: Question",
      release_date: "March 27th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2213.jpg"},

{
      title: "Pandora Hearts, Volume 5",
      author: "Jun Mochizuki",
      synopsis: "Oz memasuki salah satu ingatan Alice yang ternyata merupakan ingatan mengenai bencana yang terjadi 100 tahun lalu. Di sana, Oz mengetahui kenyataan mengerikan tentang Alice dan Vincent Nightray. Tapi, kenapa Vincent bisa berada dalam ingatan Alice? Berhasilkah Oz menyelamatkan Alice!?",
      release_date: "April 26th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2214.jpg"},

      [genres[7], genres[4], genres[10], genres[8]]
      ],
      [
{
      title: "Eyeshield 21, Vol. 12: Devil Bat Ghost",
      author: "Riichiro Inagaki",
      synopsis: "We're back at the Deimon-Amino game as Sena faces his nemesis Munakata in a memorable showdown. Then, as the season unfolds, new rivals emerge, along with a slew of worthy opposing teams, in a thrilling quadruple-header filled with pent-up emotion, gritty determination and a surprise finale. Get ready for more football action in volume 12 of EYESHIELD 21!",
      release_date: "March 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2215.jpg"},

{
      title: "Eyeshield 21, Vol. 3: And They're Called the Devil Bats",
      author: "Riichiro Inagaki",
      synopsis: "Sena faces a brick wall in the form of hulking über-athlete, Shin, of the White Knights. Rather than run away, Sena runs at full speed, straight at this exciting new challenge! But will Sena's frail body hold up to all the brain-jostling tackles that Shin dishes out?",
      release_date: "June 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2216.jpg"},

{
      title: "Eyeshield 21, Vol. 2: The False Hero",
      author: "Riichiro Inagaki",
      synopsis: "The second game of the season finds Sena and the Devilbats lined up against the champion White Knights. Big and ferocious, the Knights feature a squad of the toughest kids in high school. Will Sena wimp out of this one or will he break through the Knights' defense to see daylight? And what's the deal with the Devilbats' center? Will we ever find out why his head is shaped like a chestnut?",
      release_date: "March 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2217.jpg"},

{
      title: "Eyeshield 21, Vol. 23: Then Came the Showdown!",
      author: "Riichiro Inagaki",
      synopsis: "Bone-crushing action, slapstick comedy and a heartwarming coming-of-age story!",
      release_date: "February 2nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2218.jpg"},

{
      title: "Eyeshield 21, Vol. 20: Devils vs. Gods",
      author: "Riichiro Inagaki",
      synopsis: "The Devil Bats go up against a team far superior to any they've faced yet! Their opponents, the Nagas, have an ace quarterback and a star player whose athletic skill is so far above others he looks down on them as insects. The dismal score has devastated the Bats' morale and they've all but given up. Even the crowd who usually cheers them on has started to leave. Could this be the end of their surprise winning streak, not to mention their goal of going to the Christmas Bowl?",
      release_date: "January 1st 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2219.jpg"},

{
      title: "Eyeshield 21, Vol. 17: The Drive to Be the Best",
      author: "Riichiro Inagaki",
      synopsis: "With their former kicker back on the team, the Devil Bats have a real shot at closing the gap against the Seibu Wild Gunmen. But Seibu is still a major threat. Can the Devil Bats hold on for the victory?",
      release_date: "January 5th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2220.jpg"},

{
      title: "Eyeshield 21, Vol. 8: True Warriors Seek Out Strong Foes",
      author: "Riichiro Inagaki",
      synopsis: "The Devil Bats take on the NASA Aliens! After months of grueling training, the game against the Americans is finally about to begin. But the Aliens have a huge front line and a quarterback with an arm like a rocket launcher. Will the Devil Bats be able to clinch the win before the Aliens' score goes up into orbit?!",
      release_date: "April 30th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2221.jpg"},

{
      title: "Eyeshield 21, Vol. 13: Who is the Real Eyeshield 21?",
      author: "Riichiro Inagaki",
      synopsis: "Could there be more than one Eyeshield 21? A player on a rival team claims he met the real Eyeshield 21 while he was an exchange student in America. Back then, this mysterious other Eyeshield was on the Notre Dame feeder school football team. But now he's in Japan, and he's going to play during the fall season!",
      release_date: "April 2nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2222.jpg"},

{
      title: "Eyeshield 21, Vol. 22: Time-Out 0",
      author: "Riichiro Inagaki",
      synopsis: "Bone-crushing action, slapstick comedy and a heartwarming coming-of-age story!",
      release_date: "December 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2223.jpg"},

{
      title: "Eyeshield 21, Vol. 27: Seijuro Shin vs. Sena Kobayakawa",
      author: "Riichiro Inagaki",
      synopsis: "R to L (Japanese Style). With a mere two and a half minutes on the clock, the Deimon Devil Bats desperately try to erase the Ojo White Knights' five-point lead. The ball is in Deimon's hands, but everyone is past the threshold of exhaustion...and they're still 40 yards away from the goal line. Sena's banking on some of his slickest moves to help him outmaneuver Ojo's ace Shin and carry his team to victory...but Shin has never backed down to another competitor before, and doesn't plan on starting anytime soon.",
      release_date: "November 2nd 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2224.jpg"},

{
      title: "Eyeshield 21, Vol. 15: The Toughest Warriors in Tokyo",
      author: "Riichiro Inagaki",
      synopsis: "The Devil Bats' game against the Poseidons comes to its nail-biting conclusion, a foot from the Poseidons' goal line and with only two seconds left in the game. Later, a new player shows up on the scene--Sena's childhood friend Riku, a Seibu Wild Gunman who's looking to become Sena's greatest rival.",
      release_date: "September 2nd 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2225.jpg"},

{
      title: "Eyeshield 21, Vol. 11: Open Season",
      author: "Riichiro Inagaki",
      synopsis: "With summer coming to an end, the Devil Bats are back at home...and the start of the fall season is staring them in the face! Who will be in the fall lineup? And when Sena gets lost on his way to the first game of the season, can the team survive without the speed and star power of Eyeshield 21?",
      release_date: "December 3rd 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2226.jpg"},

{
      title: "Eyeshield 21, Vol. 29: The Second Quarterback",
      author: "Riichiro Inagaki",
      synopsis: "Bone-crushing action, slapstick comedy and a heartwarming coming-of-age story! R to L (Japanese Style). As the gridiron mega-showdown between the Deimon Devil Bats and the Hakushu Dinosaurs rapidly approaches, players on both teams use their final moments to build as much strength as possible. Hoping to muscle-up so as to not be utterly obliterated by the monstrous Rikiya Gao, Kurita turns to an old rival for a unique bout of special training. Also knowing full well that Hakushu will be gunning for his head, Hiruma imparts manager Mamori with some special instructions to be used in the (very likely) event that he gets knocked out of the game. Who will score the first touchdown and who will be carried off the field on a stretcher?! Wimpy Sena Kobayakawa has been running away from bullies all his life. But when the football gear comes on, things change--Sena's speed and uncanny ability to elude big bullies just might give him what it takes to become a great high school football hero! Catch all the bone-crushing action and slapstick comedy of Japan's hottest football manga!",
      release_date: "April 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2227.jpg"},

{
      title: "Eyeshield 21, Vol. 4: Intimidation",
      author: "Riichiro Inagaki",
      synopsis: "The Devil Bats face off against the Chamelons--a team of ruthless delinquents. But when fragile Sena goes up against the Chameleon's sinister ace linebacker, who will be intimidating whom?",
      release_date: "August 4th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2228.jpg"},

{
      title: "Eyeshield 21, Vol. 19: The Successor",
      author: "Riichiro Inagaki",
      synopsis: "It's the second half of the game between the Bando Spiders and the Deimon Devil Bats. The winner will walk away with the final seed to the Kanto Tournament--the loser will walk away in shame. Strong winds are playing havoc with the passing games of both teams, forcing them to stick to the ground. But the shifty Hiruma has been intentionally throwing weak passes to make the Spiders defense underestimate him. Just when they least expect it he fires off a missile for a touchdown and puts the Bats back in the game! But it's not over yet...",
      release_date: "June 2nd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2229.jpg"},

{
      title: "Eyeshield 21, Vol. 18: Sena Kobayakawa",
      author: "Riichiro Inagaki",
      synopsis: "It's time for some serious gridiron action when the Bando Spiders collide with the Devil Bats! The game gets off to a bad start for the Bats when an incredibly accurate onside kick, combined with top-notch blocking, results in a field goal and an early lead for the Spiders. From there it just gets worse as the Devil Bats try to overcome the Spiders' special defensive maneuver, the 'Run Force'!",
      release_date: "March 3rd 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2230.jpg"},

{
      title: "Eyeshield 21, Vol. 14: The Demons vs. the Gods of the Sea",
      author: "Riichiro Inagaki",
      synopsis: "The Devil Bats' game against the Poseidons has begun! Besides a huge size advantage, the Poseidons boast 'the High Wave,' a powerful attack that threatens to wipe out all opposition. Mid-game, the Devil Bats' quarterback decides that it's time to unveil a new counterattack, but will it be enough to stop the team's slide into defeat?",
      release_date: "July 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2231.jpg"},

{
      title: "Eyeshield 21, Vol. 28: Tokyo Dome of the Decisive Battle",
      author: "Riichiro Inagaki",
      synopsis: "Just as the manager for the Hakushu Dinosaurs is about to show Sena and Riku some footage of her team in an attempt to dissuade them from continuing in the tournament, the horrifically powerful Rikiya Gao appears and gets ready to smash everything and everyone. But Gao's scare tactics fail to intimidate Riku, who declares that the Wild Gunmen won't back down from their upcoming match. Known for injuring quarterbacks left and right, does Gao now have The Kid dead in his sights?",
      release_date: "February 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2232.jpg"},

{
      title: "Eyeshield 21, Vol. 1: The Boy With the Golden Legs",
      author: "Riichiro Inagaki",
      synopsis: "What does a wimpy kid who's been bullied all his life have to depend on but his own two feet? Sena Kobayakawa is about to start his first year in high school and he's vowed not to get picked on anymore. Unfortunately, the sadistic captain of the football team already has his eye on Sena and his lightning-fast speed.",
      release_date: "January 1st 2002",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2233.jpg"},

{
      title: "Eyeshield 21, Vol. 9: Hell is for Devil Bats",
      author: "Riichiro Inagaki",
      synopsis: "Fun in the sun! When the Devil Bats and the Seibu Wild Gunmen head to the Texas coast, they merge to form a single team and compete in a beach football tournament! But this game is played without helmets...so will Eyeshield 21's identity be revealed?! And are the Devil Bats dedicated enough to sacrifice their summer vacation for a hellishly intense training camp?",
      release_date: "August 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2234.jpg"},

{
      title: "Eyeshield 21, Vol. 10: Is There a Loser in the House?",
      author: "Riichiro Inagaki",
      synopsis: "The Devil Bats are training harder than ever as they endure a grueling 'death march' from Houston to Las Vegas! A biker gang whisks Sena off on a wild detour to San Antonio, where he tries to recruit a promising tight end prospect. And if the team survives the trek through the desert, what kind of havoc will they wreak in Sin City?!",
      release_date: "October 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2235.jpg"},

{
      title: "Eyeshield 21, Vol. 16: Dawn of the Time-Out",
      author: "Riichiro Inagaki",
      synopsis: "The Devil Bats pull out all the stops in their game against the Seibu Wild Gunmen, but the Gunmen's offense proves to be unshakeable. Without a kicker, the Devil Bats don't stand a snowball's chance in hell...or do they?",
      release_date: "November 4th 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2236.jpg"},

{
      title: "Eyeshield 21, Vol. 26: Rough 'n' Tumble",
      author: "Riichiro Inagaki",
      synopsis: "R to L (Japanese Style). As the second half begins in the Kanto Tournament game between the Devil Bats and the White Knights, Ojo is still leading by seven points. Sena continues to struggle against the seemingly unstoppable Shin, but it's another Deimon player who finds a kink in the Knights' armor. Hoping to prove his superiority in the air, Monta clashes head-on with ace receiver Sakuraba. Will Monta's skills help put Deimon back in scoring position?",
      release_date: "September 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2237.jpg"},

{
      title: "Eyeshield 21, Vol. 25: Perfect Player",
      author: "Riichiro Inagaki",
      synopsis: "R to L (Japanese Style)",
      release_date: "July 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2238.jpg"},

{
      title: "Eyeshield 21, Vol. 32: Xmas BOWL",
      author: "Riichiro Inagaki",
      synopsis: "Bone-crushing action, slapstick comedy and a heartwarming coming-of-age story!Reads R to L (Japanese Style). Bone-crushing action, slapstick comedy and a heartwarming coming-of-age story! Christmas Bowl In preparation for their match against the strongest football team in Japan, the Deimon Devil Bats partner up with a host of star players from their previous matches in the hope of gaining a tactical edge. Sena and Shin, Kurita and Gao, Monta and Ikkyu; each Devil Bat hopes to find new strength in this extra-special bout of one-on-one training. But will an emotionally shaken Monta dash Deimon's chance for victory?",
      release_date: "January 1st 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2239.jpg"},

{
      title: "Eyeshield 21, Vol. 21: They Were 11!!",
      author: "Riichiro Inagaki",
      synopsis: "Sena Kobayakawa is about to start his first year of high school and he’s vowed not to get picked on anymore. Unfortunately, the sadistic captain of the football team already has his eye on Sena and his lightning-fast speed. Bone-crushing action, slapstick comedy and a heartwarming coming-of-age story!",
      release_date: "October 4th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2240.jpg"},

{
      title: "Eyeshield 21, Vol. 24: The Indomitable Fortress",
      author: "Riichiro Inagaki",
      synopsis: "R to L (Japanese Style)",
      release_date: "April 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2241.jpg"},

{
      title: "Eyeshield 21, Vol. 6: Devil Bats Take Flight",
      author: "Riichiro Inagaki",
      synopsis: "The Devil Bats are going to feel like dancing for joy if they can beat Banba and his hulking team, the Taiyo Sphinx. Sena and crew have held their own in the first half, but they're going to have to come up with something really special to defeat this bunch of bruisers. And don't forget, the winner of this game gets to play against a championship team from the United States!",
      release_date: "December 19th 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2242.jpg"},

{
      title: "Eyeshield 21, Vol. 7: Musashi",
      author: "Riichiro Inagaki",
      synopsis: "The American team cancels the big game against the Devil Bats for no apparent reason--but with a bit of creative video editing, Hiruma 'convinces' them to change their minds. And later, Sena and Monta search for a much-needed kicker to join the team and find him in a most unexpected place.",
      release_date: "March 4th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2243.jpg"},

{
      title: "Eyeshield 21, Vol. 5: Powerful",
      author: "Riichiro Inagaki",
      synopsis: "Sena's school's football team only has two players: Ryokan, who dreams of someday competing in the Christmas bowl game, and Hiruma, the quarterback known for frightening the underclassmen. Sena disguises his identity in order to join the team and showcase his great speed.'",
      release_date: "October 3rd 2003",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2244.jpg"},

      [genres[14], genres[10], genres[19]]
      ],
      [
{
      title: "Special A, Vol. 14",
      author: "Maki Minami",
      synopsis: "A fast-paced comedy series from Japan R to L (Japanese Style). The world of the SA class is turned upside down when Iori Tokiwa, a new student, transfers in and takes second place after Kei in the rankings, knocking Hikari down to third. But instead of resenting him, Hikari recognizes Iori as a kindred spirit as they both aim for the number one spot. As the two grow close, Kei must deal with a completely new experience--jealousy. Her whole life, Hikari Hanazono has been consumed with the desire to win against her school rival, Kei Takishima--at anything. He always comes out on top no matter what he does, and Hikari is determined to do whatever it takes to beat this guy...somehow At age 6 Hikari lost to Kei in an impromptu wrestling match. Now, at 15, Hikari joins 'Special A,' a group of the top seven students at a private academy, for the opportunity to trounce the guy who made her suffer her first defeat.",
      release_date: "July 16th 2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2245.jpg"},

{
      title: "Special A, Vol. 17",
      author: "Maki Minami",
      synopsis: "Joy abounds when final exams are over and the students begin to plan for the summer festival. But secretly Hikari is heartbroken--she'll be moving to Kyushu because of her father's job. She can't bring herself to tell Kei and the others. Will she really leave the boy and the school she loves?",
      release_date: "2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2246.jpg"},

{
      title: "Special A, Vol. 02",
      author: "Maki Minami",
      synopsis: "Hikari and Kei are pitted against a pair of professional wresters in a challenge issued by the student council. Hikari may now be on the same team as Kei, but a rival is still a rival!",
      release_date: "2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2247.jpg"},

{
      title: "Special A, Vol. 10",
      author: "Maki Minami",
      synopsis: "When Sakura learns of Hikari's feelings for Kei, she is determined to get the two together! But getting Hikari to confess is more difficult than anyone imagined. The effort will take Kei and Hikari from a haunted house to a deadly duel to a date with Kei's mom to... Australia?! This is one trip you won't want to miss!",
      release_date: "2004",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2248.jpg"},

      [genres[14], genres[13], genres[15]]
      ],
      [
{
      title: "Slam Dunk, Vol. 6",
      author: "Takehiko Inoue",
      synopsis: "He tried to slam her with love, but she dunked his heart. R to L (Japanese Style). With just a minute remaining on the game clock, Shohoku still trails Ryonan by four points. Hoping to put this match away for good, Ryonan hands the ball to their ace Sendoh, but they make the fatal error of overlooking the incredibly erratic (and at times phenomenally talented) Hanamichi. With a shot block that sets up a clinching basket for superstar Kaede Rukawa, Shohoku still has a chance for the win, but have they already chewed up too much time in the process? Winning isn't everything in the game of basketball, but who wants to come in second? It takes dedication and discipline to be the best, and the Shohoku High hoops team wants to be just that. They have one last year to make their captain's dream of reaching the finals come true--will they do it? Takehiko Inoue's legendary beloved basketball manga is finally here and the tale of a lifetime is in your hands.",
      release_date: "December 3rd 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2249.jpg"},

{
      title: "Slam Dunk, Vol. 2",
      author: "Takehiko Inoue",
      synopsis: "R to L (Japanese Style)One of the most popular manga in the history of manga! Winning isn't everything in basketball, but who wants to come in second? It takes dedication and discipline to be the best, and the Shohoku High hoops team wants to be just that--the best. They have one last year to make their captain's dream of reaching the finals come true--will they do it? Takehiko Inoue's legendary basketball manga is finally here, and the tale of a lifetime is in your hands!He may be a pain in the butt, but Hanamichi's athletic prowess and monstrous strength have not gone unnoticed by the captain of Shohoku's judo team. Hoping to take his troupe to a national title, the judo captain is willing to go to great lengths to lure Hanamichi away from the court and get him on the sparring mat. Will out-and-out bribery convince Hanamichi that judo's the way to go, or will he stay a basketball man to the very end?",
      release_date: "June 10th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2250.jpg"},

{
      title: "Slam Dunk, Vol. 4",
      author: "Takehiko Inoue",
      synopsis: "R to L (Japanese Style). Shohoku's (somewhat) friendly game against Ryonan finally gets underway. Old rivalries reignite with captain Akagi going toe-to-toe with Ryonan's center, Uozumi. Hanamichi has flat-out declared that he will personally shut down Ryonan's ace, Sendoh, but will Kaede Rukawa take care of things before Hanamichi even gets a chance to hit the floor? Either way, this is bound to be a game to remember.",
      release_date: "August 7th 1991",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2251.jpg"},

{
      title: "Slam Dunk, Vol. 14",
      author: "Takehiko Inoue",
      synopsis: "He tried to slam her with love, but she dunked his heart.Reads R to L (Japanese Style) T audience. Winning isn't everything in the game of basketball, but who wants to come in second? It takes dedication and discipline to be the best, and the Shohoku High hoops team wants to be just that. They have one last year to make their captain's dream of reaching the finals come true--will they do it?",
      release_date: "August 4th 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2252.jpg"},

{
      title: "Slam Dunk, Vol. 19",
      author: "Takehiko Inoue",
      synopsis: "Get ready for the greatest sports manga of all time!Reads R to L (Japanese Style). Thanks to consecutive three-pointers by Mistui late in the first half of the game against Ryonan High, Shohoku High ends the half down by only six points. Rukawa's still got plenty of strength left and he's going to need it to face Ryonan's ace, Sendoh. The pressure on Ryonan continues to draw fouls from them--can Shohoku exploit this and pull ahead? Or is Ryonan's coach Taoka just waiting for Shohoku to trip themselves up?",
      release_date: "July 4th 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2253.jpg"},

{
      title: "Slam Dunk, Vol. 9",
      author: "Takehiko Inoue",
      synopsis: "As luck would have it, the basketball team narrowly avoids suspension over the all-out-brawl incident when Yohei and Mitsui's friends take responsibility. Now, with Mitsui back in the lineup for the first time in two years, Shohoku quickly resumes practice in preparation for their upcoming tournament. As punishment for the lack of discipline they displayed in the fight, though, Coach Anzai decides on a starting lineup for Shohoku's game without Hanamichi, Rukawa, Ryota and Mitsui. Can Anzai's squad hold their own when their best players (and perpetual problem children) ride the bench?",
      release_date: "September 4th 1992",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2254.jpg"},

{
      title: "Slam Dunk, Vol. 17",
      author: "Takehiko Inoue",
      synopsis: "Get ready for the greatest sports manga of all time!Reads R to L (Japanese Style), for audiences T  As the boys from Shohoku watch from the sidelines, the much-anticipated game between Ryonan High and Kainan High continues to heat up. Kainan superstar Maki’s stellar play helps swing the momentum back in his team’s direction, aided in no small part by a key player from Ryonan getting into foul trouble. However, Captain Akagi and company leave the game early when they receive an alarming bit of news: Coach Anzai has collapsed and is now in the hospital!",
      release_date: "February 4th 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2255.jpg"},

{
      title: "Slam Dunk, Vol. 12",
      author: "Takehiko Inoue",
      synopsis: "He tried to slam her with love, but she dunked his heart.Reads R to L (Japanese Style), for T audiences. The final four teams that will play in the round-robin tournament have been decided, and Shohoku's one of them. However, Shohoku's next opponent is Kainan, and they're known as the 'Kings' for good reason-they've made it to Nationals 16 years in a row. Ever since he joined Shohoku, Akagi has dreamed of playing Kainan. His wish is about to come true, but is it one he'll soon be regretting?",
      release_date: "April 2nd 1993",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2256.jpg"},

      [genres[7], genres[15], genres[19]]
      ],
      [
{
      title: "Case Closed, Vol. 11",
      author: "Gosho Aoyama",
      synopsis: "High-school mystery fan Shin'ichi Kudo is actually one of his high school's best minds, but he gets his reality checks from his childhood friend and almost-girlfriend Ran Mori. Nothing can keep Shin'ichi from a case, until he follows a suspicious man into a park, is accosted from behind and fed a strange chemical which renders him unconscious. When he awakens, he has been transformed into a puny grade schooler! The hapless boy finds a home with eccentric inventor Professor Agasa, who searches for a cure for his condition. While he's waiting to be restored to his adolescence, Shin'ichi takes on the name Conan Edogawa (borrowed from Sir Arthur Conan Doyle and the last name of the famous Japanese mystery writer Edogawa Ranpo). As Conan, he plays the part of the little brother that Ran never had, and helps her incompetent private-detective father solve all of the gruesome murder mysteries that come their way.",
      release_date: "July 18th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2257.jpg"},

{
      title: "Case Closed, Vol. 8",
      author: "Gosho Aoyama",
      synopsis: "It's Conan versus the Phantom Thief. When Conan's elementary school friends decide to become super sleuths, they form the Junior Detective League. But will they get into more trouble than they can handle?",
      release_date: "December 9th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2258.jpg"},

{
      title: "Case Closed, Vol. 1",
      author: "Gosho Aoyama",
      synopsis: "Ghastly beheadings, bloody murders, and cold-hearted child abduction cases: precocious high school student Shin'ichi Kudo uses his keen powers of observation and astute intuition to solve mysteries that have left law enforcement officials baffled. Hot on the trail of a suspect, Shin'ichi is accosted from behind and fed a strange chemical which physically transforms him into a grade schooler! Taking on the pseudonym Conan Edogawa, he attempts to track down the people that did this to him.",
      release_date: "June 18th 1994",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2259.jpg"},

{
      title: "Case Closed, Vol. 9",
      author: "Gosho Aoyama",
      synopsis: "The Junior Detective league takes action! While playing hide and seek, first- grader Amy discovers a chopped off head. Will Conan and friends be able to save Amy from a serial murderer? And when Richard Moore P.I. attends a reunion of his college friends, one of them ends up with a bullet hole to her temple and a gun in her hand. Was it suicide or murder?! Later, Conan, Richard, and Rachel attend the birthday party of the daughter of a wealthy financier. But Conan's deductive skills are put to the test when the birthday girl ends up missing and a dead body turns up.",
      release_date: "January 18th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2260.jpg"},

{
      title: "Case Closed, Vol. 12",
      author: "Gosho Aoyama",
      synopsis: "High-school mystery fan Shin'ichi Kudo is actually one of his high school's best minds, but he gets his reality checks from his childhood friend and almost-girlfriend Ran Mori. Nothing can keep Shin'ichi from a case, until he follows a suspicious man into a park, is accosted from behind and fed a strange chemical which renders him unconscious. When he awakens, he has been transformed into a puny grade schooler! The hapless boy finds a home with eccentric inventor Professor Agasa, who searches for a cure for his condition. While he's waiting to be restored to his adolescence, Shin'ichi takes on the name Conan Edogawa (borrowed from Sir Arthur Conan Doyle and the last name of the famous Japanese mystery writer Edogawa Ranpo). As Conan, he plays the part of the little brother that Ran never had, and helps her incompetent private-detective father solve all of the gruesome murder mysteries that come their way.",
      release_date: "September 18th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2261.jpg"},

{
      title: "Case Closed, Vol. 5",
      author: "Gosho Aoyama",
      synopsis: "A vicious murderer whose face is covered in bandages is on the loose. Will Conan be able to catch him before he strikes again?",
      release_date: "April 18th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2262.jpg"},

{
      title: "Case Closed, Vol. 6",
      author: "Gosho Aoyama",
      synopsis: "It's Conan versus the Phantom Thief. When Conan's elementary school friends decide to become super sleuths, they form the Junior Detective League. But will they get into more trouble than they can handle? Rated for older teens.",
      release_date: "July 18th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2263.jpg"},

{
      title: "Case Closed, Vol. 14",
      author: "Gosho Aoyama",
      synopsis: "The Magical Suicide",
      release_date: "March 18th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2264.jpg"},

{
      title: "Case Closed, Vol. 7",
      author: "Gosho Aoyama",
      synopsis: "On a remote island, a job request comes in from a pianist who's been dead for over 10 years. Can Conan solve the case of the cursed piano?And later, a mysterious woman shows up claiming to be Jimmy's girlfriend. The only problem is, Conan's never seen her before in his life!",
      release_date: "November 18th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2265.jpg"},

{
      title: "Case Closed, Vol. 15",
      author: "Gosho Aoyama",
      synopsis: "During a school field trip, Conan and Rachel end up in a mountain cabin with several members of the teaching staff. Conan gets quite a surprise when he answers the doorbell and a frozen teacher's corpse falls into the house! To add to the mystery, a strange letter is written on the teacher's hand, which sends another of the educators running to his room. Shortly after, he's found dead too! Can Conan put his brainpower to work and solve the mystery before the students run out of teachers?",
      release_date: "June 18th 1997",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2266.jpg"},

{
      title: "Case Closed, Vol. 13",
      author: "Gosho Aoyama",
      synopsis: "High-school mystery fan Shin'ichi Kudo is actually one of his high school's best minds, but he gets his reality checks from his childhood friend and almost-girlfriend Ran Mori. Nothing can keep Shin'ichi from a case, until he follows a suspicious man into a park, is accosted from behind and fed a strange chemical which renders him unconscious. When he awakens, he has been transformed into a puny grade schooler! The hapless boy finds a home with eccentric inventor Professor Agasa, who searches for a cure for his condition. While he's waiting to be restored to his adolescence, Shin'ichi takes on the name Conan Edogawa (borrowed from Sir Arthur Conan Doyle and the last name of the famous Japanese mystery writer Edogawa Ranpo). As Conan, he plays the part of the little brother that Ran never had, and helps her incompetent private-detective father solve all of the gruesome murder mysteries that come their way.",
      release_date: "December 10th 1996",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2267.jpg"},

{
      title: "Case Closed, Vol. 4",
      author: "Gosho Aoyama",
      synopsis: "Bloody murder is committed at a museum, reproducing a scene from a gruesome painting. Later, the men in black are back! Will Conan be able to come any closer to getting his old body back? Also, Conan's friends from grade school find a treasure map--but will it only lead them to a trove of trouble?--P. [4] of cover.",
      release_date: "February 18th 1995",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2268.jpg"},

      [genres[8]]
      ],
      [
{
       title: "One Punch Vol. 1",
       author: "One",
       synopsis: "A manga series that packs quite the punch! Nothing about Saitama passes the eyeball test when it comes to superheroes, from his lifeless expression to his bald head to his unimpressive physique. However, this average-looking guy has a not-so-average problem—he just can’t seem to find an opponent strong enough to take on! Every time a promising villain appears, he beats the snot out of ’em with one punch! Can Saitama finally find an opponent who can go toe-to-toe with him and give his life some meaning? Or is he doomed to a life of superpowered boredom?",
       release_date: "December 12, 2012",
       img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch1_mkmmb3.jpg",
       },

{
        title: "One Punch Man: The Secret To His Strength Vol. 2",
        author: "One",
        synopsis: "Saitama’s easily taken out a number of monsters, including a crabby creature, a malicious mosquito girl and a muscly meathead. But his humdrum life takes a drastic turn when he meets Genos—a cyborg who wants to uncover the secret behind his strength!",
        release_date: "December 12, 2012",
        img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch2_lcnzsy.jpg",
        },

{
        title: "One Punch Man: The Rumor Vol. 3",
        author: "One",
        synopsis: "For three years, Saitama has defeated countless monsters, but no one knows about him… That’s because he isn’t in the Hero Association’s registry! Together with Genos, Saitama decides to take the Hero Association’s test! But can they pass?!",
        release_date: "April 4, 2013",
        img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch3_v8w7lx.jpg",
        },

{
        title: "One Punch Man: Giant Meteor Vol. 4",
        author: "One",
        synopsis: "Saitama is now a certified hero! And with that title comes great responsibility—he’s required to perform one heroic deed per week. While Saitama makes the rounds to meet his quota, an incoming threat from outer space is screeching toward Earth...",
        release_date: "August 2, 2013",
        img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch4_wkmgjm.jpg",
        },

{
        title: "One Punch Man: Shining in Tatters Vol. 5",
        author: "One",
        synopsis: "To stop a Demon-level crisis, Saitama and company head toward the action. However, even Class-S heroes prove to be no match for the Deep Sea King! In order to protect the good citizens, our heroes will need to summon all of their courage and confront this threat!",
        release_date: "December 4, 2013",
        img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch5_bskv9p.jpg",
        },

{
        title: "One Punch Man: The Big Prediction Vol. 6",
        author: "One",
        synopsis: "An emergency summons gathers Class S heroes at headquarters…and Saitama tags along. There, they learn that the great seer Shibabawa left the following prophecy: “The Earth is in danger!” What in the world is going to happen?!",
        release_date: "May 2, 2014",
        img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch6_jgvrhl.jpg",
        },

{
        title: "One Punch Man: The Fight Vol. 7",
        author: "One",
        synopsis: "When aliens invade Earth, a group of Class-S heroes finally finds a way to fight back and go on the offensive. Inside the enemy mother ship, Saitama fights Boros. Faced with the alien’s frightful power, he decides to get serious! What is the Earth’s fate?!",
        release_date: "December 4, 2014",
        img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch7_e80ljs.jpg",
        },

{
        title: "One Punch Man: That Man Vol. 8",
        author: "One",
        synopsis: "Class-S hero King is known as the strongest man on earth. Even monsters fear him. But when a mysterious organization sends an assassin after him, the shocking truth about King is revealed!",
        release_date: "April, 2015",
        img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch8_n9bhlv.jpg",
        },

{
        title: "One Punch Man: Don't Dis Heroes Vol. 9",
        author: "One",
        synopsis: "Garo, a man who admires monsters, attacks the Hero Association! But after pulverizing the heroes there, he just leaves. What the heck does this guy want?! Meanwhile, Class-B, Rank-1 Miss Blizzard visits Saitama at his apartment. Since he’s just a low-ranking hero, she thinks she can make him one of her subordinates, but as always, Saitama has other plans!",
        release_date: "August 9, 2015",
        img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch9_iqwtow.jpg",
        },

{
        title: "One Punch Man: Pumped Up Vol. 10",
        author: "One",
        synopsis: "Hero hunter Gato intensifies his onslaught, so of course Saitama decides now is the perfect time to join a combat tournament. Meanwhile, Class-S hero Metal Bat takes an assignment guarding a Hero Association executive and his son, and before long trouble appears!",
        release_date: "December 4, 2015",
        img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch10_ry24vh.jpg",
        },

        [genres[0], genres[14], genres[10], genres[20]]
        ],
        [
{
      title: "Maid-sama! Vol. 08",
      author: "Hiro Fujiwara",
      synopsis: "Once an all-boys school, Seika High, a renowned school full of reckless and filthy students, has recently become a co-ed school. However, with the female population still remaining a minority even after the change over the recent years, Misaki Ayuzawa takes it into her own hands to reform the school and allow a chance for the girls to feel safer in the rough environment. Even the teachers are on her side. Training, studying and even becoming the first female student council president of the school, Misaki has gained a reputation, among the male students body as an uptight boy-hating demon dictator and as a shining hope for the teachers and fellow female students. However, despite her tough-as-nails appearance, she secretly works part-time at a maid café in order to support her family. Unfortunately, her secret is soon discovered by Takumi Usui, a popular boy at Seika High.",
      release_date: "September 4th 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2269.jpg"},

{
      title: "Maid-sama! Vol. 07",
      author: "Hiro Fujiwara",
      synopsis: "Once an all-boys school, Seika High, a renowned school full of reckless and filthy students, has recently become a co-ed school. However, with the female population still remaining a minority even after the change over the recent years, Misaki Ayuzawa takes it into her own hands to reform the school and allow a chance for the girls to feel safer in the rough environment. Even the teachers are on her side. Training, studying and even becoming the first female student council president of the school, Misaki has gained a reputation, among the male students body as an uptight boy-hating demon dictator and as a shining hope for the teachers and fellow female students. However, despite her tough-as-nails appearance, she secretly works part-time at a maid café in order to support her family. Unfortunately, her secret is soon discovered by Takumi Usui, a popular boy at Seika High.",
      release_date: "April 3rd 2009",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2270.jpg"},

{
      title: "Maid-sama! Vol. 03",
      author: "Hiro Fujiwara",
      synopsis: "It's Seika High's Sports Day Festival! The Idiot Trio have just completed a fancy, custom-made maid outfit that they want to give to Misaki as a present, but through a mix-up, the maid outfit is sent out to the Sports Day Dress-up Race as one of its generic costumes, a contest which both Misaki and Usui are entering.",
      release_date: "August 4th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2271.jpg"},

{
      title: "Maid-sama! Vol. 06",
      author: "Hiro Fujiwara",
      synopsis: "Once an all-boys school, Seika High, a renowned school full of reckless and filthy students, has recently become a co-ed school. However, with the female population still remaining a minority even after the change over the recent years, Misaki Ayuzawa takes it into her own hands to reform the school and allow a chance for the girls to feel safer in the rough environment. Even the teachers are on her side. Training, studying and even becoming the first female student council president of the school, Misaki has gained a reputation, among the male students body as an uptight boy-hating demon dictator and as a shining hope for the teachers and fellow female students. However, despite her tough-as-nails appearance, she secretly works part-time at a maid café in order to support her family. Unfortunately, her secret is soon discovered by Takumi Usui, a popular boy at Seika High.",
      release_date: "September 4th 2008",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2272.jpg"},

{
      title: "Maid-sama! Vol. 01",
      author: "Hiro Fujiwara",
      synopsis: "Misaki Ayuzawa is the President of the Student Council at Seika High School, formerly an all-boys school. Unfortunately, most of the students are still male and stuck in their slovenly habits, so man-hating Misaki really socks it to them in an attempt to make the school presentable to attract more female students. But what will she do when the sexiest boy in school finds out that after school, Misaki works in a maid cafe.First published in Japan in 2006 by Hakusensha Inc., Tokyo.",
      release_date: "September 5th 2006",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2273.jpg"},

{
      title: "Maid-sama! Vol. 02",
      author: "Hiro Fujiwara",
      synopsis: "Misaki Ayuzawa is the President of the Student Council at Seika High School, formerly an all-boys school. Unfortunately, most of the students are still male and stuck in their slovenly habits, so man-hating Misaki really socks it to them in an attempt to make the school presentable to attract more female students. But what will she do when the sexiest boy in school finds out that after school, Misaki works in a maid cafe.'First published in Japan in 2007 by Hakusensha, INC., Tokyo'--P. facing T.p.",
      release_date: "February 5th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2274.jpg"},

{
      title: "Maid-sama! Vol. 04",
      author: "Hiro Fujiwara",
      synopsis: "The rogue hypnotist strikes again! Post-hypnosis, if Misaki sleeps, she will wake up hating Usui! Well, hating him more than usual... Usui fights to keep Misaki's rage at bay by keeping her awake as long as possible. Later, Misaki and Cafe Maid Latte take a trip to the beach. Even with Aoi along for the ride, it's all fun in the sun -- with a bit of danger and romance thrown into the mix!",
      release_date: "December 5th 2007",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2275.jpg"},

      [genres[14], genres[13], genres[15]]
      ],
      [
{
      title: "Puella Magi Madoka Magica, Vol. 01",
      author: "Magica Quartet",
      synopsis: "In this world, there exist strange creatures who have the power to grant one wish to a chosen girl. However, in exchange, that girl must then become a magical girl and use their powers to fight against witches, evil creatures born from darkness that are responsible for murders and suicides.In the city of Mitakihara, a schoolgirl named Madoka Kaname and her friend Sayaka Miki are approached by a familiar named Kyubey, who offers to grant each of them one wish in return for making each of them a magical girl. Another magical girl named Homura Akemi tries to prevent Madoka from making such a deal, while Kyubey urges Madoka by telling her she will become the most powerful magical girl. However, contrary to the glamorous notions one would expect, a magical girl finds herself dealing with death, isolation, loss of humanity, agony over the value of her wish, and existential crisis. Madoka, following her friends, soon sees the darker side of being a magical girl, and because of knowing the truth about being a magical girl, she questions if she should become one as well.",
      release_date: "February 12th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2276.jpg"},

{
      title: "Puella Magi Madoka Magica, Vol. 03",
      author: "Magica Quartet",
      synopsis: "Madoka is horrified to learn the true nature of the witches she and her friends, the Magical Girls, have been fighting-and the terrible fate that awaits any Magical Girl who accepts Kyubey's offer of power. Having watched countless Magical Girls sacrificed for the larger aims of his people, Kyubey is only interested in securing more girls to that end, and Madoka is left with his chilling reminder that she too is destined to be a Magical Girl of incredible power... Can Madoka and her friends escape this tragic fate?",
      release_date: "May 30th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2277.jpg"},

{
      title: "Puella Magi Madoka Magica, Vol. 02",
      author: "Magica Quartet",
      synopsis: "While Madoka continues to deliberate over the decision to join Akemi as a magical girl, her best friend, Sayaka, seizes the chance to wish for the recovery of the boy she loves. But when Sayaka is caught in a territory dispute with a more experienced (and more deadly) magical girl named Kyouko, Madoka is reminded that being a magical girl is more than a matter of donning a frilly costume and fighting evil... it is also a matter of life and death!",
      release_date: "March 12th 2011",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/2278.jpg"},

      [genres[0], genres[14], genres[7], genres[4], genres[1]]
      ],
]



# works well!
# go through each series
allComics.each do |series|
  # only first to penultimate arrays
  series[0..-2].each do |comic|
    # create new comic and save the object as a variable
    newCom = Manga.create(comic)
    # go through each of the assocaited genres
    series[-1].each do |genre|
      Genre.create(genre: genre, manga_id: newCom.id)
    end
  end
end
