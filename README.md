HelpDesk
========
By Robin Swenson-Healey
-----------------------

Description
-----------
This simple Ruby on Rails app showcases ActionMailer for sending emails and Postmark for handling incoming emails.

Gems used include:
```Ruby
gem 'postmark-rails'
gem 'roadie'
gem 'letter_opener'
```
The flow is:
1. A user creates a ticket on the index
2. App via Postmark sends an email to user
3. Postmark also sends email to admin.
4. Admin can reply to email with reply text.
5. Postmark redirects json to App.
6. App creates Inbounds obj which modifies ticket.
7. Website index updated with new info.


By
--
**Robin Swenson-Healey**
Nov 22, 2013

Prompt
------
    As a Visitor (no user model needed),
        I want to create a new ticket on the web site
        so that I can report my problems.

    As a support agent (you?),
        I want to be notified with an email whenever a new ticket is created
        so that I don't need to access the site to see new tickets.

    As a support agent,
        I want to respond to new tickets by replying to the email
        so that I can work without leaving my inbox.

    As a Visitor,
        I want to see the support agent's reply on the web site
        so that I know someone is actually listening to my problems.

