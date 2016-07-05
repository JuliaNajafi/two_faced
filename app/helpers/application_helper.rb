

module ApplicationHelper
  def parse_title_and_img url
    res = HTTParty.get(url)
    page = Nokogiri::HTML(res)
    result = Hash.new
    result[:title] = page.css("title").text
    result[:image] = page.css('[property="og:image"]').first['content']
    return result
    # httparty Call
    # parse that response into html w/ NOKOgiri
    # grab the title from the html
    # grab the image_url from the html
    # return an a hash with both things
  end
end
