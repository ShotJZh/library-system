import requests
from lxml import etree
import mysql.connector
import os
import time
import re


class CsdnSpider (object):
    def __init__(self,url,headers):
        self.url = url
        self.headers = headers

    def craw(self):
        response = requests.get(self.url,self.headers)
        response.encoding='utf-8'
        html = response.text
        #print(html)
        parsed_html = etree.HTML(html)
        news_pics = parsed_html.xpath('//ul[@class="company_list"]//li/div[1]/a/img')
        news_titles = parsed_html.xpath('//ul[@class="company_list"]//li/div[2]/h3/a')
        #print(news)

        conn = mysql.connector.connect(user='root', password='20070623Jz', database='library', use_unicode=True)
        cursor = conn.cursor()
        
        folder_path = 'images\\spider'
        #print(folder_path)
        if os.path.exists(folder_path) == False:  
            os.makedirs(folder_path)
        
        n_pics = []
        n_titles = []
        n_links = []

        
        for index,news_pic in enumerate(news_pics):
            #print(news_pic)
            img_path = folder_path + '\\pic' + str(index) +'.png'
            print(img_path)
            img_path = img_path.replace('\\','/')
            print(img_path)
            #print(news_pic.get("src"))
            img_url = news_pic.get('src')
            if "https" not in img_url:
                img_url = "https:" + img_url
            pic_binary = requests.get(img_url).content
            with open(img_path,'wb') as f:
                f.write(pic_binary)
                f.flush()
            f.close()
            
            n_pics.append(img_path)
          

        for news_title in news_titles:
            news_link = news_title.get('href')
            if "http" not in news_link:
                continue
            news_title = news_title.text
            print(news_title)
            n_titles.append(news_title)
            n_links.append(news_link)


        sql_string = 'DELETE FROM news WHERE 1=1;' #清空整张表
        #print(sql_string)
        cursor.execute(sql_string)
        for index in range(len(n_titles)):
            n_date = '"'+time.strftime("%Y-%m-%d")+'"'
            n_title = '"'+n_titles[index]+'"'
            n_link = '"'+n_links[index]+'"'
            n_pic = '"'+n_pics[index]+'"'

            sql_string = 'INSERT INTO news(n_date,n_title,n_link,n_pic) VALUES('+ n_date +','+ n_title +','+ n_link +','+ n_pic +');'
            print(sql_string)
            #print(sql_string)
            cursor.execute(sql_string)

        cursor.close()
        conn.close()
           
            



if __name__ == '__main__':
    headers = {
            'User-Agent': "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36"
            }
    url='https://www.csdn.net/'
    spider = CsdnSpider(url,headers)
    spider.craw()
