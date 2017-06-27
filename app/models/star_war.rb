class StarWar < ApplicationRecord
  def self.generate
    poke_random = rand(1...90)
    rand_height_width = (poke_random + 10) * 4
    response = HTTParty.get("http://swapi.co/api/people/#{poke_random}")
    json = JSON.parse(response.body)
    puts json
    {
      name: json['name'],
      weight: json['mass'],
      gender: json['gender'],
      image: "http://www.placecage.com/c/#{rand_height_width}/#{rand_height_width}",
      height: json['height']
    }
  end
end
