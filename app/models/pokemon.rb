class Pokemon < ApplicationRecord
  def self.generate
    poke_random = rand(1...719)
    response = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{poke_random}")
    json = JSON.parse(response.body)
    {
      name: json['name'].capitalize,
      weight: json['weight'],
      image: json['sprites']['front_default'],
      height: json['height']
    }
  end
end
