#!/usr/bin/python3
"""Return the number of suscribers for a given subreddit - Reddit API"""
import requests


def number_of_subscribers(subreddit):
    r = subreddit
    data = requests.get("https://www.reddit.com/r/{}/about.json".format(r),
                        headers={'User-agent': 'ezenoese'},
                        allow_redirects=False)

    if data.status_code == 200:
        return data['data']['subscribers']
    return 0
