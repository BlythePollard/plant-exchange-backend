# Plant Exchange - Backend

Plant Exchange is a social app built with Rails, React, and Redux. As its name suggests, the app allows users to exchange plants with each other. A user can upload a plant name and a short description, and this plant then appears on the app homepage. When another user would like to claim this plant, they can access the owner's email address and initiate the exchange. On many social apps like Facebook Marketplace and Craigslist, neighbors ask for money for houseplants and garden plants that they do not want. The idea behind Plant Exchange is to provide a platform for exchanging of plants that is not monetized, but rather is based on sharing and neighborhood connections. 

## Installation

Clone the backend and frontend repos (frontend at https://github.com/BlythePollard/plant-exchange-frontend). Navigate to the backend in the terminal. Ensure that dependencies are installed by running 'bundle install', ensure that migrations are completed by running 'rails db:migrate', and seed the two users, user1 and user2, by running 'rails db:seed'.

In one terminal tab, launch the backend using 'rails s'.

In a second tab, launch the frontend using 'npm start'- allow server to start on http://localhost:3001.

Navigate to http://localhost:3001 to launch the app.

## Usage

This app does not yet have the capability to create an account/register, so please log in as either 'user1' or 'user2', the seeded users. Once logged in, user can upload a new plant and description, view other plants that are available, and click on plants of interest to get the email address of the plant owner. Plant owners are responsible for deleting their plant once it has been claimed by a neighbor. 

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.



