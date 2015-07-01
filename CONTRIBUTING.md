# Contributing

When you want to add something or fix a bug, I'm happy to accept a Pull
Request. To do so please follow the following steps:

Fork, then clone the repo:

    git clone git@github.com:your-username/svbc.git

Make sure the tests pass:

    bats unit_tests.bat

Make your change. Add tests for your change. Make the tests pass:

    bats unit_tests.bat

Push to your fork and [submit a pull request][pr].

[pr]: https://github.com/niels-s/svbc/compare/

* Write tests.
* Write a [good commit message][commit].

[commit]: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
