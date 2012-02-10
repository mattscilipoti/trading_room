class CaseStudiesController < ApplicationController
  # GET /ticker/1/case_studies
  # GET /ticker/1/case_studies.json
  def index
    assign_ticker
    @case_studies = CaseStudy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @case_studies }
    end
  end

  # GET /case_studies/1
  # GET /case_studies/1.json
  def show
    @case_study = CaseStudy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @case_study }
    end
  end

  # GET /ticker/1/case_studies/new
  # GET /ticker/1/case_studies/new.json
  def new
    assign_ticker
    @case_study = @ticker.case_studies.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @case_study }
    end
  end

  # GET /case_studies/1/edit
  def edit
    @case_study = CaseStudy.find(params[:id])
  end

  # POST /case_studies
  # POST /case_studies.json
  def create
    @case_study = CaseStudy.new(params[:case_study])

    respond_to do |format|
      if @case_study.save
        format.html { redirect_to @case_study, notice: 'Case study was successfully created.' }
        format.json { render json: @case_study, status: :created, location: @case_study }
      else
        format.html { render action: "new" }
        format.json { render json: @case_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /case_studies/1
  # PUT /case_studies/1.json
  def update
    @case_study = CaseStudy.find(params[:id])

    respond_to do |format|
      if @case_study.update_attributes(params[:case_study])
        format.html { redirect_to @case_study, notice: 'Case study was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @case_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_studies/1
  # DELETE /case_studies/1.json
  def destroy
    @case_study = CaseStudy.find(params[:id])
    @case_study.destroy

    respond_to do |format|
      format.html { redirect_to case_studies_url }
      format.json { head :no_content }
    end
  end


  private

  def assign_ticker
    @ticker = Ticker.find(params[:ticker_id])
  end
end
