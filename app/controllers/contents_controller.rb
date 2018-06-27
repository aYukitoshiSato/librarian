class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end

  def show
    @content = Content.find_by(id: params[:id])
  end

  def new
    @content = Content.new
    @collection = @content.collections.build
    @creator = @collection.creators.build

  end

  def create
    @content = Content.new(create_params)
    @content.save
    @content.errors.full_messages.each do |message|
      puts message
    end
    redirect_to ("/contents/index")

  end


  def edit
  end

  private

   def create_params
     params.require(:content).permit(
       :title,
       :form,
       collections_attributes: [
         :id,
         :title,
         :No,
         :_destroy,
         creators_attributes: [
           :id,
           :name,
           :position,
           :_destroy
         ]
       ]
     )
   end

end
