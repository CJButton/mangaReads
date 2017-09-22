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
  'Post-Apocalpytic'
 ]
#
# allComics = [
#       [
# {
#       title: "Neon Genesis Evangelion, Vol. 13",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power...",
#       release_date: "November 2nd 2012",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1001.jpg"},
#
# {
#       title: "Neon Genesis Evangelion: 3-in-1 Edition, Vol. 4",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "The classic series, now available in a deluxe omnibus edition!The manga adaptation of the landmark animated series that changed the mecha genre. Each volume contains three of the original graphic novels and includes pages of stunning, full-color art.  Once Shinji didn’t care about anything; then he found people to fight for—only to learn that he couldn’t protect them, or keep those he let into his heart from going away. As mankind tilts on the brink of the apocalyptic Third Impact, human feelings are fault lines leading to destruction and just maybe, redemption and rebirth.",
#       release_date: "",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1002.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 9",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "Reads R to L (Japanese Style) T+ audience. Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the ''Angels'' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called ''Evangelion'' to match the Angels' fearsome power...",
#       release_date: "April 3rd 2004",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1003.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 14",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power... The Third Impact has come. As the unbelievably massive form of Ayanami towers over the Earth, the Instrumentality Project enters its last stages. While the world shudders in terror as it is engulfed in a sea of LCL, Shinji's consciousness merges with Lilith';s, and he searches his memories for a final understanding of himself and the fate of humanity.",
#       release_date: "November 1st 2014",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1004.jpg"},
#
# {
#       title: "Neon Genesis Evangelion: 3-in-1 Edition, Vol. 3",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "The manga adaptation of the landmark animated series that changed the mecha genre. Each volume contains three of the original graphic novels and includes pages of stunning, full-color art.  Once Shinji didn’t care about anything; then he found people to fight for—only to learn that he couldn’t protect them or keep those he let into his heart from going away. As mankind tilts on the brink of the apocalyptic Third Impact, human feelings are fault lines leading to destruction and just maybe, redemption and rebirth.",
#       release_date: "",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1005.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 5",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "With half the human race dead, a handful of teenagers pilot the colossal superentities known as Evangelions and battle the mysterious giant Angels. But even they are not prepared for the appearance of a giant eye in the heavens that heralds the Angels latest and deadliest assault.",
#       release_date: "December 17th 1999",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1006.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 12",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "Reads R to L (Japanese Style) T+ audience. Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the ''Angels'' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called ''Evangelion'' to match the Angels' fearsome power...",
#       release_date: "March 31st 2010",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1007.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 6",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "It's NERV against the Angels in the battle to control Earth in 2015. During a lull in the fighting, Commander Ikari and Ritsuko prepare for the delivery of Unit-03. But no one is prepared when Unit-03 reveals itself as the next Angel.",
#       release_date: "December 15th 2000",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1008.jpg"},
#
# {
#       title: "Neon Genesis Evangelion 2-in-1 Edition, Vol. 5: Includes vols. 13  14",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "The manga adaptation of the landmark animated series that changed the mecha genre. This volume contains two of the original graphic novels and includes pages of stunning, full-color art. The Instrumentality Project comes to its apocalyptic conclusion. With the earth now covered in a sea of LCL, every human consciousness in the world has become one—a combined entity waiting to be reborn. Deep within Lilith, Shinji comes face-to-face with everything he ever knew, loved and feared. The fate of the world is in his hands, and the choice he makes will doom or redeem humanity. Everything ends here. Everything begins here. This is the epic finale of !",
#       release_date: "",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1009.jpg"},
#
# {
#       title: "Der Mond: The Art of Neon Genesis Evangelion",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "New look, a hard cover version for Der Mond!",
#       release_date: "September 1999",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1010.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 10",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike.In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power...",
#       release_date: "February 25th 2006",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1011.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 11",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo--commander of the secret organization NERV--to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power...",
#       release_date: "June 19th 2007",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1012.jpg"},
#
# {
#       title: "Neon Genesis Evangelion: 3-in-1 Edition, Vol. 1",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "The classic series, now available in a deluxe omnibus edition!The manga adaptation of the landmark animated series that changed the mecha genre. Each volume contains three of the original graphic novels and includes pages of stunning, full-color art. Once Shinji didn't care about anything; then he found people to fight for--only to learn that he couldn't protect them, or keep those he let into his heart from going away. As mankind tilts on the brink of the apocalyptic Third Impact, human feelings are fault lines leading to destruction and just maybe, redemption and rebirth.",
#       release_date: "November 6th 2012",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1013.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 4",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion! Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo-commander of the secret organization NERV-to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power. As a carrier fleet steams towards Japan carrying a mysterious embryonic form linked to the true origins of the human race, a hurricane is about to blow down Shinji's momentary peace: the wind through the red hair of Asuka Langley Soryu, the new Eva pilot arriving in Tokyo-3...One of the founding members of Gainax, Japan's most progressive anime studio, Evangelion's Yoshiyuki Sadamoto was also the character designer for their recent Adult Swim smash FLCL. EVA Vol. 4 contains a Japanese sound FX glossary plus a special bonus interview with the voice of Asuka, Battle Royale's Yuko Miyamura!",
#       release_date: "October 1st 1997",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1014.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 2",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "Neon Genesis Evangelion is the most controversial -- and some say the best -- anime of the decade. Set in the year 2015 when humanity faces a terrifying last judgment from mysterious giant 'Angels, ' the series has been acclaimed for its original story line, direct psychological content, and self-referential examination of the genre.",
#       release_date: "October 29th 1995",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1015.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 7",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "- From the character designer of the recent Adult Swim smash FLCL.- Part of the Neon Genesis Evangelion phenomenon - the most talked about anime show of the last ten years!- Broadcasted nationwide in Japan by TV Tokyo in 1995-96 and re-run seven times. Final episode had audience of 10 million!- Video sales of US $80MM, merchandise sales US$400MM -- video and soundtrack CDs available in the US.- The film The End Of Evangelion won Japanese Academy Award in 1997.",
#       release_date: "December 1st 2001",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1016.jpg"},
#
# {
#       title: "Neon Genesis Evangelion: 3-in-1 Edition, Vol. 2",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "The manga adaptation of the landmark animated series that changed the mecha genre. Each volume contains three of the original graphic novels and includes pages of stunning, full-color art.  Once Shinji didn’t care about anything; then he found people to fight for—only to learn that he couldn’t protect them, or keep those he let into his heart from going away. As mankind tilts on the brink of the apocalyptic Third Impact, human feelings are fault lines leading to destruction and just maybe, redemption and rebirth.  ",
#       release_date: "",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1017.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 1",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "Evangelion, Vol. 1, contains a Japanese sound FX glossary plus special bonus commentary by series mecha designer Ikuto Yamashita, as well as the famous 'confession letter' written by director Hideaki Anno in the months before the original TV series premiere that laid out his deeply personal motivations to make Evangelion.",
#       release_date: "August 29th 1995",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1018.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 3",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "In the year 2015, humanity faces terrifying last judgement by a mysterious race of giants, and a handful of teenagers must pilot the colossal superentities known as 'evangelions' in the fight for survival. With Volume 3, this controversial science fiction series continues to push the limits of the genre.",
#       release_date: "October 29th 1996",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1019.jpg"},
#
# {
#       title: "Neon Genesis Evangelion, Vol. 8",
#       author: "Yoshiyuki Sadamoto",
#       synopsis: "Japan's most controversial anime series is over...but not the manga version of Neon Genesis Evangelion Series co-creator Yoshiyuki Sadamoto's personal interpretation of the Evangelion characters and story is sure to intrigue new and old fans alike. In 2015, the 'Angels' have returned, and Shinji Ikari, a fourteen year-old child of the new Earth, is forced by his father Gendo-commander of the secret organization NERV-to pilot the monstrous biomechanical weapon called 'Evangelion' to match the Angels' fearsome power. As a disembodied Shinji drifts in visions, merged with the esoteric fluids of the Evangelion, his father's long-serving lieutenant, Fuyutsuki, is kidnapped for interrogation by SEELE-in German, the 'Soul'-the council of superiors whom NERV has been double-crossing for some time now...One of the founding members of Gainax, Japan's most progressive anime studio, Evangelion's Yoshiyuki Sadamoto was also the character designer for their recent Adult Swim smash FLCL. EVA Vol. 8 contains a Japanese sound FX glossary plus a special bonus guide to help U.S. fans discover the best of the many import books available on Evangelion",
#       release_date: "December 19th 2002",
#       img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1020.jpg"},
#
#     [genres[0], genres[5], genres[6]]
#   ],
# ]


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
      synopsis: "Ed and Al come face to face with the "father" of the homunculi, who just so happens to be a dead ringer for their own father, Van Hohenheim--a resemblance too uncanny for coincidence. And later, when the allure of immortality proves to be too much for Prince Lin of Xin, he lets Greed take over...literally!",
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
      synopsis: "Hohenheim finally gets his chance to stop the mysterious homunculus "father" who rules over Central City. Will Hohenheim's surprise be enough to defeat the most powerful homunculus of them all? And when King Bradley makes a triumphant return, will the battle turn in the military's favor...?",
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
      synopsis: "In an alchemical ritual gone wrong, Edward Elric lost his arm and his leg, and his brother Alphonse became nothing but a soul in a suit of armor. Equipped with mechanical "auto-mail" limbs, Edward becomes a state alchemist, seeking the one thing that can restore his brother and himself... the legendary Philosopher's Stone.There are many types of alchemy in the world. Edward's commanding officer, 'Flame Alchemist' Roy Mustang, can control fire. Shou Tucker, the 'Sewing-Life Alchemist,' specializes in the most difficult alchemy of all...biological transmutation, the ability to alter the tissue of living things. But no matter what their power, alchemists are still human. And when a mysterious killer begins stalking state alchemists, no one can escape his vengeance...",
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
      synopsis: "In an alchemical ritual gone wrong, Edward Elric lost his arm and his leg, and his brother Alphonse became nothing but a soul in a suit of armor. Equipped with mechanical "auto-mail" limbs, Edward becomes a state alchemist, seeking the one thing that can restore his and his brother's bodies...the legendary Philosopher's Stone.Barry the Chopper, the psychopathic killer whose soul is encased in a suit of armor, has been captured by Colonel Mustang's troops. Fearing he will reveal the Philosopher's Stone conspiracy, Gluttony and Lust decide to kill him, using Barry's own original soulless body to track him down! Though Colonel Mustang has anticipated their moves and set up an ambush, Gluttony and Lust prove too powerful and easily fight their way through to Barry, who is being protected by Al and Lieutenant Hawkeye. In a terrible battle, a badly injured Colonel Mustang sacrifices all in a last-ditch attempt to stop Lust!",
      release_date: "January 1st 2005",
      img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/covers/1033.jpg"},

{
      title: "Fullmetal Alchemist, Vol. 26",
      author: "Hiromu Arakawa",
      synopsis: "With all the pieces now in his possession, the homunculus "father" executes his master plan as Edward and the others watch in horror. When the dust settles, the entire world has been reshaped. With the help of Hohenheim, the Elric brothers lauch a desperate final attack, but is it all too late...?",
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
      synopsis: "As Greed and King Bradley continue their battle, the mysterious homunculus "father" makes his move under Central City. In order to achieve his objectives, he will need to force Mustang to make an unthinkable choice. Meanwhile, Alphonse has the chance to regain his own body, but the sacrifice to do so may be too much.",
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
      synopsis: "In an alchemical ritual gone wrong, Edward Elric lost his arm and his leg, and his brother Alphonse became nothing but a soul in a suit of armor. Equipped with mechanical "auto-mail" limbs, Edward becomes a state alchemist, seeking the one thing that can restore his and his brother's bodies...the legendary Philosopher's Stone.The raid on the Devil's Nest becomes a slaughter, as government troops - led by the Fuhrer President himself, King Bradley - exterminate the half-human forces of the Homunculus Greed. But will Ed and Al survive the battle unchanged? As Greed is sent to meet his maker, foreign travelers arrive in Amestris, having crossed the great desert from the eastern country of Xing. Their names are Mei and Ling, and they've come for the Philosopher's Stone...and a secret even the Elric brothers never imagined...",
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
      synopsis: "Accompanied by their bodyguard, Alex Louis Armstrong, our heroes seek out their closest childhood friend, mechanic Winry Rockbell, to fix their battered "auto-mail" bodyparts. Soon their quest for the Philosopher's Stone takes them to the great central library, where the Stone's formula may be hidden...if the mysterious figure named Lust doesn't get there first! But the secret of the Philosopher's Stone may be even more frightening than the beings who guard it...",
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
      synopsis: "New troubles and new characters are introduced in this exciting installment of "Saiyuki Reload." As the fearsome foursome continue on their latest adventure, what will happen when they are faced with a new kind of enemy? Rated for older teens.",
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
      synopsis: "Sanzo, Goku and Hakkai are out to find 'God'--and Gojyo. At the same time, Gojyo climbs a seemingly endless stairway to heaven and is assailed by a very maternal monster. The gang finally catches up to Gojyo, and as luck would have it, they've also found "God." But this dangerous deity is no ordinary opponent, and the quartet must get serious before they get crushed.",
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
      synopsis: "Feeling down in the dumps about losing in the battle against "God", Goku attempts to raise everyone's spirits with a game of Mahjung (sp?). He wins match after match until he scolds them all to snap out of it and shape up, leading to them playing a whole day straight of the game. Ready for another round, the gang approaches "The God's Castle", where they run into a bit of trouble with talking toys, before finally reaching "God". They kick major ass and succeed in beating him in the end. There is a flashback of when Sanzou was younger and had a run-in with a young "God", who was a disciple to Ukoku Sanzou Houshi, a very powerful and wise monk. With the "game" over, the castle around them collapses, but they manage to escape. Amongst the ruins, Ugoku appears and picks up "God"s (I think his name is actually Kouryuu) fallen monk hat and announces that he's ready for another "game". Our heroes drive off into the distance, back to their usual bickering selves, but the story is far from over...",
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
     ]
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
      ]
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


# Manga.create(title:"Dragon Ball, Vol. 2: Wish upon a Dragon",
#              author:"Akira Toriyama",
#              synopsis:"Dragon Ball introduces a young monkey-tailed boy named Goku (a wry update of the classic Chinese Monkey King legend), whose quiet life changes when he meets a girl named Bulma who is on a quest to collect seven Dragon Balls. If she gathers them all, an incredibly powerful dragon will appear and grant her one wish. But the precious orbs are scattered all over the world, and Bulma could use the help of a certain super-strong boy... (In Japan, Dragon Ball and Dragon Ball Z were originally a single 42-volume series. VIZ Media's Dragon Ball contains vols. 1-16 of the original Japanese Dragon Ball , from the beginning of the series to the climax of Goku's last fight with Piccolo.)",
#              release_date: "January 10, 1986",
#              img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478851605/manga%20covers/dragonball2.jpg",
#              genre: ["Adventure", "Martial arts", "Sci-Fi"])
#
# Manga.create(title:"Dragon Ball, Vol. 7: General Blue and the Pirate Treasure",
#              author:"Akira Toriyama",
#              synopsis:"Only Goku, Bulma and Kuririn stand between the Red Ribbon Army and the seven Dragon Balls which can grant any wish in the world! Using a submarine loaned by Kame-Sen'nin, the heroic trio explores a pirate's undersea cave in search of the next Dragon Ball , but gun-toting bad guys are on their tail! Now they must face not only perilous pirate traps but the sinister General Blue, a martial artist with powers even Goku doesn't have! Can they escape the cave alive? As the battle continues, Goku and General Blue go to Penguin Village, the home of the weird scientist Dr. Slump and one of the strangest places on Earth!",
#              release_date: "May 8, 1987",
#              img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478899770/manga%20covers/dragonball7.jpg",
#              genre: ["Adventure", "Martial arts", "Sci-Fi"])
#
# Manga.create(title:"Dragon Ball, Vol. 1: The Monkey King",
#              author:"Akira Toriyama",
#              synopsis:"Before there was Dragon Ball Z , there was Akira Toriyama's action epic Dragon Ball , starring the younger version of Son Goku and all the other Dragon Ball Z heroes! Meet a naive young monkey-tailed boy named Goku, whose quiet life changes when he meets Bulma, a girl who is on a quest to collect seven Dragon Balls. If she gathers them all, an incredibly powerful dragon will appear and grant her one wish. But the precious orbs are scattered all over the world, and Bulma needs Goku's help (and his super-strength)! With a magic staff for a weapon and a flying cloud for a ride, Goku sets out on the adventure of a lifetime...",
#              release_date: "September 10, 1985",
#              img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478851476/manga%20covers/dragonball1.jpg",
#              genre: ["Adventure", "Martial arts", "Sci-Fi"])
#
# Manga.create(title:"Dragon Ball, Vol. 5: The Red Ribbon Army",
#              author:"Akira Toriyama",
#              synopsis:"In the final round of the Strongest under the Heavens martial arts competition, it's down to Goku vs. Jackie Chun, the mysterious old man who's as powerful as Kame-Sen'nin himself! Will the audience survive the confrontation? After the smoke clears, Goku jumps on his flying cloud and returns to his quest to find the seven Dragon Balls, but now he's not the only one looking for them. The evil Red Ribbon Army wants the Dragon Balls for themselves, and to stop their plans, Goku must go around the world--and survive the six deadly floors of Colonel White's fortress, Muscle Tower!",
#              release_date: "January 9, 1986",
#              img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478899763/manga%20covers/dragonball5.jpg",
#              genre: ["Adventure", "Martial arts", "Sci-Fi"])
#
# Manga.create(title:"Dragon Ball, Vol. 6: Bulma Returns!",
#              author:"Akira Toriyama",
#              synopsis:"In the frozen north, Goku's one-man fight against the Red Ribbon Army continues as he storms the perilous Muscle Tower! Can he defeat General White's squad of ninjas, cyborgs, and worse, and save the peaceful people of Jingle Village from their oppressors? Then, Goku travels to the City of the West to visit his old friend Bulma, who joins him on his quest, bringing her latest inventions. Their quest for the next Dragon Ball takes them around the world to a jungle island in the South Seas...but to get THIS Dragon Ball they'll have to go through General Blue! ",
#              release_date: "January 9, 1987",
#              img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478899771/manga%20covers/dragonball6.jpg",
#              genre: ["Adventure", "Martial arts", "Sci-Fi"])
#
# Manga.create(title:"Dragon Ball, Vol. 3: The Training of Kame-Sen'nin",
#              author:"Akira Toriyama",
#              synopsis:"With the Dragon Balls gone and Bulma's summer vacation over, Goku goes to the remote house of the Turtle Hermit, Kame-Sen'nin, to be trained in the martial arts. There, the girl-ogling old master promises to teach Goku everything he knows...and prepare him for the Tenka'ichi Budôkai, the great tournament to determine the Strongest Fighter in the World! But Goku's fellow student, the Shaolin monk Kuririn, isn't above cheating to be the best. Can the two of them get along as they undergo the strangest martial arts training ever?",
#              release_date: "June 10, 1986",
#              img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478899652/manga%20covers/dragonball3.jpg",
#              genre: ["Adventure", "Martial arts", "Sci-Fi"])
#
# Manga.create(title:"Dragon Ball, Vol. 4: Strongest Under the Heavens ",
#              author:"Akira Toriyama",
#              synopsis:"Goku has made it to the Tenka'ichi Budôkai, the world's #1 martial arts tournament...but even the training of the martial arts master Kame-Sen'nin hasn't prepared him for this! Only seven finalists remain. Will the champion be Goku? His fellow student Kuririn? Yamcha, master of the Fist of the Wolf Fang? Fighting woman Ran Fuan? Giran, a rubbery monster who's part dinasaur? Namu, an Indian mystic? Or Jackie Chun, the mysterious old man who may be the toughest fighter of all? There can be only one winner in the wildest, craziest battle ever!",
#              release_date: "October 9, 1986",
#              img_url:"http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478899757/manga%20covers/dragonball4.jpg",
#              genre: ["Adventure", "Martial arts", "Sci-Fi"])
#
# Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.2",
#              author:"Nobuhiro Watsuki",
#              synopsis:"When the chief of the Police Sword Corps himself comes asking for favors, things must be bad. Hitokiri Udô Jin-e--a black-hatted, crazy-eyed slayer who fells both targets and innocent bystanders alike--is steadily working his way through a list of former Ishin Shishi patriots now ensconced within position of power in the Meiji government. Can Kenshin withstand the hypnotic, paralyzing effect of Jin-e...? ",
#              release_date: "December 2, 1994",
#              img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478548454/manga%20covers/kenshin2.jpg",
#              genre: ["sword-fighting"])
#
# Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.4",
#              author:"Nobuhiro Watsuki",
#              synopsis:"Shinomori Aoshi was once the leader of Edo Castle's elite guard, the Oniwabanshû. But with the fighting at an end and the shôgunate overthrown, the brilliant Aoshi and his four most loyal onmitsu, or spies, find themselves without a home or a purpose. When fighting is your life, loyalty to those lost ideals (and to the man who most symbolized them) may be the one thing left. But Megumi's life is at stake, and however sympathetic Kenshin may feel, he will fight on, to the last man if necessary...",
#              release_date: "April 4, 1995",
#              img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478548454/manga%20covers/kenshin4.jpg",
#              genre: ["sword-fighting"])
#
# Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.5",
#              author:"Nobuhiro Watsuki",
#              synopsis:"Isurugi Raijûta, a truly old-school swordsman, comes to Kenshin and requests his aid in reforming the state of swordsmanship schools, or kenjutsu dojo, in Japan. Although Kenshin is intrigued by Raijûta's ideals (chiefly, that there is a need for a nation-wide, unifying school), Raijûta's plan to weed out the schools he deems unfit is not in accordance with Kenshin's deepest-held beliefs. Given the choice of either joining Raijûta's Shinko-ryû movement or dying, Kenshin walks away, choosing neither. But Raijûta isn't willing to let Kenshin off the hook so easily...",
#              release_date: "June 2, 1995",
#              img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478548454/manga%20covers/kenshin_5.jpg",
#              genre: ["sword-fighting"])
#
# Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.7",
#              author:"Nobuhiro Watsuki",
#              synopsis:"The Shinsengumi--fearsome and formidable protectors of the Shôgunate. Kenshin knows them well, having done battle with them during the final days of the Meiji Restoration. One man in particular--Saitô Hajime, captain of the third unit--lingers in Kenshin's mind. Now an officer of the law and known as Fujita Gorô, Saitô arrives on the steps of the Kamiya Dojo, challenging Kenshin to a duel that will force a reawakening of Kenshin's own past. But the confrontation with Saitô is just the beginning of something much larger, something that will involve the future of the new Japan... ",
#              release_date: "October 4, 1995",
#              img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478548454/manga%20covers/kenshin_7.jpg",
#              genre: ["sword-fighting"])
#
# Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.3",
#              author:"Nobuhiro Watsuki",
#              synopsis:"Spider's Web...like ordinary opium, but better processed. Half the cost to produce, but twice the profits! To the people of Aizu, Takani Megumi was a daughter in a famous family of doctors, in which everyone--women and children alike--studied medicine. But to grasping industrialist Takeda Kanryû, she is the hen who lays the golden egg--the only one who knows the Spider\'s Web formula! To stay with Kanryû is to send even more to their deaths. But to stay with Kenshin and the others is to invite theirs...",
#              release_date: "February 2, 1995",
#              img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478548454/manga%20covers/kenshin3.jpg",
#              genre: ["sword-fighting"])
#
# Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.1",
#              author:"Nobuhiro Watsuki",
#              synopsis:"During the Meiji 11th (1878), a peaceful wanderer called Himura Kenshin, formerly known as the Hitokiri Battōsai, arrives in Tokyo, where he meets Kamiya Kaoru whose swordsmanship school is in danger as a murderer from the city claims to be from that school. After investigating, Kenshin defeats the murderer using his sakabatō sword, which has a reversed blade, making it almost impossible to kill someone. When Kenshin decides to leave Tokyo, Kaoru offers him a place to live in her dojo. During his stay in the dojo, Kenshin rescues an orphan called Myōjin Yahiko from a group of yakuza and takes him to live and train in the dojo. A few days later, a fight merchant named Sagara Sanosuke is hired to attack Kenshin. The volume ends with a one-shot by Watsuki called Rurouni Meiji Swordsman Romantic Story.",
#              release_date: "September 2, 1994",
#              img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478411691/Extras/kenshin_vol1.jpg",
#              genre: ["sword-fighting"])
#
# Manga.create(title:"Ruroni Kenshin (るろうに剣心) Vol.6",
#              author:"Nobuhiro Watsuki",
#              synopsis:"Kenshin's battle with Raijûta to decide the fate of Meiji Era swordsmanship is coming to a head. One fact is quickly becoming apparent: Raijûta will stop at nothing to ensure the supremacy of his own school of sword-fighting! Reunited with a member of the former Sekihô Army--that doomed civilian unit--Sanosuke runs into trouble of his own. Old alliances are challenged when a plan to topple the current government by any means necessary is shared...and as his friend puts it, Sano's either in, or in the way. Plus a bonus installment containing the first story Nobuhiro Watsuki ever published!",
#              release_date: "August 4, 1995",
#              img_url: "http://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478548454/manga%20covers/kenshin_6.jpg",
#              genre: ["sword-fighting"])
#
# Manga.create(title:"Cowboy Bebop, Vol. 1",
#              author:"Yutaka Nanten",
#              synopsis:"From one of the most popular anime series of all time comes a manga to match. Spinning off from the anime story line seen on Cartoon Network, the manga series hooks readers with the same combination of Sci Fi action, crazy comedy, and a twist of old-school hipster cool. This black-and-white miniseries, released in the 100% Authentic Manga format, is perfect for fans of the Cowboy Bebop anime.",
#              release_date: "May 1, 1998",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478900237/manga%20covers/bebop1.jpg",
#              genre: ["Neo noir", "Space Western"])
#
# Manga.create(title:"Cowboy Bebop: Shooting Star, Volume 2",
#              author:"Cain Kuga, Hajime Yatate",
#              synopsis:"Cowboy Bebop: Shooting Star is an alternate telling of the famous television show that contains all the same intrigue, adventure, action and gritty noir ambience of its small screen counterpart. A fantastic yarn in its own right, this two-volume series is a perfect addition to any Cowboy Bebop collection.",
#              release_date: "October 1, 1998",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478900237/manga%20covers/bebop2.jpg",
#              genre: ["Neo noir", "Space Western"])
#
# Manga.create(title:"Cowboy Bebop, Vol. 2",
#              author:"Yutaka Nanten",
#              synopsis:"The hippest bounty hunters in the galaxy are back! Spike Siegel Jet Black and Faye Valentine are on the hunt for new targets inspired by the hit anime series. Cowboy Bebop blends science fiction spaghetti westerns film noir and jazz music into a new genre that s all about style.",
#              release_date: "November 1, 1999",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478900237/manga%20covers/bebop3.jpg",
#              genre: ["Neo noir", "Space Western"])
#
# Manga.create(title:"Azumanga Daioh Vol. 3",
#              author:"Kiyohiko Azuma",
#              synopsis:"The girls enter their senior year and Miss Yukari speaks ill of Tomo in the third volume of Azumanga Daioh! This volume marks the return of the sports meet, where Sakaki, Osaka, Kagura and the others compete in categories like the three-legged race and beanbag tossing, while Chiyo-chan races to find an idiot for the scavenger hunt... The manga also includes a First Dream of the New Year special, where Sakaki meets Chiyo-chan's tomato-hating father and his penguin housekeeper... Will Osaka succeed in her resolution to get faster? Will Kaorin ever let go of Sakaki? Find out in Azumanga Daioh volume 3!",
#              release_date: "February 24, 2004",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478901217/manga%20covers/azu3.jpg",
#              genre: ["Comedy", "Slice-of-Life"])
#
# Manga.create(title:"Azumanga Daioh Vol. 4",
#              author:"Kiyohiko Azuma",
#              synopsis:"The gang of high schoolers takes a trip to sunny Okinawa, where Osaka plays with sea cucumbers. Yomi announces her intention to join InterPol, and Sakaki gets a cat that will let her pet it. When the gang gets together for a camping trip, Mr. Kimura makes his big confession to one of the students. This volume is a part of the popular series.",
#              release_date: "April 20, 2004",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478901216/manga%20covers/azu4.jpg",
#              genre: ["Comedy", "Slice-of-Life"])
#
# Manga.create(title:"Azumanga Daioh Vol. 2",
#              author:"Kiyohiko Azuma",
#              synopsis:"It's not manga, it's Azumanga (and it's smart, fun and totally addictive)! Created by the iconoclastic Kiyohiko Azuma (hence the name), Azumanga Daioh is strongly character driven, telling the story of a group of high-school girls and their hilarious daily tribulations.",
#              release_date: "November 18, 2003",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478901217/manga%20covers/azu2.jpg",
#              genre: ["Comedy", "Slice-of-Life"])
#
# Manga.create(title:"Azumanga Daioh Vol. 1",
#              author:"Kiyohiko Azuma",
#              synopsis:"It's tough to tell the difference between teacher and students in Azuma's comedy. Teacher Yukari Tanizaki is oblivious, immature, emotional and one of the people shaping young minds. Her students face difficulties in school that most never imagined. For example, as one pupil starts to ask a question, Miss Yukari cuts him off, stating she won't talk about her bra size. Another group of students are ready for their lessons, but instead of learning about social studies or science, they learn how Miss Yukari spent her weekend. Maybe that's not so bad, considering Miss Yukari's not the brightest bulb in the bunch and has her students correcting her on many technical points. Her students aren't sure how to react, but their bewilderment is half the charm of this manga. Like the 1980s TV series Head of the Class, Azu has an eclectic mix of pupils ranging from child geniuses to sports enthusiasts to tough girls; each possessing much more than meets the eye. The precocious child genius may be great at academic subjects, but she still draws like a little girl and has the emotions of a kid. The unemotional tough teen melts for tiny animals and longs to have a pet of her own, even if all of the creatures she comes in contact with seem to hate her. The art is simple and minimalistic, but adequately conveys the thought and emotion behind each strip. Azuma's cast has depth, dimension and character, and their story heartily entertains.",
#              release_date: "September 16, 2003",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478901217/manga%20covers/azu1.jpg",
#              genre: ["Comedy", "Slice-of-Life"])
#
# Manga.create(title:"Trigun: Deep Space Planet Future Gun Action!! Vol. 1",
#              author:"Yasuhiro Nightow",
#              synopsis:" Action, comedy, science fiction, and western gunslinger action congregate within these pages. Created by Yasuhiro Nightow, this compound of genre-bending ingredients has turned the Trigun animation into a wildly popular series, and finally, the long-awaited manga comes to America. Somehow the past has placed a sixty billion double dollar bounty on Vash's head, and the gunslinging pacifist can't seem to get away from money grubbing, itchy-trigger-finger citizenry. Find out why Vash is worth so much money dead! Feel the clumsy worry of the unfortunate citizens of the pulverous planet! ",
#              release_date: "July 1, 1998",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478901217/manga%20covers/tri_1.jpg",
#              genre: ["Weird", "Space Western", "Action", "Adventure", "Comedy-Drama"])
#
# Manga.create(title:"Trigun Maximum Volume 3: His Life As A ...",
#              author:"Yasuhiro Nightow",
#              synopsis:"Trigun Maximum Volume 3 is intensity embodied — a front to back fight! Vash the Stampede and the mysterious Wolfwood versus the terribly resilient Gray the Ninelives and one of Yasuhiro Nightow's most curious villains, the completely frightening puppet master, Leonoff. The Gung-Ho Guns get harder and harder to beat as the philosophical tension between our two heroes grows daily.",
#              release_date: "February 1, 1999",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478901216/manga%20covers/tri3.jpg",
#              genre: ["Weird", "Space Western", "Action", "Adventure", "Comedy-Drama"])
#
# Manga.create(title:"Trigun: Deep Space Planet Future Gun Action!! Vol. 2",
#              author:"Yasuhiro Nightow",
#              synopsis:"There's a mysterious past buried in the mind of the affable, yet somehow incredibly dangerous Vash the Stampede, and everyone on this desert planet seems to know about it. Not only that, they've been trying to hunt him down for the sixty million double-dollar bounty on his head. Well, enter two insurance adjuster ladies, claiming that the man is a localized disaster, and voila! No more bounty. But that doesn't seem to end Vash's troubles, or his trail of destruction.",
#              release_date: "January 22, 2000",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478901216/manga%20covers/tri2.jpg",
#              genre: ["Weird", "Space Western", "Action", "Adventure", "Comedy-Drama"])
#
# Manga.create(title:"Full Metal Panic! Volume 2",
#              author:"Shouji Gatou,",
#              synopsis:"The students of Jindai High are bound of Okinawa on a field trip, but a hijacking changes their plans! Among the hijackers is Gauron, a mortal enemy Sosuke thought he'd killed years ago. But Gauron is after only one of the students on board...Kaname! The information she carries could be the key to maintaining the balance of power. When they single her out, it's up to Sosuke to save the day again, and a crushing mecha battle for Kaname's freedom ensues. ",
#              release_date: "March 18, 1999",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478901218/manga%20covers/fullmetal1.jpg",
#              genre: ["Action", "Comedy-Drama", "Romance", "Mecha", "Military" "Sci-Fi"])
#
# Manga.create(title:"R.O.D. Read or Die 3",
#              author:"Hideyuki Kurata, Hideyuki Kurata, Shutaro Yamada",
#              synopsis:"Yomiko Readman's love for literature goes far beyond any run-of-the-mill bookworm's! In fact, she has a supernatural ability to manipulate paper in the most amazing ways. From turning a tiny scrap into a lethal throwing dagger to making a single sheet hard enough to block bullets, she's only limited by her imagination. She uses her phenomenal power to seek out legendary books containing secret information that in the wrong hands could be dangerous. Backed by a Special Operations Division in England, Yomiko has her hands full battling evildoers, saving the world, and trying to find time to curl up with a good book.",
#              release_date: "January 2, 2002",
#              img_url:"https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1478901216/manga%20covers/rod1.jpg",
#              genre: ["Spy", "Supernatural", "Sci-Fi"])
#
#
#
# Manga.create(title: "One Punch Vol. 1",
#              author: "One",
#              synopsis: "A manga series that packs quite the punch! Nothing about Saitama passes the eyeball test when it comes to superheroes, from his lifeless expression to his bald head to his unimpressive physique. However, this average-looking guy has a not-so-average problem—he just can’t seem to find an opponent strong enough to take on! Every time a promising villain appears, he beats the snot out of ’em with one punch! Can Saitama finally find an opponent who can go toe-to-toe with him and give his life some meaning? Or is he doomed to a life of superpowered boredom?",
#              release_date: "December 12, 2012",
#              img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167721/onepunch1_mkmmb3.jpg",
#              genre: ["Action", "Parody", "Superhero"])
#
# Manga.create(title: "One Punch Man: The Secret To His Strength Vol. 2",
#             author: "One",
#             synopsis: "Saitama’s easily taken out a number of monsters, including a crabby creature, a malicious mosquito girl and a muscly meathead. But his humdrum life takes a drastic turn when he meets Genos—a cyborg who wants to uncover the secret behind his strength!",
#             release_date: "December 12, 2012",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167721/onepunch2_lcnzsy.jpg",
#             genre: ["Action", "Parody", "Superhero"])
#
# Manga.create(title: "One Punch Man: The Rumor Vol. 3",
#             author: "One",
#             synopsis: "For three years, Saitama has defeated countless monsters, but no one knows about him… That’s because he isn’t in the Hero Association’s registry! Together with Genos, Saitama decides to take the Hero Association’s test! But can they pass?!",
#             release_date: "April 4, 2013",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167721/onepunch3_v8w7lx.jpg",
#             genre: ["Action", "Parody", "Superhero"])
#
# Manga.create(title: "One Punch Man: Giant Meteor Vol. 4",
#             author: "One",
#             synopsis: "Saitama is now a certified hero! And with that title comes great responsibility—he’s required to perform one heroic deed per week. While Saitama makes the rounds to meet his quota, an incoming threat from outer space is screeching toward Earth...",
#             release_date: "August 2, 2013",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483168076/onepunch4_wkmgjm.jpg",
#             genre: ["Action", "Parody", "Superhero"])
#
# Manga.create(title: "One Punch Man: Shining in Tatters Vol. 5",
#             author: "One",
#             synopsis: "To stop a Demon-level crisis, Saitama and company head toward the action. However, even Class-S heroes prove to be no match for the Deep Sea King! In order to protect the good citizens, our heroes will need to summon all of their courage and confront this threat!",
#             release_date: "December 4, 2013",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167721/onepunch5_bskv9p.jpg",
#             genre: ["Action", "Parody", "Superhero"])
#
# Manga.create(title: "One Punch Man: The Big Prediction Vol. 6",
#             author: "One",
#             synopsis: "An emergency summons gathers Class S heroes at headquarters…and Saitama tags along. There, they learn that the great seer Shibabawa left the following prophecy: “The Earth is in danger!” What in the world is going to happen?!",
#             release_date: "May 2, 2014",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167944/onepunch6_jgvrhl.jpg",
#             genre: ["Action", "Parody", "Superhero"])
#
# Manga.create(title: "One Punch Man: The Fight Vol. 7",
#             author: "One",
#             synopsis: "When aliens invade Earth, a group of Class-S heroes finally finds a way to fight back and go on the offensive. Inside the enemy mother ship, Saitama fights Boros. Faced with the alien’s frightful power, he decides to get serious! What is the Earth’s fate?!",
#             release_date: "December 4, 2014",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167720/onepunch7_e80ljs.jpg",
#             genre: ["Action", "Parody", "Superhero"])
#
# Manga.create(title: "One Punch Man: That Man Vol. 8",
#             author: "One",
#             synopsis: "Class-S hero King is known as the strongest man on earth. Even monsters fear him. But when a mysterious organization sends an assassin after him, the shocking truth about King is revealed!",
#             release_date: "April, 2015",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167721/onepunch8_n9bhlv.jpg",
#             genre: ["Action", "Parody", "Superhero"])
#
# Manga.create(title: "One Punch Man: Don't Dis Heroes Vol. 9",
#             author: "One",
#             synopsis: "Garo, a man who admires monsters, attacks the Hero Association! But after pulverizing the heroes there, he just leaves. What the heck does this guy want?! Meanwhile, Class-B, Rank-1 Miss Blizzard visits Saitama at his apartment. Since he’s just a low-ranking hero, she thinks she can make him one of her subordinates, but as always, Saitama has other plans!",
#             release_date: "August 9, 2015",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167720/onepunch9_iqwtow.jpg",
#             genre: ["Action", "Parody", "Superhero"])
#
# Manga.create(title: "One Punch Man: Pumped Up Vol. 10",
#             author: "One",
#             synopsis: "Hero hunter Gato intensifies his onslaught, so of course Saitama decides now is the perfect time to join a combat tournament. Meanwhile, Class-S hero Metal Bat takes an assignment guarding a Hero Association executive and his son, and before long trouble appears!",
#             release_date: "December 4, 2015",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167721/onepunch10_ry24vh.jpg",
#             genre: ["Action", "Parody", "Superhero"])
#
# Manga.create(title: "Attack on Titan Vol. 1",
#             author: "Hajime Isayama",
#             synopsis: "In this post-apocalytpic sci-fi story, humanity has been devastated by the bizarre, giant humanoids known as the Titans. Little is known about where they came from or why they are bent on consuming mankind. Seemingly unintelligent, they have roamed the world for years, killing everyone they see. For the past century, what's left of man has hidden in a giant, three-walled city. People believe their 100-meter-high walls will protect them from the Titans, but the sudden appearance of an immense Titan is about to change everything.",
#             release_date: "March 17, 2010",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167720/attack1_b13gbw.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 2",
#             author: "Hajime Isayama",
#             synopsis: "The Colossal Titan has breached humanity’s first line of defense, Wall Maria. Mikasa, the 104th Training Corps’ ace and Eren’s best friend, may be the only one capable of defeating them, but beneath her calm exterior lurks a dark past. When all looks lost, a new Titan appears and begins to slaughter its fellow Titans. Could this new monster be a blessing in disguise, or is the truth something much more sinister?",
#             release_date: "July 16, 2010",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167720/attack2_dg3fd2.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 3",
#             author: "Hajime Isayama",
#             synopsis: "The last thing Eren remembers before blacking out, a Titan had bitten off his arm and leg and was getting ready to eat him alive. Much to his surprise he wakes up without a scratch on him, with a crowd of angry soldiers screaming for his blood. What strange new power has he awakened, and what will happen when the boy devoted to destroying the Titans becomes one himself? Includes special extras after the story!",
#             release_date: "December 9, 2010",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167720/attack3_a5wigu.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 4",
#             author: "Hajime Isayama",
#             synopsis: " The Survey Corps develop a risky gambit - have Eren in Titan form attempt to repair Wall Rose, reclaiming human territory from the monsters for the first time in a century. But Titan-Eren's self-control is far from perfect, and when he goes on a rampage, not even Armin can stop him! With the survival of humanity on his massive shoulders, will Eren be able to return to his senses, or will he lose himself forever?",
#             release_date: "April 8, 2011",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167720/attack4_ezzmii.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 5",
#             author: "Hajime Isayama",
#             synopsis: " Thanks to Eren, humanity has taken the town of Trost back from the Titans. Exhausted, Eren falls into a coma for three days - and wakes in shackles, staring at Erwin Smith, leader of the Survey Corps. Certain that Eren's father's research holds the key to the mystery of the Titans' rise, Smith wants an expedition to retrieve it from the house where Eren grew up. But that's deep in Titan territory, and to get there Eren will need to master a power he still doesn't fully understand...",
#             release_date: "August 9, 2011",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167720/attack5_eyvyuk.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 6",
#             author: "Hajime Isayama",
#             synopsis: "On the way to Eren's home, deep in Titan territory, the Survey Corps ranks are broken by a charge led by a female Titan! But this Abnormal is different - she kills not to eat but to protect herself, and she seems to be looking for someone. Armin comes to a shocking conclusion!",
#             release_date: "December 9, 2011",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167720/attack6_kofxex.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 7",
#             author: "Hajime Isayama",
#             synopsis: "The Survey Corps sets a cunning trap to capture the mysterious Abnormal Titan that broke through their ranks. As Arwin tries to determine the grotesque creature's identity and purpose, scouts report Titans closing in on all sides! But they don't seem to be after the humans - instead they're targeting the Titan!",
#             release_date: "April 9, 2012",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167720/attack7_m0tkhn.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 8",
#             author: "Hajime Isayama",
#             synopsis: "The expedition outside the wall was Eren's chance to prove himself. But it failed, and the female Titan is free once more! With his squad dead, Eren faces a royal summons. Will Mikasa and Armin have to betray their king to save their friend? And can they discover the female Titan's identity before she kills again? ? ?",
#             release_date: "August 9, 2012",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167720/attack8_jrxfjz.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 9",
#             author: "Hajime Isayama",
#             synopsis: "Eren is still resting from his brutal fight with the female Titan, when word reaches the interior that the impossible has happened: Wall Rose itself has been breached, and Titans are pouring through the gap! The emergency casts new urgency over Armin and Hange's questions about how the walls were built, and what humanity can do to restore them...",
#             release_date: "December 7, 2012",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167719/attack9_maoghk.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 10",
#             author: "Hajime Isayama",
#             synopsis: "With no combat gear and Wall Rose breached, the 104th scrambles to evacuate the villages in the Titans' path. On their way to the safety of Wall Sheena, they decide to spend the night in Utgard Castle. But their sanctuary becomes a slaughterhouse when they discover that, for some reason, these Titans attack at night!",
#             release_date: "April 9, 2013",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167719/attack10_zbw0xq.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 11",
#             author: "Hajime Isayama",
#             synopsis: "Thanks to Eren's timely arrival, the 104th has managed to turn the tide at Wall Rose. But this momentary victory forces two more traitors into a corner - and the identity of the Titans who have been destroying the walls is revealed! What can Eren do against the two most dangerous monsters humanity has ever faced? And who else might be an enemy in disguise?",
#             release_date: "August 9, 2013",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167719/attack11_bwigkx.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 12",
#             author: "Hajime Isayama",
#             synopsis: "Erwin and the Survey Corps desperately mount a rescue operation to take Eren back from the Colossus Titan and Armored Titan. But without the numbers to form up properly outside the walls, how can the humans catch up before they're all slaughtered? Just whose side is Ymir on? And will Eren ever see his friends again?",
#             release_date: "December 9, 2013",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167719/attack12_pokfjs.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 13",
#             author: "Hajime Isayama",
#             synopsis: "At great cost to the Garrison and the Survey Corps, Commander Erwin has managed to recover Eren from the Titans who tried to carry him off. But during the battle, Eren manifested yet another power he doesn't understand. As Eren and Krista find new enemies, the Survey Corps faces threats from both inside and outside the walls. And what will happen to Ymir, now that she has decided to make herself the Titans' prize?",
#             release_date: "April 9, 2014",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167719/attack13_j6ytwp.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 14",
#             author: "Hajime Isayama",
#             synopsis: "Commander Erwin has finally come to a decision: Putting their own wealth and position ahead of the survival of humanity, the royal government is no longer fit to lead. To execute their leader's most audacious plan yet, Eren and Krista will have to put themselves in peril yet again, and Armin, Mikasa, and the rest of the Survey Corps will have to turn from humanity's guardians into traitors. If they fail this time, they'll face not a Titan's gaping mouth, but the gallows...",
#             release_date: "August 8, 2014",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167719/attack14_ge2dqi.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 15",
#             author: "Hajime Isayama",
#             synopsis: "Hange's interrogation of a Military Police squad has revealed that Krista (a.k.a. Historia Reiss) is the true heir to the throne. The Corps quickly moves to enthrone her as queen, but a homicidal MP leads a squad that abducts Eren and Krista and throws the Corps into disarray. With Erwin arrested and the Survey Corps on the edge of dissolution, are Levi and Hange finally out of options?",
#             release_date: "December 9, 2014",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167719/attack15_q4jyxl.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 16",
#             author: "Hajime Isayama",
#             synopsis: "Captured by Rod Reiss, the rightful king, Krista and Eren finally have their memories back. What exactly happened to Eren, and what was the crime his father committed? Meanwhile, the Survey Corps desperately hunts for Eren, while at the same time seeking to legitimize their military coup. As the situation inside the walls comes to a head, the mysteries of the world of the Titans seem on the cusp of being solved at last!",
#             release_date: "April 9, 2015",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167719/attack16_gzpw7j.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 17",
#             author: "Hajime Isayama",
#             synopsis: "Thanks to Rod Reiss, Eren finally knows the terrible truth behind how he acquired his Titan powers, and the depth of his father's crimes. The king orders his daughter Historia to kill Eren and restore the power of the Titans to its rightful place, but she chooses her own selfish path: survival. As the cavern crumbles around the Survey Corps, Eren must make another last-minute decision, with the lives of all his friends in the balance.",
#             release_date: "August 7, 2015",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167719/attack17_zh3zlu.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
#
# Manga.create(title: "Attack on Titan Vol. 18",
#             author: "Hajime Isayama",
#             synopsis: "The Survey Corps has overthrown the Royal Government and swept away the tyranny of the king. The next step: Move to retake Wall Maria, with the helpf of a newly-discovered metallic ore and Eren’s miraculous Titan hardening powers. But as humanity pulls together, its enemies also unite beyond the Walls… now that the Beast Titan has joined Reiner and Bertolt, what havoc will they wreak?",
#             release_date: "December 9, 2015",
#             img_url: "https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/v1483167719/attack18_rjbrip.jpg",
#             genre: ["Dark fantasy", "Post-Apocalpytic"])
