class ArtifactsController < ApplicationController

  def index
    @artifacts = Artifact.by_registration_number.all
  end

  def new
    @artifact = Artifact.new
  end

  def edit
    @artifact = Artifact.by_registration_number.key(params[:id]).first
  end

  def create
    @artifact = Artifact.new(artifact_params)
    if @artifact.save
      redirect_to artifacts_path
    else
      redirect_to new_artifact_path
    end
  end

  def update
    @artifact = Artifact.find(params[:id])
    if @artifact.update_attributes(artifact_params)
      redirect_to artifacts_path
    else
      redirect_to edit_artifact_path(@artifact.registration_number)
    end
  end

  private
  def artifact_params
    params.require(:artifact).permit(
      :registration_number,
      :field_number,
      :season,
      :site,
      :field,
      :square,
      :locus,
      :pail,
      :location,
      :level,
      :designation,
      :certainty,
      :period,
      :modifier_1,
      :modifier_2,
      :shape,
      :shape_mod,
      :material,
      :color,
      :preservation,
      :percent,
      :craftsmanship,
      :decoration,
      :weight,
      :length,
      :width,
      :height,
      :diam,
      :perf_diam,
      :condition,
      :number_of_pieces,
      :drawing_number,
      :drawing_date,
      :artist,
      :top_number,
      :profile_number,
      :oblique_number,
      :photo_date,
      :photographer,
      :allocation,
      :building,
      :room,
      :counter,
      :cabinet,
      :drawer,
      :comments,
      :entered_by,
      :entry_date
    )
  end

end
