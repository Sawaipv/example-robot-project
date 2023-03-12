from bs4 import BeautifulSoup
import requests

# specify the URL of the page you want to extract the title from
url = 'https://www.amazon.in/Samsung-Galaxy-Cloud-128GB-Storage/dp/B08V9VMRQF/ref=sr_1_1_sspa?crid=3G70JGMW6P8PZ&keywords=smartphone&qid=1678617389&sprefix=smartphone%2Caps%2C730&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1'

# send a GET request to the specified URL and get the HTML content
response = requests.get(url)
html_content = response.content

# parse the HTML content using BeautifulSoup
soup = BeautifulSoup(html_content, 'html.parser')

# find the title tag and get its text
title = soup.title.text

# print the title
print(title)
