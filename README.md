# Twitch_Project
An exercise in web scraping, SQL database management, and data analysis for the social gaming website known as Twitch. 

Ever since I started an Etsy in 2017 I've been very intrigued by SEO and how the use of certain words can either land you a considerable audience or leave you feeling like no one will ever see your work. What is the exact formula needed to be well known on the internet? Is it purely luck or is it the will to learn and put in the work? With this project I wanted to investigate how much or how little certain categories were interacted with. Twitch also has a system of hashtags to help organize it's categories, so I included that in the analysis as well. I obtained FOUR instances of data from webscraping over the period of August 28th - August 31st (2020). I will likely obtain more in the near future, but I wanted to make sure I could first develop a system for processing the data beforehand.

This was the process:

1. Web Scraping
    I used an application called ParseHub to extract data from twitch.tv/directory. ParseHub has a systematic way of scraping data. You can think of it like a tree graph. I selected my main data as the name of each category. Then I added relative data like the number of viewers under each category, and any associated tags. ParseHub scans all the information and gives you a few options for exporting (csv, excel, json). Once exported, I looked over the data in google sheets. There were a few minor issues that needed tweaking. For example, Twitch formats their viewer count in terms of 'K' instead of thousands. Eg, if a category had 22,000 viewers, it showed up in the data as '22k viewers'. I solved this by custom filtering out the 'K viewers' part and then adding a new column that multiplied all viewers over 1K by 1000. I then made a third column to copy and paste the data, so I could delete the two prior columns and make it look clean.
    Because of the website formatting, I was also unable to add all tags to a single column. The tags that appeared first went under 'tag1' and the tags that appeared second went under 'tag2'. Some categories had only one tag, or no tags. Some categories also had three tags but it was such a low number I decided to exclude it from the data.
    
2. Table manipulation via Microsoft SQL Server Management Studio
  
