HelpDesk
========
By Robin Swenson-Healey
-----------------------

Description
-----------
This simple Ruby on Rails app showcases ActionMailer for sending emails and Postmark for handling incoming emails.

Gems used include:
```Ruby
gem 'postmark'
gem 'mail'
gem 'roadie'
gem 'letter_opener'
```

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

