class HomePage < SitePrism::Page
  set_url '/'

  element :logo, 'a.logo'
  element :description, '.description'
end