class CommentsController < ApplicationController
  before_action :set_contact, only: [:new, :create]

  def new
    @comment = Comment.new
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @comment = Comment.new(comment_params)
    @comment.contact = @contact
    @comment.save
    redirect_to contact_path(@contact)
  end

  private

  def set_contact
    @contact = Contact.find(params[:contact_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
