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
