class PokemonController < ApplicationController
    def index
        
        response = HTTParty.get('http://pokeapi.co/api/v2/pokemon/719')
        puts response
        @pokemon = Pokemon.all
    end
    
end
