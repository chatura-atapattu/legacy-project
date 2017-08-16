class MainController < ApplicationController
  before_action :common

  def common
    @currentDonationURL = 'https://www.generosity.com/community-fundraising/t-r-a-p-veracity-project-sofia-bulgaria'
  end

  def index
    @sections = [{url: '#section-1', title:'Initiatives'}, {url: '#section-2', title: 'About Us'}, {url: '#section-3', title: 'FAQ'}] 
  end

  def privacypolicy
  end

  def termsandconditions
  end

end
