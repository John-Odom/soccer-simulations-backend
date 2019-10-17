class LikesController < ApplicationController
    def index
        likes=Like.all
        render json: likes, include: [:user]
    end

    def create
        lineup_id=params["lineup"]["id"]
        user_id=params["user"]["id"]
        like = Like.create(user_id:user_id, lineup_id:lineup_id)
        render json: like
    end

end
