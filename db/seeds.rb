# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

leagues = League.create([
  {
    name: 'MLS',
    website: 'https://www.mlssoccer.com/',
    logo: 'https://dl.airtable.com/3c4drpcRTJiIYNwNw7RG_mls_logo.jpg',
    level: 'Professional',
    indoor: false,
    season_start: 'March',
    season_end: 'December'
  },
  {
    name: 'USL',
    website: 'https://www.uslsoccer.com/',
    logo: 'https://dl.airtable.com/5idrJI90RzCdf4cPd8wH_usl_logo.jpg',
    level: 'Professional',
    indoor: false,
    season_start: 'March',
    season_end: 'November'
  }
])


teams = Team.create([
  {
    name: 'Harrisburg City Islanders',
    address_1: '2090 Linglestown Road',
    address_2: 'Suite 105',
    locality: 'Harrisburg',
    region: 'PA',
    zip: '17110',
    website: 'http://cityislanders.com/',
    logo: 'https://dl.airtable.com/LNYCbHMTSm4lywuLRZPr_islanders_logo.jpg',
    league: leagues[1]
  },
  {
    name: 'Atlanta United FC',
    address_1: '861 Franklin Gateway SE',
    address_2: '',
    locality: 'Marietta',
    region: 'GA',
    zip: '30067',
    website: 'https://www.atlutd.com/',
    logo: 'https://dl.airtable.com/aJQGWa7QfW6a7NukTnAL_atlanta_utd_logo.jpg',
    league: leagues[0]
  },
  {
    name: 'Chicago Fire',
    address_1: '7000 S. Harlem Avenue',
    address_2: '',
    locality: 'Bridgeview',
    region: 'IL',
    zip: '60455',
    website: 'https://www.chicago-fire.com/',
    logo: 'https://dl.airtable.com/KZAnjbhtSEurDSUNOPEy_chicago_fire_logo.jpg',
    league: leagues[0]
  },
  {
    name: 'Colorado Rapids',
    address_1: '6000 Victory Way',
    address_2: '',
    locality: 'Commerce City',
    region: 'CO',
    zip: '80022',
    website: 'https://www.coloradorapids.com/',
    logo: 'https://dl.airtable.com/HxylKznfSWKpm8OWZiFj_colorado_rapids_logo.jpg',
    league: leagues[0]
  },
  {
    name: 'Richmond Kickers',
    address_1: '2001 Maywill Street',
    address_2: 'Suite 203',
    locality: 'Richmond',
    region: 'VA',
    zip: '23230',
    website: 'http://www.richmondkickers.com/index.html',
    logo: 'https://dl.airtable.com/N54sWFM3QPCWjRxryqDP_richmond_kickers_logo.png',
    league: leagues[1]
  },
  {
    name: 'Pittsburgh Riverhounds',
    address_1: '510 W Station Square Drive',
    address_2: '',
    locality: 'Pittsburgh',
    region: 'PA',
    zip: '15219',
    website: 'http://riverhounds.com',
    logo: 'https://dl.airtable.com/yUghhlhLTnKlyq74P4eD_riverhounds_logo.jpg',
    league: leagues[1]
  },
  {
    name: 'Louisville City FC',
    address_1: '127 S. 6th Street',
    address_2: '',
    locality: 'Louisville',
    region: 'KY',
    zip: '40202',
    website: 'http://www.louisvillecityfc.com/',
    logo: 'https://dl.airtable.com/BenoySXBTLGVwUoIUzmK_lou_city_logo.jpg',
    league: leagues[1]
  },
  {
    name: 'LA Galaxy II',
    address_1: '18400 S Avalon Blvd',
    address_2: '',
    locality: 'Carson',
    region: 'CA',
    zip: '90746',
    website: 'https://www.lagalaxy.com/2',
    logo: 'https://dl.airtable.com/XF5KuU7lT3Gw1vaoMauX_la_galaxy_2_logo.png',
    league: leagues[1]
  },
  {
    name: 'LA Galaxy',
    address_1: '18400 S Avalon Blvd',
    address_2: '',
    locality: 'Carson',
    region: 'CA',
    zip: '90746',
    website: 'https://www.lagalaxy.com',
    logo: 'https://dl.airtable.com/XF5KuU7lT3Gw1vaoMauX_la_galaxy_2_logo.png',
    league: leagues[0]
  },
  {
    name: 'Fresno Football Club',
    address_1: '1800 Tulare Street',
    address_2: '',
    locality: 'Fresno',
    region: 'CA',
    zip: '93721',
    website: 'http://www.fresnofc.com/',
    logo: 'https://dl.airtable.com/bXCvVFkISoutyQJvohvB_fresno_logo.jpg',
    league: leagues[1]
  },
  {
    name: 'Sacramento Republic FC',
    address_1: '2421 17th St.',
    address_2: 'Suite 100',
    locality: 'Sacramento',
    region: 'CA',
    zip: '95818',
    website: 'http://www.sacrepublicfc.com/',
    logo: 'https://dl.airtable.com/NYQqJRTTtGAPGF3Ku2HG_republic_fc_logo.jpg',
    league: leagues[1]
  },
  {
    name: 'Reno 1868 FC',
    address_1: '250 Evans Avenue',
    address_2: '',
    locality: 'Reno',
    region: 'NV',
    zip: '89501',
    website: 'http://www.reno1868fc.com/',
    logo: 'https://dl.airtable.com/TlOk3bUgRHWgrGnOD6A8_reno_logo.jpg',
    league: leagues[1]
  }
])

tryouts = Tryout.create([
  {
    label: 'City Islanders PA',
    info: 'http://cityislanders.com/club/pro-team-tryout/',
    registration: 'https://cityislanders.wufoo.com/forms/november-21-22-pro-team-tryout/',
    start_date:  Date.strptime("11/21/2017", '%m/%d/%Y'),
    end_date: Date.strptime("11/22/2017", '%m/%d/%Y'),
    fee: 15000,
    locality: 'Palmyra',
    region: 'PA',
    team: teams[0]
  },
  {
    label: 'City Islanders NJ',
    info: 'http://cityislanders.com/2018-pro-tryouts-new-jersey/',
    registration: 'https://cityislanders.wufoo.com/forms/december-9-10-pro-team-tryout/',
    start_date: Date.strptime("12/9/2017", '%m/%d/%Y'),
    end_date:  Date.strptime("12/10/2017", '%m/%d/%Y'),
    fee: 15000,
    locality: 'Newark',
    region: 'NJ',
    team: teams[0]
  },
  {
    label: 'Atlanta United Open Tryout',
    info: 'https://www.atlutd.com/dreamtryouts',
    registration: 'https://www.atlutd.com/dreamtryouts',
    start_date: Date.strptime("12/16/2017", '%m/%d/%Y'),
    end_date: Date.strptime("12/16/2017", '%m/%d/%Y'),
    fee: 15000,
    locality: 'Marietta',
    region: 'GA',
    team: teams[1]
  },
  {
    label: 'Richmond Kickers Session 1',
    info: 'http://www.richmondkickers.com/aleague/Tryouts/index_E.html',
    registration: 'http://www.youthleaguesusa.com/kickers/17-18/ProSoccerTryout.html',
    start_date: Date.strptime("12/1/2017", '%m/%d/%Y'),
    end_date: Date.strptime("12/3/2017", '%m/%d/%Y'),
    fee: 15000,
    locality: 'Richmond',
    region: 'VA',
    team: teams[4]
  },
  {
    label: 'Richmond Kickers Session 2',
    info: 'http://www.richmondkickers.com/aleague/Tryouts/index_E.html',
    registration: 'http://www.youthleaguesusa.com/kickers/17-18/ProSoccerTryout.html',
    start_date: Date.strptime("2/16/2018", '%m/%d/%Y'),
    end_date: Date.strptime("2/18/2018", '%m/%d/%Y'),
    fee: 15000,
    locality: 'Richmond',
    region: 'VA',
    team: teams[4]
  },
  {
    label: 'Pittsburgh Riverhounds',
    info: 'http://www.riverhounds.com/open-tryouts',
    registration: 'https://riverhounds.sportngin.com/register/form/411921137?_ga=2.141052978.1241799281.1510088610-348449742.1510088610',
    start_date: Date.strptime("12/8/2017", '%m/%d/%Y'),
    end_date: Date.strptime("12/9/2017", '%m/%d/%Y'),
    fee: 12500,
    locality: 'Pittsburgh',
    region: 'PA',
    team: teams[5]
  },
  {
    label: 'Louisville City FC',
    info: 'http://www.louisvillecityfc.com/news_article/show/834712',
    registration: 'http://www.louisvillecityfc.com/news_article/show/834712',
    start_date: Date.strptime("12/2/2017", '%m/%d/%Y'),
    end_date: Date.strptime("12/2/2017", '%m/%d/%Y'),
    fee: 15000,
    locality: 'Louisville',
    region: 'KY',
    team: teams[6]
  },
  {
    label: 'LA Galaxy ll Tryout (ages 17-25) NV',
    info: 'http://lagalaxyll.leagueapps.com/events/353544-la-galaxy-ll-open-tryouts-las-vegas-nv---185-saturday--sunday-ages-17-25',
    registration: 'http://lagalaxyll.leagueapps.com/events/353544-la-galaxy-ll-open-tryouts-las-vegas-nv---185-saturday--sunday-ages-17-25',
    start_date: Date.strptime("12/15/2017", '%m/%d/%Y'),
    end_date: Date.strptime("12/17/2017", '%m/%d/%Y'),
    fee: 18500,
    locality: 'Las Vegas',
    region: 'NV',
    team: teams[7]
  },
  {
    label: 'LA Galaxy ll Tryout (ages 17-25) LA 1',
    info: 'http://lagalaxyll.leagueapps.com/events/452613-la-galaxy-ll-open-tryouts-los-angeles-1-ca---185-saturday--sunday-ages-17-25',
    registration: 'http://lagalaxyll.leagueapps.com/events/452613-la-galaxy-ll-open-tryouts-los-angeles-1-ca---185-saturday--sunday-ages-17-25',
    start_date: Date.strptime("1/13/2018", '%m/%d/%Y'),
    end_date: Date.strptime("1/14/2018", '%m/%d/%Y'),
    fee: 18500,
    locality: 'Los Angeles',
    region: 'CA',
    team: teams[7]
  },
  {
    label: 'LA Galaxy ll Tryout (ages 17-25) LA 2',
    info: 'http://lagalaxyll.leagueapps.com/events/452613-la-galaxy-ll-open-tryouts-los-angeles-1-ca---185-saturday--sunday-ages-17-25',
    registration: 'http://lagalaxyll.leagueapps.com/events/452613-la-galaxy-ll-open-tryouts-los-angeles-1-ca---185-saturday--sunday-ages-17-25',
    start_date: Date.strptime("1/20/2018", '%m/%d/%Y'),
    end_date: Date.strptime("1/21/2018", '%m/%d/%Y'),
    fee: 18500,
    locality: 'Los Angeles',
    region: 'CA',
    team: teams[7]
  },
  {
    label: 'LA Galaxy ll Tryout (ages 17-25) LA 3',
    info: 'http://lagalaxyll.leagueapps.com/events/366504-la-galaxy-ll-open-tryouts-los-angeles-2-ca---185-saturday--sunday-ages-17-25',
    registration: 'http://lagalaxyll.leagueapps.com/events/366504-la-galaxy-ll-open-tryouts-los-angeles-2-ca---185-saturday--sunday-ages-17-25',
    start_date: Date.strptime("1/27/2018", '%m/%d/%Y'),
    end_date: Date.strptime("1/28/2018", '%m/%d/%Y'),
    fee: 18500,
    locality: 'Los Angeles',
    region: 'CA',
    team: teams[7]
  },
  {
    label: 'Sacramento Republic FC (Dec)',
    info: 'http://www.sacrepublicfc.com/player-tryouts',
    registration: 'https://www.eventbrite.com/e/srfc-open-tryouts-december-2017-registration-38844685500',
    start_date: Date.strptime("12/2/2017", '%m/%d/%Y'),
    end_date: Date.strptime("12/3/2017", '%m/%d/%Y'),
    fee: 22500,
    locality: 'Sacramento',
    region: 'CA',
    team: teams[10]
  },
  {
    label: 'Sacramento Republic FC (Jan)',
    info: 'http://www.sacrepublicfc.com/player-tryouts',
    registration: 'https://www.eventbrite.com/e/srfc-open-tryouts-january-2018-registration-39058677556',
    start_date: Date.strptime("1/6/2018", '%m/%d/%Y'),
    end_date: Date.strptime("1/7/2018", '%m/%d/%Y'),
    fee: 22500,
    locality: 'Sacramento',
    region: 'CA',
    team: teams[10]
  },
  {
    label: 'Sacramento Republic FC (Feb)',
    info: 'http://www.sacrepublicfc.com/player-tryouts',
    registration: 'https://www.eventbrite.com/e/srfc-open-tryouts-february-2018-registration-39058938336',
    start_date: Date.strptime("2/3/2018", '%m/%d/%Y'),
    end_date: Date.strptime("2/4/2018", '%m/%d/%Y'),
    fee: 22500,
    locality: 'Sacramento',
    region: 'CA',
    team: teams[10]
  },
  {
    label: 'Reno 1868 FC Tryout 1',
    info: 'http://www.reno1868fc.com/news_article/show/848856',
    registration: 'https://renoaces.formstack.com/forms/reno_1868_fc_tryouts_december',
    start_date: Date.strptime("12/2/2017", '%m/%d/%Y'),
    end_date: Date.strptime("12/2/2017", '%m/%d/%Y'),
    fee: 15000,
    locality: 'Sparks',
    region: 'NV',
    team: teams[11]
  },
  {
    label: 'Reno 1868 FC Tryout 2',
    info: 'http://www.reno1868fc.com/news_article/show/848856',
    registration: 'https://renoaces.formstack.com/forms/reno_1868_fc_tryouts_december',
    start_date: Date.strptime("12/16/2017", '%m/%d/%Y'),
    end_date: Date.strptime("12/16/2017", '%m/%d/%Y'),
    fee: 15000,
    locality: 'Sparks',
    region: 'NV',
    team: teams[11]
  }


])


# Tryout Label,Start Date,End Date,City,State,Fee,Info,Registration,Team,Notes,Team Name,Team Logo,League Logo
#
# Reno 1868 FC Tryout 1,12/2/2017,12/2/2017,Sparks,NV,$150.00,http://www.reno1868fc.com/news_article/show/848856?referrer_id=2942477,https://renoaces.formstack.com/forms/reno_1868_fc_tryouts_december,Reno 1868 FC,,Reno 1868 FC,reno_logo.jpg (https://dl.airtable.com/TlOk3bUgRHWgrGnOD6A8_reno_logo.jpg),usl_logo.jpg (https://dl.airtable.com/5idrJI90RzCdf4cPd8wH_usl_logo.jpg)
# Reno 1868 FC Tryout 2,12/16/2017,12/16/2017,Sparks,NV,$150.00,http://www.reno1868fc.com/news_article/show/848856?referrer_id=2942477,https://renoaces.formstack.com/forms/reno_1868_fc_tryouts_december,Reno 1868 FC,,Reno 1868 FC,reno_logo.jpg (https://dl.airtable.com/TlOk3bUgRHWgrGnOD6A8_reno_logo.jpg),usl_logo.jpg (https://dl.airtable.com/5idrJI90RzCdf4cPd8wH_usl_logo.jpg)
