# jackson dotfiles

Based on the Holman organiced dotfiles, this are addapted to my taste and
specially to linux (Holman's are for Mac).

## what makes this special?

The idea is that this should work in fedora, ubuntu and debian. I use fedora
the most, but I use Debian and ubuntu also.
It should be less invasive (I will erase non essencial aliases so you can make
your own).

## dotfiles

Your dotfiles are how you personalize your system. These are mine.
This dotfiles are designed to work with:
* Fedora 14 | Debian stable | ubuntu stable.
* zsh
* RVM (Ruby Version Manager)
* Rails >=3.
* git
* vim (this is not really true).

If you match up along most of those lines, you could fork my dotfiles try them
and work whit me (or us) making this better.

## Organization

@Holman: I was a little tired of having long alias files and everything strewn
about (which is extremely common on other dotfiles projects, too). That led to
this project being much more topic-centric. I realized I could split a lot of
things up into the main areas I used (Ruby, git, system libraries, and so on),
so I structured the project accordingly.
If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read my post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

### topical

@Holman: Everything's built around topic areas. If you're adding a new area to
your forked dotfiles — say, "Java" — you can simply add a `java` directory and
put files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `rake install`.

## install

- make a simple backup of `~/.*`
- `git clone git://github.com/lmhsjackson/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`
- Modify `zsh/zshrc.symlink` as you like.
- Select zsh as your shell.
- Restart.

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

## what's inside

A lot of what's inside is just aliases: `gs` for `git status`, `gl` for `git
pull --rebase --prune`, for example. You can browse the `aliases.zsh` files in
each topic directory. There's also a collection of scripts in `bin` you can
browse. A few notable ones:

###rails
- `s` pings your system for any running Rails apps, and `deathss` will then
  kill all of them indiscriminately. `ss` starts up a new Rails server on the
  next available port- if 3000 is taken, it'll spin up your server on 3001.

###system
- `c` is an autocomplete shortcut to your projects directory. For example, `c
  git` and then hitting tab will autocomplete to `github`, and then it simply
  changes to my `github` directory.
- `check [filename]` is a quick script that tells you whether a domain is
  available to register.
- `smartextract [filename]` will extract about a billion different
  compressed/uncompressed/whatever files and you'll never have to remember the
  syntax.
- `backup` is a quick hook into `rsync` to backup a selection of files. Check
  out the comments for more details.

###fun
- `cloudapp` uploads any file to [CloudApp](http://getcloudapp.com).
- `gifme` is a command-line animated GIF generator. It's also amazing.

##moar custom
There are a few things I use to make my life awesome. They're not a required
dependency, but if you make it happen, THEY'LL MAKE **YOU** HAPPEN.

- If you want some more colors for things like `ls`, install grc: `brew install
  grc`.
- If you install the excellent [rvm](http://rvm.beginrescueend.com) to manage
  multiple rubies, your current branch will show up in the prompt. Bonus.

## thanks (credits)

I forked [@Holman](http://github.com/holman) organiced dotfiles in 2011 and I like them, and I liked zsh too.
Holman forked [Ryan Bates](http://github.com/ryanb)' [dotfiles](http://github.com/ryanb/dotfiles) for a couple years before the
weight of my changes and tweaks inspired me to finally roll my own. But Ryan's
dotfiles were an easy way to get into bash customization, and then to jump ship
to zsh a bit later. A decent amount of the code in these dotfiles stem or are
inspired from Ryan's original project.

