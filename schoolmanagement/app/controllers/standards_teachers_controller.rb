class StandardsTeachersController < ApplicationController
  before_action :set_standards_teacher, only: [:show, :edit, :update, :destroy]

  # GET /standards_teachers
  # GET /standards_teachers.json
  def index
    @standards_teachers = StandardsTeacher.all
  end

  # GET /standards_teachers/1
  # GET /standards_teachers/1.json
  def show
  end

  # GET /standards_teachers/new
  def new
    @standards_teacher = StandardsTeacher.new
  end

  # GET /standards_teachers/1/edit
  def edit
  end

  # POST /standards_teachers
  # POST /standards_teachers.json
  def create
    @standards_teacher = StandardsTeacher.new(standards_teacher_params)

    respond_to do |format|
      if @standards_teacher.save
        format.html { redirect_to @standards_teacher, notice: 'Standards teacher was successfully created.' }
        format.json { render :show, status: :created, location: @standards_teacher }
      else
        format.html { render :new }
        format.json { render json: @standards_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /standards_teachers/1
  # PATCH/PUT /standards_teachers/1.json
  def update
    respond_to do |format|
      if @standards_teacher.update(standards_teacher_params)
        format.html { redirect_to @standards_teacher, notice: 'Standards teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @standards_teacher }
      else
        format.html { render :edit }
        format.json { render json: @standards_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standards_teachers/1
  # DELETE /standards_teachers/1.json
  def destroy
    @standards_teacher.destroy
    respond_to do |format|
      format.html { redirect_to standards_teachers_url, notice: 'Standards teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standards_teacher
      @standards_teacher = StandardsTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def standards_teacher_params
      params.require(:standards_teacher).permit(:standard_id_id, :teacher_id_id)
    end
end
