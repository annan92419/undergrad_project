<h2>
Application of Machine Learning in Predicting Hostel Prices: A Case Study of KNUST
</h2>

#### (Other) Contributors
  
  - :woman_technologist: Boateng Gloria Maame Serwaa
  - :man_technologist: Dente-Quarshie Obeng Kwame
  

---
### ABSTRACT

<p> 
  Machine learning, which dates back to the 1950s, aims to make accurate predictions with unseen (similar) data based on patterns discovered in existing data. In the real estate market, machine learning algorithms have been deployed in either determining house price indexes or estimating house sale prices. The latter is being studied the most by considering factors such as location, population, proximity to a nearby station, zip code, and many more. However, research on hostel price prediction is rare, if not nonexistent. To help bridge the gap, we will explore the impact of hostel features using three machine learning algorithms: multiple linear regression, ridge regression, and neural network, in predicting hostel prices. Empirical results support the potential of machine learning algorithms on the hostel market, with all $R^2$ greater than 0.75.
  </p>

<br>
  
### A BIT ABOUT THE DATA

  
  For this study, data were obtained through interviews with student residents in the hostels. The dataset is a cleaned dataset from 495 responses from 70 distinct hostels. <br>
  :triangular_flag_on_post: The accuracy values may be decieving due to the small number of data used in this study. On that note, we believe this is basically a baseline for future research.
  
  | Name | Type | Description |
  | :--- | :----: | :--- |
  | location | categorical | general location of hostel |
  | grade | numerical | average of students' evaluation |
  | rank | categorical | overall quality of hostel |
  | beds | numerical | beds in a room |
  | study room | categorical | hostel's study room |
  | tv room | categorical | hostel's tv room |
  | security | categorical | security personnel or post |
  | food joint | categorical | food joint within 5 minutes walk |
  | external power | categorical | another source of power |
  | ac | categorical | air conditioner in a room |
  | proximity | numerical | distance to ac{cos} |
  | post code | categorical | post code of hostel |
  | latitude | numerical | hostel's latitude |
  | longitude | numerical | hostel's longitude |
  | price2018 | numerical | price of room for 2018/19 in cedis |
  | price2019 | numerical | price of room for 2019/20 in cedis |
  | price2020 | numerical | price of room for 2020/21 in cedis (target feature) |

<p>
  
</p>
  
---
### ACKNOWLEDGEMENT
  
  - :man_teacher: Charles Sebil PhD
  - :woman_technologist: Deborah Dormah Kanubala PhD
  - :man_teacher: Emmanuel Kofi Gavu PhD 
