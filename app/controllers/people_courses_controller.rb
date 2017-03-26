class PeopleCoursesController < ApplicationController
  before_action :set_people_course, only: [:show, :edit, :update, :destroy]

  # GET /people_courses
  # GET /people_courses.json
  def index
    @people_courses = PeopleCourse.all
  end

  # GET /people_courses/1
  # GET /people_courses/1.json
  def show
  end

  # GET /people_courses/new
  def new
    @people_course = PeopleCourse.new
  end

  # GET /people_courses/1/edit
  def edit
  end

  # POST /people_courses
  # POST /people_courses.json
  def create
    @people_course = PeopleCourse.new(people_course_params)

    respond_to do |format|
      if @people_course.save
        format.html { redirect_to @people_course, notice: 'People course was successfully created.' }
        format.json { render :show, status: :created, location: @people_course }
      else
        format.html { render :new }
        format.json { render json: @people_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people_courses/1
  # PATCH/PUT /people_courses/1.json
  def update
    respond_to do |format|
      if @people_course.update(people_course_params)
        format.html { redirect_to @people_course, notice: 'People course was successfully updated.' }
        format.json { render :show, status: :ok, location: @people_course }
      else
        format.html { render :edit }
        format.json { render json: @people_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people_courses/1
  # DELETE /people_courses/1.json
  def destroy
    @people_course.destroy
    respond_to do |format|
      format.html { redirect_to people_courses_url, notice: 'People course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_people_course
      @people_course = PeopleCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def people_course_params
      params.require(:people_course).permit(:person_id, :course_id)
    end
end
