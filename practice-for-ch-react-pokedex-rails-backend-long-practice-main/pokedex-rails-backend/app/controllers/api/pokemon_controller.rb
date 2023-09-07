class Api::PokemonController < ApplicationController

    def types
        render json: Pokemon::TYPES
    end

    def show
        @pokemon = Pokemon.find_by(id: params[:id]) 

        if @pokemon
            render json: @pokemon 
        else
            render json: "Pokemon not found", status: :not_found 
        end
    end


    def index
        @pokemons = Pokemon.all 
        render json: @pokemons 
    end



    private 

    def pokemon_params 

        params.require(:pokemon).permit(:number, :attack, :defense, :image_url, :name, :type, :captured)
    end

end
