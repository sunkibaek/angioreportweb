class MailingListsController < ApplicationController
  before_action :authenticate, only: [:show]

  def show
    @mailing_lists = MailingList.all
  end

  def create
    @mailing_list = MailingList.new(mailing_list_params)

    if @mailing_list.save
      render nothing: true
    else
      render :json => @mailing_list, :status => :unprocessable_entity
    end
  end

  private

  def mailing_list_params
    params.require(:mailing_list).permit(:email)
  end
end