# Twitch_Project
An exercise in web scraping, SQL database management, and data analysis for the social gaming website known as Twitch. 

Ever since I started an Etsy in 2017 I've been very intrigued by SEO and how the use of certain words can either land you a considerable audience or leave you feeling like no one will ever see your work. What is the exact formula needed to be well known on the internet? Is it purely luck or is it the will to learn and put in the work? With this project I wanted to investigate how much or how little certain categories were interacted with on Twitch. Twitch has a system of hashtags to help organize it's categories, so I included that in the analysis as well. I obtained four instances of data from webscraping over the period of August 28th - August 31st (2020). I will likely obtain more in the near future, but I wanted to make sure I could first develop a system for processing the data beforehand.

This was the process:

1. Web Scraping:

    I used an application called ParseHub to extract data from twitch.tv/directory. ParseHub has a systematic way of scraping data. I selected my main data as the name of each category. I then added relative data like the number of viewers under each category, and any associated tags. ParseHub scans all the information and gives you a few options for exporting (csv, excel, json). Once exported, I looked over the data in google sheets. There were a few minor issues that needed tweaking. For example, Twitch formats their viewer count in terms of 'K' instead of thousands. Eg, if a category had 22,000 viewers, it showed up in the data as '22k viewers'. I solved this by custom filtering out 'K viewers' and adding a new column that multiplied all viewers over 1K by 1000. I then made a third column to paste the values in, so I could delete the two prior columns and make it look a little cleaner.
    One minor limitation came from Twitch's website formatting. I was unable to add all tags to a single column. The tags that appeared first went under a 'tag1' cloumn and the tags that appeared second went under one called 'tag2'. Some categories had only one tag, or no tags. Some categories also had three tags but it was such a low amount I decided to exclude them from the data.
    
2. Table manipulation via Microsoft SQL Server Management Studio:
    
    I uploaded the tables into MS SQL Server Management Studio via the Import and Export Wizard. I started with 5 original tables, one for each date, and a fifth table that was a record of all tags used over the time period. In addition, I created two other permanent tables by combining the data with SQL. My table 'dbo.stats' consists of the aggregate data for the viewers column of each day (min, max, total, and average). My other table 'dbo.top15' took the 15 categories with the most viewers on each day, added them together, and sorted them by category. When I sampled the top 15 categories, there was a total of 20 distinct categories that had made it to top 15 status. 
    There were a few temporary tables I saved with interesting data, as well. 

3. Analysis and Comparison:

    I am a very visual learner so as soon as I had my modified data I went ahead and created some graphs for it via Google Sheets. You can see these graphs in xxxxxxxxxxxx. One thing I found interesting was how popular the "Just Chatting" category was. It's not a video game, it's just a way for streamers to sit down and talk with their viewers about anything that comes up. This makes me wonder what people value more in Twitch streamers. Does it matter what game you are streaming as long as you have an entertaining personality? How much does the appearance of the individual matter and how would we translate that into data? 
    Lastly, I wanted to see if my findings matched with what others may have found. I did a quick google search for "most popular games on twitch" and surprisingly, not a single game listed by google was on my top 20 list. However I checked a site called "twitchtracker" and found that my findings matched up with theirs. I'm assuming they also have a web scraping process set up and some sort of API that constantly updates the website. 

Anyway, thanks for checking out my project!
  
