class ReviewsController < ApplicationController
      before_action :authorize

      def index
        user = check_user
        render json: Review.all, status: :created
      end

      def create_review
        user=check_user
        hub = Hub.find_by(id: params[:id])
        #review = hub.reviews.create(review_params)
        review=Review.create(hub_id:hub.id,user_id:user.id,comment:params[:comment])
        if review.valid?
         render json: review, status: :created
        else
            render json: {errors: review.errors.full_messages} , status: :unprocessable_entity
        end
      end

    def destroy
      review = Review.find_by(id: params[:id])
        if review
          review.delete
          head :no_content
        else
          render json: {errors: ["Not authorized"]}, status: :unauthorized
        end
    end

    private
    def check_user
      User.find_by(id: session[:user_id])
    end

    def authorize
        return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
    end

    def review_params
        params.permit(hub_id:hub.id,user_id:user.id,comment:params[:comment])
        #params.permit(:hub_id, :user_id, :comment)
    end

end
