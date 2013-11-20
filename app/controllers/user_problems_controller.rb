class UserProblemsController < ApplicationController
  before_action :set_user_problem, only: [:show, :edit, :update, :destroy]

  # GET /user_problems
  # GET /user_problems.json
  def index
    @user_problems = UserProblem.all
  end

  # GET /user_problems/1
  # GET /user_problems/1.json
  def show
  end

  # GET /user_problems/new
  def new
    @user_problem = UserProblem.new
  end

  # GET /user_problems/1/edit
  def edit
  end

  # POST /user_problems
  # POST /user_problems.json
  def create
    @user_problem = UserProblem.new(user_problem_params)

    respond_to do |format|
      if @user_problem.save
        format.html { redirect_to @user_problem, notice: 'User problem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_problem }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_problems/1
  # PATCH/PUT /user_problems/1.json
  def update
    respond_to do |format|
      if @user_problem.update(user_problem_params)
        format.html { redirect_to @user_problem, notice: 'User problem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_problems/1
  # DELETE /user_problems/1.json
  def destroy
    @user_problem.destroy
    respond_to do |format|
      format.html { redirect_to user_problems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_problem
      @user_problem = UserProblem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_problem_params
      params.require(:user_problem).permit(:user_id, :problem_id)
    end
end
