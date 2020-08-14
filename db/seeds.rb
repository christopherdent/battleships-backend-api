require 'pry'
require 'securerandom'
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

User.destroy_all
Ship.destroy_all
Fleet.destroy_all
Fleet.delete_all
##Ship.new(name, class, country, image)
User.create(name: "Computer")
Fleet.create
Fleet.create

ships_array = [
    {
      "name": "USS Enterprise",
      "kind": "Carrier",
      "country": "USA",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/USS_Enterprise_%28CV-6%29_in_Puget_Sound%2C_September_1945.jpg/450px-USS_Enterprise_%28CV-6%29_in_Puget_Sound%2C_September_1945.jpg"

    },
    {
      "name": "USS Indiana",
      "kind": "Battleship",
      "country": "USA",
      "image": "https://i.pinimg.com/originals/78/f9/6b/78f96b3d659d02b865ed6dc588e03e52.jpg"

    },
    {
      "name": "USS San Diego",
      "kind": "Cruiser",
      "country": "USA",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/USS_San_Diego_%28CL-53%29_underway_on_8_March_1944_%28NH_97825%29.jpg/450px-USS_San_Diego_%28CL-53%29_underway_on_8_March_1944_%28NH_97825%29.jpg"

    },
    {
      "name": "USS Taylor",
      "kind": "Destroyer",
      "country": "USA",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/USS_Taylor_%28DD-468%29_in_San_Francisco_Bay%2C_California_%28USA%29%2C_on_26_January_1944_%2880-G-1038542%29.jpg/450px-USS_Taylor_%28DD-468%29_in_San_Francisco_Bay%2C_California_%28USA%29%2C_on_26_January_1944_%2880-G-1038542%29.jpg"

    },
    {
      "name": "USS Narwhal",
      "kind": "Submarine",
      "country": "USA",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/USSNarwhalSS167.jpg/450px-USSNarwhalSS167.jpg"

    },
    {
      "name": "HMS Eagle",
      "kind": "Carrier",
      "country": "UK",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/HMS_Eagle_underway_1930s.jpeg/600px-HMS_Eagle_underway_1930s.jpeg"

    },
    {
      "name": "HMS King George V",
      "kind": "Battleship",
      "country": "UK",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/King_George_V_class_battleship_1945.jpg/450px-King_George_V_class_battleship_1945.jpg"

    },
    {
      "name": "HMS Ajax",
      "kind": "Cruiser",
      "country": "UK",
      "image": "https://upload.wikimedia.org/wikipedia/commons/8/86/HMS_Ajax.jpg"

    },
    {
      "name": "HMS Basilisk",
      "kind": "Destroyer",
      "country": "UK",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/HMS_Basilisk_%28H11%29.jpg/450px-HMS_Basilisk_%28H11%29.jpg"

    },
      {
      "name": "HMS Seahorse",
      "kind": "Submarine",
      "country": "UK",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/HMS_Seahorse.jpg/450px-HMS_Seahorse.jpg"

    },
      {
      "name": "Ōyodo",
      "kind": "Cruiser",
      "country": "Empire of Japan",
      "image": "https://upload.wikimedia.org/wikipedia/commons/e/e0/Japanese_cruiser_Oyodo_in_1944.jpg"

  },
      {
      "name": "Yamato",
      "kind": "Battleship",
      "country": "Empire of Japan",
      "image": "https://images-na.ssl-images-amazon.com/images/I/41-gdnx36%2BL._AC_.jpg"

  },
      {
      "name": "Shōkaku",
      "kind": "Carrier",
      "country": "Empire of Japan",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Japanese_aircraft_carrier_shokaku_1941.jpg/450px-Japanese_aircraft_carrier_shokaku_1941.jpg"

  },
      {
      "name": "Akizuki",
      "kind": "Destroyer",
      "country": "Empire of Japan",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Akizuki.jpg/450px-Akizuki.jpg"

  },
      {
  "name": "I-184",
  "kind": "Submarine",
  "country": "Empire of Japan",
  "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/I-176.jpg/450px-I-176.jpg"

  },
      {
  "name": "Bismarck",
  "kind": "Battleship",
  "country": "Germany",
  "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTsgbe4bRKzj_MIjjAsRFTvF1IhX_RrXcd-YA&usqp=CAU"

  },
      {
  "name": "Admiral Graf Spee",
  "kind": "Cruiser",
  "country": "Germany",
  "image": "https://upload.wikimedia.org/wikipedia/commons/2/28/Graf_Spee_in_Montevideo.png"

  },
      {
  "name": "U-889",
  "kind": "Submarine",
  "country": "Germany",
  "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Unterseeboot889_at_Shelburne_Canada_a173333-v6.jpg/450px-Unterseeboot889_at_Shelburne_Canada_a173333-v6.jpg"

  },
  {
  "name": "Graf Zeppelin",
  "kind": "Carrier",
  "country": "Germany",
  "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Graf-Zeppelin-2.jpg/450px-Graf-Zeppelin-2.jpg"

},
{
"name": "Z46",
"kind": "Destroyer",
"country": "Germany",
"image": "https://upload.wikimedia.org/wikipedia/commons/f/fb/Z46_Class_Zerstoerer_1936C.JPG"

},
{
"name": "Roma",
"kind": "Battleship",
"country": "Italy",
"image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Roma56.jpg/1024px-Roma56.jpg"

},
{
"name": "Aquila",
"kind": "Carrier",
"country": "Italy",
"image": "https://i.pinimg.com/originals/b8/4d/27/b84d27a466602091d22d4113dbb37130.png"

},
{
"name": "Zara",
"kind": "Carrier",
"country": "Italy",
"image": "https://upload.wikimedia.org/wikipedia/en/thumb/4/42/Italian_cruiser_Zara_NH_111457.jpg/450px-Italian_cruiser_Zara_NH_111457.jpg"

},
{
"name": "Quintino Sella",
"kind": "Destroyer",
"country": "Italy",
"image": "https://i.redd.it/uairmmvcrb331.jpg"

},
{
"name": "Perla",
"kind": "Submarine",
"country": "Italy",
"image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Smg_perla.jpg/450px-Smg_perla.jpg"

},
{
"name": "Lorraine",
"kind": "Battleship",
"country": "Free French",
"image": "https://upload.wikimedia.org/wikipedia/commons/f/f5/Provence-1.jpg"

},
{
"name": "Béarn",
"kind": "Carrier",
"country": "Free French",
"image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/CV_Bearn_NAN-5-63.jpg/600px-CV_Bearn_NAN-5-63.jpg"
},
{
"name": "Mistral",
"kind": "Destroyer",
"country": "Free French",
"image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Ouragan-1.jpg/600px-Ouragan-1.jpg"

},

{
"name": "Bougainville",
"kind": "Cruiser",
"country": "Free French",
"image": "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Rigault_de_Genouilly_SLV_Green_1938.jpg/600px-Rigault_de_Genouilly_SLV_Green_1938.jpg"

},

{
"name": "Minerve",
"kind": "Submarine",
"country": "Free French",
"image": " https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/%D0%A1%D1%83%D0%B1%D0%BC%D0%B0%D1%80%D0%B8%D0%BD%D0%B0_%D0%9C%D0%B8%D0%BD%D0%B5%D1%80%D0%B2%D0%B0.jpg/600px-%D0%A1%D1%83%D0%B1%D0%BC%D0%B0%D1%80%D0%B8%D0%BD%D0%B0_%D0%9C%D0%B8%D0%BD%D0%B5%D1%80%D0%B2%D0%B0.jpg"

},
{
"name": "Arkhangelsk",
"kind": "Battleship",
"country": "USSR",
"image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Arkhangelsk1944.jpg/440px-Arkhangelsk1944.jpg"

},

{
"name": "Murmansk",
"kind": "Cruiser",
"country": "USSR",
"image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Soviet_cruiser_Murmansk_off_Lewes%2C_Delaware_%28USA%29%2C_on_8_March_1949_%28NH_71451%29.jpg/440px-Soviet_cruiser_Murmansk_off_Lewes%2C_Delaware_%28USA%29%2C_on_8_March_1949_%28NH_71451%29.jpg"

},

{
"name": "Razummy",
"kind": "Destroyer",
"country": "USSR",
"image": "https://upload.wikimedia.org/wikipedia/commons/9/9c/Aerial_view_of_Razumny_A_22471.jpg"

},

{
"name": "S-56",
"kind": "Submarine",
"country": "USSR",
"image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/053_-_Wladiwostok_2015_%2824130179580%29.jpg/600px-053_-_Wladiwostok_2015_%2824130179580%29.jpg"

}
]


ships_array.each do |ship|
  Ship.create(name: "#{ship[:name]}", kind: "#{ship[:kind]}", country: "#{ship[:country]}", image: "#{ship[:image]}")
end
