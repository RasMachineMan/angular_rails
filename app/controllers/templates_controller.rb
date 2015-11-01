class TemplatesController < ApplicationController

  layout false

  def templates
    render partial: "/templates/#{name}"
  end

  def users
   render partial: "/templates/users/#{name}"
  end

  private

  def name
    params[:template_name]
  end

end


