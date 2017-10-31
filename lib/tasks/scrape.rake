

namespace :scrape do
   desc "Scrape item information from product URL"
   task :title => :environment do
       #url = "https://store.nike.com/us/en_us/pd/react-hyperdunk-2017-flyknit-basketball-shoe/pid-11598226/pgid-12086676#"
       #page = HTTParty.get(url)
       
       filename = Rails.root.join("lib","testscrape","Nike_test.html")
       page = open(filename)
       
       doc = Nokogiri::HTML(page)
       
       ap doc.css("title").text.strip
    end
    
    task :price => :environment do
        filename = Rails.root.join("lib","testscrape","Nike_test.html")
       page = open(filename)
       
       doc = Nokogiri::HTML(page)
       
       price = doc.at_css("meta[property*='price:amount']")['content']
       ap price
        
    end
    
    task :vendor => :environment do
        filename = Rails.root.join("lib","testscrape","Nike_test.html")
       page = open(filename)
       
       doc = Nokogiri::HTML(page)
       
       site = doc.at_css("meta[property*='site_name']")['content']
       ap site
        
    end
end