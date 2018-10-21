import urllib
import urllib.request
from bs4 import BeautifulSoup
import datetime

day_counter = (datetime.date(2015,10,29)-datetime.date(2015,5,27)).days
urls= []
def fill_urls():
    i=0
    for i in range(day_counter):
        date_today= datetime.date(2014,12,20)-datetime.timedelta(days=i)
        x=str(date_today)
        y=x.replace("-","")
        y=str(y[2:])
        url_name= "https://apod.nasa.gov/apod/ap{}.html".format(y)
        urls.append(url_name)
    print(urls)
    return urls
fill_urls()

def url_maker(url):
    thepage = urllib.request.urlopen(url)
    soupdata = BeautifulSoup(thepage, "html.parser")
    return soupdata

i=1
f=0
for j in range(day_counter):
    page1 = urls[f]
    thepage = urllib.request.urlopen(page1)
    soup = BeautifulSoup(thepage, "html.parser")
    for img in soup.findAll('a'):
        temp= str(img.get('href'))
        if temp.startswith('image'):
            print (temp)
            image = "https://apod.nasa.gov/apod/{}".format(temp)
            print(str(image))
    
    nametemp = 'jamaican'
    filename= nametemp + '{}'.format(i)
    i += 1
    print(filename)
    imagefile = open(filename + ".jpeg", "wb")
    imagefile.write(urllib.request.urlopen(image).read())
    imagefile.close()
    f+=1
