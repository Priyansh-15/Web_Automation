class GoogleForm
  include PageObject
  include DataMagic

  page_url 'https://forms.gle/Jwzq25buDykE3PBBA'
  text_field(:name, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[1]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:email, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[3]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:address, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[4]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:phone_number, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[5]/div/div/div[2]/div/div[1]/div/div[1]/input')
  text_field(:comment, xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[6]/div/div/div[2]/div/div[1]/div/div[1]/input')
  div(:submit,xpath: '//*[@id="mG61Hd"]/div[2]/div/div[3]/div[1]/div[1]/div')
  div(:male,xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[2]/div/div/div[2]/div[1]/div/span/div/div[1]')
  div(:female,xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[2]/div/div/div[2]/div[1]/div/span/div/div[2]')
  div(:other,xpath: '//*[@id="mG61Hd"]/div[2]/div/div[2]/div[2]/div/div/div[2]/div[1]/div/span/div/div[3]')


  def visit
    goto
  end

  def fill_details
    person_details=data_for :form_entry
    populate_page_with person_details
    if person_details['gender'] == 'Male'
       male_element.click
     elsif person_details['gender'] == 'Female'
       female_element.click
     else
       other_element.click
    end
    sleep 3
  end

  def submit_details
    submit_element.click
  end
end
