import requests
import json


#response = requests.get('https://api.stackexchange.com/2.3/questions?order=desc&sort=activity&site=stackoverflow')
response = requests.get('https://api.stackexchange.com/2.3/search?order=desc&sort=activity&intitle=kubernetes&site=stackoverflow')
for data in (response.json()['items']):
    if data['answer_count'] == 0:
        print()
        print(data['title'])
        print(data['link'])
        print()
    else:
        print('Skipped...')
    

print(response)
