
Issue.destroy_all
Headline.destroy_all

brexit = Issue.create(title: "Brexit", description: "Britain's decision to leave the EU", img_url: "https://static01.nyt.com/images/2016/03/12/world/brexit-promo/brexit-promo-master495.jpg")

brexit_left = Headline.create([
  {title:"Brexit Disaster", description: "This Is Just the Start of the Brexit’s Economic Disaster", source: "The New York Times", url:"http://www.nytimes.com/2016/06/27/opinion/this-is-just-the-start-of-the-brexits-economic-disaster.html", affiliation: "left", issue: brexit},
  {title:"Brexit", description: "Brexit was fueled by irrational xenophobia, not real economic grievances", source: "Vox", url:"http://www.vox.com/2016/6/25/12029786/brexit-uk-eu-immigration-xenophobia", affiliation: "left", issue: brexit}
])

brexit_right = Headline.create([
  {title:"Brexit: Sovereign Kingdom or Little England?", description: "Brexit's Cost: Will the United Kingdom & EU Survive the British Brexit Vote", source: "The National Review", url:"http://www.nationalreview.com/article/437361/brexit-cost-will-united-kingdom-eu-survive-british-brexit-vote", affiliation: "right", issue: brexit},
  {title:"Brexit and the Global Elite", description:"Chalk up another loss for the global elite after Brexit loss", source: "Fox News", url: "http://www.foxnews.com/opinion/2016/06/30/chalk-up-another-loss-for-global-elite-after-brexit-loss.html", affiliation: "right", issue: brexit}
])

abortion = Issue.create(title: "Reproductive Rights", description: "pro-choice or that other side?", img_url: "http://i.huffpost.com/gen/2555832/images/o-ABORTION-CLINIC-facebook.jpg")

headlines_abortion = Headline.create([
  {url:"http://www.nytimes.com/2016/06/28/us/supreme-court-texas-abortion.html", affiliation: "left", issue: abortion},
  {url: "http://www.foxnews.com/politics/2016/06/27/supreme-court-strikes-down-texas-abortion-law.html", affiliation: "right", issue: abortion}
])
