# To-dü
## Instructions

We've been working on a side project – a to-do list app that students might end
up using to keep track of things they need to do during their application
process. We sent it over for testing and the test team emailed back with these
four bugs that they found (below).

We were hoping you could take a couple of hours (NOTE: it's up to you, but we're
not expecting this to take up too much of your time) to fix as many of these as
possible, and maybe make an extra improvement of your choice too.

```
From: Test Team <test@bridge-u.example>
To: You <you@bridge-u.example>
Subject: Bugs!

1. The flash messages (like "Item added" and "List deleted") appear right at the
   top of the page, but they should be in the main part of the page, just under
   the navigation bar.

2. I love that you can click "I've döne it!" to mark a todo item as complete,
   but after I click it, it shows the item twice - that's a mistake. Instead
   when I click "I've döne it!" I should just see the item crossed out, and the
   link should disappear

3. The page that shows all my lists has an icon telling me how many items are in
   the list. It should actually tell me how many items are *uncompleted* in the
   list.

4. When I log in, I can see all the lists belonging to other users. That
   seems like a big security risk.
```

As far as making "an improvement" goes, whatever you're happy to do to
demonstrate your work. Some examples: improving styling, adding extra
functionality, add some unit tests - or something else.

## Getting Started

To-dü is a plain Rails app, using some jQuery and SASS/SCSS.

To run it, you'll need Ruby 2.2.1 or higher, and the `bundler` gem installed.
The app was built with Ruby 2.3.0, but you should be able to edit the
`.ruby-version` file if you have a different version installed and are having
problems.

The app uses Sqlite so you shouldn't need any other database running.

Once you've checked out the code, all you should need to do to get the app
running is run the following commands. If this doesn't work then get in touch.

```
$ ./bin/setup

$ rails s
```
