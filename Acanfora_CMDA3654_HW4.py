
# coding: utf-8

                
                
# In[77]:

import pandas
import numpy
import matplotlib.pyplot as plt


data_frame = pandas.read_csv('vehicles.csv')
data_frame['rangeA'].describe()
data_frame['rangeCity'].describe()
data_frame['rangeHwy'].describe()
data_frame['tCharger'].describe()
data_frame['sCharger'].describe()
data_frame['range'].describe()
data_frame['rangeCityA'].describe()
data_frame['rangeHwyA'].describe()

#5 perform any needed treatment for missing values.
data_frame['guzzler'].fillna('F')
data_frame['tCharger'].fillna('F')
data_frame['sCharger'].fillna('F')
data_frame['evMotor'].fillna('F')

#7 3 visualizations 
#x = data_frame['trany'].unique().tolist()
group = data_frame.groupby('trany')
y1 = group[['city08']].mean()
#x = y1.index.values.tolist()
#y = y1['city08'].tolist()

y1.plot(kind='bar')
fig = plt.gcf()
fig.savefig('chart1.png')

group2 = data_frame.groupby('tCharger')
y2 = group2[['city08']].mean()

y2.plot(kind='bar')
fig2 = plt.gcf()
fig2.savefig('chart2.png')

group3 = data_frame.groupby('trany')
y3 = group3[['highway08']].mean()

y3.plot(kind='bar')
fig3 = plt.gcf()
fig3.savefig('chart3.png')

#8 save data frame as a pickle
data_frame.to_pickle('vehicles_pickles.pkl')


# In[46]:




# In[ ]:



