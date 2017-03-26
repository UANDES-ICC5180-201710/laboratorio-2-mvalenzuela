class PersonCoursesController < ApplicationController
  before_action :set_person_course, only: [:show, :edit, :update, :destroy]

  # GET /person_courses
  # GET /person_courses.json
  def index
    @person_courses = PersonCourse.all
  end

  # GET /person_courses/1
  # GET /person_courses/1.json
  def show
  end

  # GET /person_courses/new
  def new
    @person_course = PersonCourse.new
  end

  # GET /person_courses/1/edit
  def edit
  end

  # POST /person_courses
  # POST /person_courses.json
  def create
    @person_course = PersonCourse.new(person_course_params)

    respond_to do |format|
      if @person_course.save
        format.html { redirect_to @person_course, notice: 'Person course was successfully created.' }
        format.json { render :show, status: :created, location: @person_course }
      else
        format.html { render :new }
        format.json { render json: @person_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_courses/1
  # PATCH/PUT /person_courses/1.json
  def update
    respond_to do |format|
      if @person_course.update(person_course_params)
        format.html { redirect_to @person_course, notice: 'Person course was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_course }
      else
        format.html { render :edit }
        format.json { render json: @person_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_courses/1
  # DELETE /person_courses/1.json
  def destroy
    @person_course.destroy
    respond_to do |format|
      format.html { redirect_to person_courses_url, notice: 'Person course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_course
      @person_course = PersonCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_course_params
      params.require(:person_course).permit(:person_id, :course_id)
    end
end
