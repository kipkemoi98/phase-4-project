class HubsController < ApplicationController
    before_action :authorize

    #display hubs only when user is login
    def index
        user = check_user
        render json: Hub.all, status: :created
    end

    def show
      user = check_user
      hub = Hub.find_by(id: params[:id])
      render json: hub, status: :ok
    end
    #only login users all allow to add new hub
     def create
        hub = Hub.create(hub_params);
        if hub.valid?
            render json: hub, status: :created
        else
            render json: {errors: hub.errors.full_messages} , status: :unprocessable_entity
        end
    end

    private
    def authorize
        return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
    end

    def check_user
      User.find_by(id: session[:user_id])
    end

    def hub_params
        params.permit(:name, :image, :location,:website_url,:description,:founder)
    end
end

