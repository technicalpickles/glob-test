# glob test

Check globs against different languages and libraries!

Different projects use different languages and/or glob implementations. I originally wrote this to help me test converting javascript regex to globs for use in [lefthook](https://github.com/evilmartians/lefthook). Maybe you'll find it useful?


## ruby

Using stdlib:

```
❯ ruby ruby/glob.rb "**/*.rb" "glob.rb"
"foo.rb" matches "**/*.rb"

❯ ruby ruby/glob.rb "**/*.rb" "foo.py"
"foo.py" does not match "**/*.rb"
```

## go

Using [gobwas/glob](https://github.com/gobwas/glob):

```
❯ go run go/glob.go "**/*.rb" "glob.rb"
"glob.rb" does not match "**/*.rb"

❯ go run go/glob.go "**/*.rb" "foo.py"
"foo.py" does not match "**/*.rb"
```

## node

Using [isaacs/minimatch](https://github.com/isaacs/minimatch)

```
❯ node node/glob.mjs "**/*.rb" "glob.rb"
"glob.rb" does not match "**/*.rb"

❯ node node/glob.mjs "**/*.rb" "foo.py"
"foo.py" does not match "**/*.rb"
```

## bash

Using bash

```
❯ bash bash/glob.sh "**/*.rb" "glob.rb"
"glob.rb" does not match "**/*.rb"

❯ bash node/glob.sh "**/*.rb" "foo.py"
"foo.py" does not match "**/*.rb"
```

## Contributing

I can't guarantee how much I will do on this beyond what there is, but happy to review and/or add other folks. I'd like to keep things pretty simple though (unless I change my mind)


I use [lefthook](https://github.com/evilmartians/lefthook) for a precommit hook. Follow the [installation guide](https://github.com/evilmartians/lefthook/blob/master/docs/install.md), then run `lefthook install` to configure the pre-commit hook.

