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
    @content = Content.new(content_params)
    if @content.save
      flash[:notice] = "データを登録しました"
      redirect_to ("/contents/index")
    else
      render("contents/new")
    end
    # @content.errors.full_messages.each do |message|
    #   puts message
    # end
  end


  def edit
    @content = Content.find_by(id: params[:id])

    @collection = @content.collections.build
    @creator = @collection.creators.build
  end

  def update
    @content = Content.find_by(id: params[:id])
    if @content.update_attributes(content_params)
      flash[:notice] = "データを更新しました"
      redirect_to ("/contents/index")
    else
      render("contents/edit")
    end
  end

  def destroy
    @content = Content.find_by(id: params[:id])
    if @content.destroy
      flash[:notice] = "データを削除しました"
      redirect_to ("/contents/index")
    end
  end

  private

   def content_params
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
