About
---
As developers, we try to automate and build shortcuts to improve our workflow. Sometimes we always run the same command in a specific project directory and a slightly different command or the same command with slightly different parameters in another.

A good example is when pushing code, we might run `git push origin master` for one repository, but for another, we might want to run `hub push origin,deploy master` instead. `genie` helps you do that.

`genie` lets you create commands that are bound to directories. In our example, we can create a `push` command that, depending on which directory we run it in, invoke the correct push command.

[![Gem Version](https://badge.fury.io/rb/command-genie.png)](http://badge.fury.io/rb/ruby_motion_query)

Usage
---
Here's how to create a command with `genie`:

1. Create a YAML configuration file matching the softlink in your user directory's `.config` directory. e.g. For the command called `push`, you would create `~/.config/push.yml`.

    Contents for the YAML file are key-value mappings from a directory path to the command to be ran in that directory (and it's subdirectories):

    ```
    /Users/hboon/code/piggyalarm: git push bb master
    /Users/hboon/code/simplymeta: hub push bb,deploy master
    ~/code/ligify: git push bb master
    ```

    You can also run `genie create <command>` to help you create a sample YAML file.

2. Create a softlink to `genie` with a sensible name and make sure it's in your $PATH, e.g.

    ```
    ln -s genie push
    ```

Installation
---
`gem install command-genie`

Dependencies
---
* [commander](https://github.com/tj/commander)

License
---
BSD

Questions
---
* Email: [hboon@motionobj.com](mailto:hboon@motionobj.com)
* Web: [http://hboon.com/genie/](http://hboon.com/genie/)
* Twitter: [https://twitter.com/hboon](https://twitter.com/hboon)
