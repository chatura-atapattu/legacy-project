class MainController < ApplicationController
  before_action :set_group
  before_action :set_current_donation_url

  def index
    @sections = [
      { url: '#section-1', title: 'Initiatives' },
      { url: '#section-2', title: 'About Us' },
      { url: '#section-3', title: 'FAQ' }
    ]

    render action_name, locals: { group: group }
  end

  def privacypolicy
  end

  def termsandconditions
  end

  private

  def set_current_donation_url
    @current_donation_url = group.donation_url
  end

  def group
    @group ||= Group.first
  end

  def set_group
    group
  end

end
