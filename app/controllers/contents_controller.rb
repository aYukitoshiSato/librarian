class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end

  def show
    @content = Content.find_by(id: params[:id])
  end

  def new
    @content = Content.new
    @content.collections.build
    @content.collections.first.creator_belongs_to_collections.build
  end

  def create
    @content = Content.new(create_params)
    @content.save
    redirect_to ("/contents/index")

  end

  private

   def create_params
     params.require(:content).permit(
       :title,
       :form,
       collections_attributes: [
         :title,
         creator_belongs_to_collections_attributes: [:position]
         ]
       )
   end

  def edit
  end

end
