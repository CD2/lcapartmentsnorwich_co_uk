task gen_pages: :environment do


  Apartment.create!(
      name: 'Samson & Hercules Apartment',
      body: '<h1>Samson and Hercules Apartments Norwich </h1><p>The Samson & Hercules apartments are situated in the historic Tombland area of Norwich. This is the oldest part of Norwich, a labyrinth of cobbled streets well known for it\'s beautiful and unique selection of restaurants and wine bars, coffee shops, deli\'s and boutiques, there is a wide selection available which cater for all tastes.</p>
            <p><b>Apartment 1:</b> A one bedroom apartment, perfect for a couple or single guest, located on the ground floor with very easy access therefore suitable for any guests with mobility issues.</p>
            <p><b>Apartment 3:</b> Beautiful one bedroom apartment. This also has a kingsize bedroom but could accommodate up to four guests if required.</p>
            <p><b>Apartment 4:</b> A spacious two bedroom apartment comprising of a large kingsize bedroom and one single bedroom, ideal for up to three guests although temporary beds for a further two guests can be provided for the lounge area. This apartment is located on the middle floor and has a nice little balcony area just large enough to enjoy a glass of wine on in the summer evenings!</p>
            <p><b>Apartment 6:</b> A spacious two bedroom penthouse comprising of a large kingsize bedroom and one single bedroom, ideal for up to three guests although temporary beds for a further two guests can be provided for the lounge area.</p>
            <p><b>Apartment 11:</b> Beautiful one bedroom penthouse apartment, this has one kingsize bedroom making it ideal for one or two guests but a further two temporary beds could be provided for the lounge area if required.</p>
            <p><b>Apartment 12:</b> Beautiful one bedroom penthouse apartment next door to apartment 11 this also has a kingsize bedroom but could accommodate up to four guests if required. This apartment has a lovely Juliette balcony with wonderful views over the gardens.</p>
            ',
      summary: '<h2>Samson and Hercules Apartments, Norwich</h2><p>The Samson & Hercules apartments are situated in the historic Tombland area of Norwich. This is the oldest part of Norwich, a labyrinth of cobbled streets well known for it\'s beautiful and unique selection of restaurants and wine bars, coffee shops, deli\'s and boutiques, there is a wide selection available which cater for all tastes.</p>',
      information: '<h3>Prices:</h3>
            <ul>
              <li>1 bed starting from £85 per night plus vat.</li>
              <li>2 beds starting from £110 per night plus vat.</li>
            </ul>
            <h3>Chargeable extras (£10 per item per night):</h3>
            <ul>
              <li>Travel cot</li>
              <li>High chair</li>
              <li>Additional temporary beds</li>
            </ul>',
      maps_embed_code: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2421.570672251515!2d1.2956397658116412!3d52.63160212983531!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d9e3dd58ae5ee7%3A0x35e1fdfbcbff022f!2s9-12+Samson+And+Hercules!5e0!3m2!1sen!2suk!4v1470058937689'
  ).meta_data.update(
      url_alias: 'samson-hercules-apartment',
      description: 'Situated in the historic Tombland area of Norwich, The Samson and Hercules serviced apartments is the perfect place to stay to enjoy the history of the city.',
      title: 'Samson and Hercules Serviced Apartments Norwich | Norfolk'
  )

  Apartment.create!(
      name: 'Greyfriars Apartments, Norwich',
      body: '<h1>Greyfriars Apartments, Norwich, Norfolk</h1><p>Greyfriars is a lovely two bedroom first floor apartment right in the center of Norwich, next door to Norwich castle and just a few steps away from the main shops, tourist attractions and business district. This is a large, spacious two bedroom apartment, two king-size bedrooms, one en-suite shower room and one family bathroom. The living area is open plan and will comfortably house four guests.</p>',
      summary: '<h2>Greyfriars Apartments, Norwich</h2><p>Greyfriars is a lovely two bedroom first floor apartment right in the center of Norwich, next door to Norwich castle and just a few steps away from the main shops, tourist attractions and business district. This is a large, spacious two bedroom apartment, two king-size bedrooms, one en-suite shower room and one family bathroom. The living area is open plan and will comfortably house four guests.</p>',
      information: '<h3>Prices</h3>
<ul>
<li>Starting from £110 per night plus vat.</li></ul>

<h3>Chargeable extras (£10 per item per night)</h3>
<ul>
<li>Travel cot</li>
<li>High chair</li>
<li>Additional temporary beds</li></ul>',
      maps_embed_code: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7678.6362322214145!2d1.2937377545875264!3d52.63202734803729!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d9e3e8f49de429%3A0xa8b4727c4d649e29!2s69G+Luxury+Apartment!5e0!3m2!1sen!2suk!4v1470059011279'
  ).meta_data.update(
      url_alias: 'greyfriars-apartments',
      description: '',
      title: 'Greyfriars Apartments Norwich | Norfolk'
  )

  Apartment.create!(
      name: 'Quayside Apartment',
      body: '<h1>Quayside Serviced Apartments Norwich</h1><p>Quayside apartments are a selection of two bedroom apartments located right on the river along a lovely cobbled lane. The building is an old conversion which means the apartments have lots of character, high ceilings, wooden floors throughout and large sash windows. All of the apartments have two good sized bedrooms each with a kingsize bed so these apartments can easily accommodate four guests. The living space is large and open plan with a large dining table making it a really sociable space for family or for entertaining. The ground floor apartment also has a little courtyard garden which is lovely in the spring and summer for a glass of wine or dinner alfresco!</p>
             <p>Quayside itself is just next to Tombland so it enjoys all of the same amenities as the Samson & Hercules.</p>
              ',
      summary: '<h2>Quayside Apartments, Norwich</h2><p>Quayside apartments are a selection of two bedroom apartments located right on the river along a lovely cobbled lane. The building is an old conversion which means the apartments have lots of character, high ceilings, wooden floors throughout and large sash windows.</p>',
      information: '<h3>Prices:</h3>
              <ul>
                <li>2 beds starting from £120 per night plus vat.</li>
              </ul>
                            <h3>Chargeable extras (£10 per item per night):</h3>
              <ul>
                <li>Travel cot</li>
                <li>High chair</li>
                <li>Additional temporary beds</li>
              </ul>',
      maps_embed_code: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4843.638999121843!2d1.288007999747268!3d52.62710588135497!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d9e3e2e4f7a029%3A0xccba7d3f717db011!2snorwichapartment.com+self+catering+serviced+apartments+Norfolk!5e0!3m2!1sen!2suk!4v1470059273938'
  ).meta_data.update(
      url_alias: 'quayside-apartment',
      description: 'We have a variety of Norwich apartments to choose from. Our Quayside apartments are located right on the river Wensum along a lovely cobbled lane.',
      title: 'Quayside Serviced Apartments Norwich | Norfolk'
  )

  Apartment.create!(
      name: 'The Dragon Hall Apartment',
      body: '<h1>The Dragon Hall Serviced Apartment</h1>',
      summary: '<h2>The Dragon Hall Serviced Apartment</h2>',
      maps_embed_code: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d38722.62126272344!2d1.2702803468799804!3d52.65701837789595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d9e3ef27f55ba1%3A0x98ea2443f10475a0!2sDragon+Hall!5e0!3m2!1sen!2suk!4v1470059343086'
  ).meta_data.update(
      url_alias: 'the-dragon-hall-apartment',
      description: 'The Dragon Hall apartment is a great place to stay for either leisure or corporate. We can offer long term letting or short city breaks on the Norwich apartment.',
      title: 'The Dragon Hall Serviced Apartment Norwich | Norfolk'
  )

  Apartment.all.each do |apartment|
    folder_name = apartment.url_alias
    Dir.glob("#{Rails.root}/seed_data/apartment_images/#{folder_name}/*") do |photo|
      puts photo
      apartment.apartment_images.create!(image: File.open(photo.to_s))
    end
  end

  Page.create!(
    name: 'Home',
    body: '<h1>Luxury City Apartments Norwich</h1>
           <p>Our luxury serviced apartments, cottages and houses are a great way to stay and enjoy luxury accommodation with space and privacy that perhaps you would not necessarily experience when staying in a hotel at such an affordable price.Whether visiting for business or pleasure, our stylish serviced apartments in and around the medieval City of Norwich make a great centre point base for your visit to the City or Norfolk countryside.</p>
           <p>We have a number of different luxury serviced apartments which vary in terms of size and location depending on your requirements. All our properties are equipped as you\'d expect in the modern world for your convenience, even with the inclusion of complimentary wifi to help you stay connected for work or researching the local attractions</p>
           <p>The ever expanding shopping centre is with easy walking distance and includes House of Fraser, Marks and Spencer, John Lewis amongst others with the Castle Mall and Chapelfield shopping centres too, giving you plenty to do on your stay in Norwich.</p>
           <p>So whether you are taking a city break, longer term corporate contract or just a relaxing Norfolk holiday, our luxury serviced accommodation offers a superb, convenient and economical solution for your stay.</p>',
    in_menu: false,
    home: true,
    protected: true,
    banner: File.open(File.join(Rails.root, "seed_data/banners/home.jpg"))
  ).meta_data.update(
    url_alias: 'home',
    description: 'If you’re visiting for business or pleasure, our stylish serviced apartments in and around the medieval city of Norwich make the perfect place to stay.',
    title: 'Serviced Apartments Norwich | Luxury City Apartments'
  )

  Page.create!(
      name: 'Accommodation',
      body: '<h1>Serviced Apartments Norwich</h1><p>Our luxury serviced apartments, cottages and houses are a great way to stay and enjoy luxury accommodation with space and privacy that perhaps you would not necessarily experience when staying in a hotel at such an affordable price.Whether visiting for business or pleasure, our stylish serviced apartments in and around the medieval City of Norwich make a great centre point base for your visit to the City or Norfolk countryside.</p>',
      in_menu: true,
      banner: File.open(File.join(Rails.root, "seed_data/banners/accommodation.jpg")),
      apartment_ids: [1, 2, 3, 4]
  ).meta_data.update(
      url_alias: 'accommodation',
      description: 'We provide luxury serviced Norwich apartments to rent in and around the city centre. Our serviced apartments make the perfect place to stay in this wonderful city.',
      title: 'Norwich Serviced Apartments | Luxury City Apartments'
  )

  Page.create!(
      name: 'Corporate',
      body: '<h1>Norwich Apartments for Corporate Travelers</h1>',
      in_menu: true,
      banner: File.open(File.join(Rails.root, "seed_data/banners/corporate.jpg"))
  ).meta_data.update(
      url_alias: 'corporate',
      description: 'We offer a variety of Norwich serviced apartments perfect for corporate purposes. Our apartments make the perfect stay to see this mediaeval city.',
      title: 'Norwich Serviced Apartments Corporate Travelers | Luxury City Apartments'
  )

  Page.create!(
      name: 'Leisure',
      body: '<h1>Holiday Apartments for Leisure in Norwich</h1>',
      in_menu: true,
      banner: File.open(File.join(Rails.root, "seed_data/banners/leisure.jpg"))
  ).meta_data.update(
      url_alias: 'leisure',
      description: 'Our holiday apartments in Norwich are perfect for a leisure stay. It’s a great way to see the mediaeval city, with cobble lanes and unique spots you’ll soon be amazed.',
      title: 'Holiday Apartments Norwich, Leisure | Luxury City Apartments '
  )

  Page.create!(
      name: 'Visit Norwich',
      body: '<h1>Visit Norwich</h1>',
      in_menu: true,
      banner: File.open(File.join(Rails.root, "seed_data/banners/visit-norwich.jpg"))
  ).meta_data.update(
      url_alias: 'visit-norwich',
      description: 'There are a lot of places to see in Norwich, so why not visit Norwich and stay in one of our Norwich apartments providing a great way to see the City.',
      title: 'Visit Norwich | Places To See In Norwich| Luxury City Apartments '
  )

  Page.create!(
      name: 'About Us',
      body: '<h1>About Us</h1>',
      in_menu: true,
      banner: File.open(File.join(Rails.root, "seed_data/banners/about-us.jpg"))
  ).meta_data.update(
      url_alias: 'about-us',
      description: 'Luxury City Apartments provides a range of serviced apartments in and around the city of Norwich, for either leisure or corporate traveler.',
      title: 'About Us | Luxury City Apartments'
  )

  Page.create!(
      name: 'Let your property',
      body: '<h1>Let your property in Norwich</h1>',
      in_menu: true,
      banner: File.open(File.join(Rails.root, "seed_data/banners/let-your-property.jpg"))
  ).meta_data.update(
      url_alias: 'let-your-property',
      description: 'Luxury City Apartments can help you let your property. If you are thinking about letting your property out in Norwich Luxury City Apartments would like to help you. ',
      title: 'Let your property | Luxury City Apartments'
  )

  Page.create!(
      name: 'Contact Us',
      body: '<h1>Contact Us</h1><p>If you are visiting the medieval City of Norwich for business or pleasure our stylish apartments are a great way to stay and enjoy luxury accommodation as well as the space and privacy that perhaps you would not necessarily have when staying in a hotel.</p><p>To book any of our properties or to discuss your requirements in further detail please contact: Emily Bidwell on 07771 881 456 or use the contact form provided.</p>',
      in_menu: false,
      contact: true,
      protected: true,
      banner: File.open(File.join(Rails.root, "seed_data/banners/contact-us.jpg"))
  ).meta_data.update(
      url_alias: 'contact-us',
      description: 'Contact us today for any questions or bookings you have on any of our Norwich apartments.',
      title: 'Contact Us | Luxury City Apartments'
  )



end