## React-Redux Frontend

The associated React-Redux frontend for this project can be found [here](https://github.com/Soundwood/HomeCalc-frontend)

# About

HOMECALC API is intended to be used with the HOMECALC Frontend. The site allows a user to login and signup and keep track of their own 'scenarios'. These 'scenarios' include information like net income credit score and total monthly debt. No need to provide local property tax rates or mortgage interest rates. SMARTHOMECOST then uses this information and several 'Rules of Thumb' to determine how much home the user, given that particular scenario, can afford. The analysis of each are arranged from most to least frugal and provide some additional information such as the resulting monthly mortgage and tax costs.

# How to Use / Setup

1. Clone this Repo
2. Run 'bundle install' 'rails db:create' 'rails db:migrate' 'rails db:seed'
3. Run 'rails s' to start the server (Frontend assumes backend API running on localhost:3000) 