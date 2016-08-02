task gen_gallery_page: :environment do

  Page.get_from_url('visit-norwich').update(protected: true, in_menu: false)

end
