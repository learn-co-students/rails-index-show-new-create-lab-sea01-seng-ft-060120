class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
    end

    def create
        # byebug
        @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        redirect_to @coupon
    end

end

#class code
# <%= @tainer.name
# <% @trainer.pokemons.each do |pokemon|
#     <%= pokemon.name
# <% end

# post '/pokemons/new'
# PokemonController
# New
