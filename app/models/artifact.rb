require 'couchrest_model'

class Artifact < CouchRest::Model::Base
  include Lookups

  #identification
  property :registration_number, String
  property :field_number, String
  property :season, Integer

  #location
  property :site, String
  property :field, String
  property :square, String
  property :locus, String
  property :pail, String
  property :location, String
  property :level, Float

  #description
  property :designation, String
  property :certainty, String
  property :period, String
  property :modifier_1, String
  property :modifier_2, String
  property :shape, String
  property :shape_mod, String
  property :material, String
  property :color, String
  property :preservation, String
  property :percent, String
  property :craftsmanship, String
  property :decoration, String
  property :weight, Float
  property :length, Float
  property :width, Float
  property :height, Float
  property :diam, Float
  property :perf_diam, Float
  property :condition, String
  property :number_of_pieces, Integer

  #Artwork
  property :drawing_number, String
  property :drawing_date, Date
  property :artist, String

  #Photography
  property :top_number, String
  property :profile_number, String
  property :oblique_number, String
  property :photo_date, Date
  property :photographer, String

  #Allocation
  property :allocation, String

  #LSU Location
  property :building, String
  property :room, String
  property :counter, String
  property :cabinet, String
  property :drawer, String

  #Comments
  property :comments, String
  property :entered_by, String
  property :entry_date, Date

  timestamps!

  design do
    view :by_registration_number
    view :by_category,
      map: "function(doc) {
        if ((doc['type'] == 'Artifact') && (doc['registration_number'] != null)) {
          emit(doc['registration_number'].slice(0,1), doc);
        }
      }"
  end

  def has_top_photo?(style="thumb")
    self.top_number.present? && File.exist?(Rails.root.join("public","assets","artifacts","2016",style,"#{self.top_number}.jpg"))
  end

  def top_photo_url(style="thumb")
    if self.has_top_photo?(style)
      "/assets/artifacts/2016/#{style}/#{self.top_number}.jpg"
    else
      self.no_photo_url(style)
    end
  end

  def no_photo_url(style="thumb")
    "/assets/artifacts/#{style}.png"
  end

  def has_profile_photo?(style="thumb")
    self.profile_number.present? && File.exist?(Rails.root.join("public","assets","artifacts","2016",style,"#{self.profile_number}.jpg"))
  end

  def profile_photo_url(style="thumb")
    if self.has_profile_photo?(style)
      "/assets/artifacts/2016/#{style}/#{self.profile_number}.jpg"
    else
      self.no_photo_url(style)
    end
  end

  def has_oblique_photo?(style="thumb")
    self.top_number.present? && File.exist?(Rails.root.join("public","assets","artifacts","2016",style,"#{self.oblique_number}.jpg"))
  end

  def oblique_photo_url(style="thumb")
    if self.has_oblique_photo?(style)
      "/assets/artifacts/2016/#{style}/#{self.oblique_number}.jpg"
    else
      self.no_photo_url(style)
    end
  end

end
