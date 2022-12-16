class UsersController < ApplicationController
    #signup
       def create
          user = User.create(user_params)
          if user.valid?
              session[:user_id] = user.id
              render json: user, status: :created
          else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
          end
        end

        #display all user
        def index
            user = User.find_by(id: session[:user_id]);
            if user
                render json: User.all , status: :ok
            else
                render json: { error: "Not authorized" }, status: :unauthorized
            end
        end

       #me
       def show
            user = User.find_by(id: session[:user_id]);
            if user
                render json: user, status: :created
            else
                render json: { error: "Not authorized" }, status: :unauthorized
            end
        end

        private
        def authorize
            return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
        end

        def user_params
            params.permit(:name, :email, :password)
        end

end
