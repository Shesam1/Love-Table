class InterestsController < ApplicationController
  def create
    @interest = Interest.new(interest_params)
    @interest.profile_id = params[:post_id]

    @interest.save

    redirect_to profile_path(@interest.post)
  end

  def destroy
    @interest.destroy
    redirect_to root_path

    respond_to do |format|
      format.html { redirect_to interests_url, notice: 'Interest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest
      @interest = Interest.find(params[:id])
    end

    def set_profile
      @profile = Profile.find(params[:profile_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_params
      params.require(:interest).permit(:rating, :comment)
    end
end