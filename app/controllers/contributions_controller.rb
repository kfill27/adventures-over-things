class ContributionsController < ApplicationController
  before_action :set_contribution, only: [:show, :edit, :update, :destroy]
  rescue_from Stripe::CardError, with: :catch_exception

  def index
    @contributions = Contribution.all
  end

  def new
  end

  def create
    @contribution = Contribution.new(contribution_params)
    if @contribution.save
      StripeChargesServices.new(contribution_params, current_user).call
      puts "************************"
      puts params
      redirect_to adventure_contributions_path(contribution_params[:adventure][:family_member_id])
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contribution
      @contribution = Contribution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contribution_params
      params.permit(:amount, :contributor, :adventure_id, :stripeEmail, :stripeToken, :utf8, :authenticity_token, :stripeTokenType)
    end

    def catch_exception(exception)
      flash[:error] = exception.message
    end
end
