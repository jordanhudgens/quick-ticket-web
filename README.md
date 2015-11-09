# RaiderTicket (formerly QuickTicket)

### This open source mobile application enables users to remotely submit tickets for work performed in the field, including: a description of the work performed, the hours per job, the mileage and what customer the job was done for. This can be run as a web application [here](http://quick-ticket-ttu.herokuapp.com/, "here"), or you can access the Android application that renders the app [here](https://github.com/iolivas13/Quick_Ticket, "here").

## Installation Instructions

If you do not want to install the Android application, you can run the program on your local machine. The installation process for Rails is quite extensive, which is why I always recommend that developers leverage pre-existing tools out there that will walk them through it. Follow the steps outlined at [InstallRails](http://installrails.com/, "InstallRails") and it will outline everything that is required for your specific operating system.

After you have rails on your operating system, you can run this program by running the following commands in the Unix terminal:

* ``` git clone https://github.com/jordanhudgens/quick-ticket-web.git ```

* ``` cd quick-ticket-web ```

* ``` bundle install ``` (if this gives you an error, make sure you have the [bundler gem](http://bundler.io/, "bundler gem") installed on your system)

* ``` rake db:create ```

* ``` rake db:migrate ```

* ``` rails s ```

* Then go to ``` localhost:3000 ``` in your browser
