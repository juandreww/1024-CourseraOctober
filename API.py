!pip install nba_api

def one_dict(list_dict):
    keys = list_dict[0].keys()
    out_dict = {key:[] for key in keys}
    for dict_ in list_dict:
        for key, value in dict_.items():
            out_dict[key].append(value)
    return out_dict

import pandas as pd
import matplotlib.pyplot as plt

dict_ = {'a':[11,21,31], 'b':[12,22,32]}
df = pd.DataFrame(dict_)
type(df)

df.head()

df.mean()

from nba_api.stats.static import teams
import matplotlib.pyplot as plt

nba_teams = teams.get_teams()
nba_teams[0:3]

dict_nba_team = one_dict(nba_teams)
df_teams = pd.DataFrame(dict_nba_team)
df_teams.head()

df_warriors = df_teams[df_teams['nickname'] == 'Warriors']
df_warriors

id_warriors = df_warriors[['id']].values[0][0]
id_warriors

from nba_api.stats.endpoints import leaguegamefinder

gamefinder = leaguegamefinder.LeagueGameFinder(team_id_nullable = id_warriors)
gamefinder.get_json()
games = gamefinder.get_data_frames()[0]
games.head()

