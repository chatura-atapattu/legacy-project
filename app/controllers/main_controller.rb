class MainController < ApplicationController
  before_action :common

  def common
    @currentDonationURL = 'https://www.generosity.com/community-fundraising/sumando-energias'
    @sections = [
      {url: 'initiatives', title:'Initiatives'},
      {url: 'aboutus', title: 'About Us'}, {url: 'faq', title: 'FAQ'}
    ]
    @initiatives = [
      {title: 'Casa Caridad (Valencia, Spain)', partial: 'valencia', active: false},
      {title: 'T.R.A.P. - Trotoara Room for Angry People (Sofia, Bulgaria)', partial: 'sofia', active: false},
      {title: 'Refugee Aid Serbia (Belgrade, Serbia)', partial: 'belgrade', active: false},
      #{title: 'Marrakesh, Morocco', partial: 'marrakesh', active: false},
      {title: 'Buenos Aires, Argentina', partial: 'buenos_aires', active: true}
    ]
  end

  def index
  end

  def initiatives
  end

  def aboutus
    @profiles = [
      {
        photo: 'dorothy.jpg',
        name: 'Dorothy Srun',
        location: 'United States'
      },
      {
        photo: 'eric.jpg',
        name: 'Eric Cheung',
        location: 'United States'
      },
      {
        photo: 'kyle.jpg',
        name: 'Kyle Horan',
        location: 'United States'
      },
      {
        photo: 'michelle.jpg',
        name: 'Michelle Parry',
        location: 'United Kingdom'
      },
      {
        photo: 'nathan.jpg',
        name: 'Nathan Kroop',
        location: 'United States'
      },
      {
        photo: 'nick.jpg',
        name: 'Nicholas Tyral',
        location: 'Austrailia'
      },
      {
        photo: 'olga.jpg',
        name: 'Olga Kraineva',
        location: 'United States'
      },
      {
        photo: 'rich.jpg',
        name: 'Rich McDonald',
        location: 'United Kingdom'
      },
      {
        photo: 'sangeeta.jpg',
        name: 'Sangeeta Mulchandani',
        location: 'Austrailia'
      },
      {
        photo: 'scott.jpg',
        name: 'Scott Dukette',
        location: 'United States'
      },
      {
        photo: 'stevie.jpg',
        name: 'Stevie Kloeber',
        location: 'United States'
      }
    ]
  end

  def faq
  end

  def privacypolicy
  end

  def termsandconditions
  end

end
