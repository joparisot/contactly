class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
    @comment = Comment.new
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    @contact.save
    redirect_to contact_path(@contact)
  end

  def edit
  end

  def update
    @contact = Contact.update(contact_params)
    redirect_to contact_path(@contact)
  end

  def destroy
    @contact.destroy

    redirect_to contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(:id, :first_name, :last_name, :phone_number, :email)
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end
end
