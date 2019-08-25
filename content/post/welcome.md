+++
title = "RIO DEV"
date = 2019-08-22T15:06:11+08:00
description = "THIS IS RIO DEV BRANCH"
draft = true
toc = false
categories = ["hacking"]
tags = ["after", "dark"]
images = [
  "https://source.unsplash.com/collection/983219/1600x900"
] # overrides site-wide open graph image
[[copyright]]
  owner = "After Dark"
  date = "2019"
  license = "cc-by-nc-sa-4.0"
+++

RIO DEV

```
RIO DEV
```

If `post.md` does not exist yet, copy it from the After Dark default:

```sh
$ cd flying-toasters
$ cp themes/after-dark/archetypes/post.md archetypes/
```

Make some changes to `post.md` then use `hugo new` to draft a new post:

```sh
$ vi archetypes/post.md # or vim, emacs, nano ...
$ hugo new post/totally-twisted.md
```

If `hugo server` is running with the `--navigateToChanged` flag your new post will appear automatically in JavaScript-enabled browsers. If you see an empty page you probably need to restart `hugo server` with the `--buildDrafts` flag.

Use archetypes to maintain consistency when creating content for [Custom Layouts](http://localhost:1414/feature/custom-layouts). Like custom layouts {{< external href="https://gohugo.io/content-management/archetypes/" text="Hugo Archetypes" />}} may contain templating logic.

<!--more-->
