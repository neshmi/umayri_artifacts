class ReportsController < ApplicationController

  def artifacts
    @title = 'Madaba Plains Project-\'Umayri - Artifacts'
    @artifacts = Artifact.by_category.key("A").all.sort{|a,b| a.registration_number <=> b.registration_number}
  end

  def objects
    @title = 'Madaba Plains Project-\'Umayri - Objects'
    @objects = Artifact.by_category.key("B").all.sort{|a,b| a.registration_number <=> b.registration_number}
  end

  def all
    @title = 'Madaba Plains Project-\'Umayri - Artifacts and Objects'
    @artifacts = Artifact.by_category.key("A").all.sort{|a,b| a.registration_number <=> b.registration_number}
    @objects = Artifact.by_category.key("B").all.sort{|a,b| a.registration_number <=> b.registration_number}
  end

end
