## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/pboling/active_security][🚎src-main]
. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to
the [code of conduct][🤝conduct].

To submit a patch, please fork the project and create a patch with tests. Once you're happy with it send a pull request.

## Appraisal & Combustion

### Generate a new set of Appraisal gemfiles:

```sh
BUNDLE_GEMFILE=gemfiles/vanilla.gemfile appraisal generate
```

NOTE: Due to a bug in Appraisal, in each generated gemfile, you'll need to replace this line:
```ruby
gemspec path: "../../"
```
with
```ruby
gemspec path: "../"
```

## Release

To release a new version:

1. Run `bin/setup && bin/rake` as a tests, coverage, & linting sanity check
2. Update the version number in `version.rb`
3. Run `bin/setup && bin/rake` again as a secondary check, and to update `Gemfile.lock`
4. Run `git commit -am "🔖 Prepare release v<VERSION>"` to commit the changes
5. Run `git push` to trigger the final CI pipeline before release, & merge PRs
   a. NOTE: Remember to [check the build][🧪build]!
6. Run `git checkout main`
7. Run `git pull origin main` to ensure you will release the latest trunk code.
8. Set `SOURCE_DATE_EPOCH` so `rake build` and `rake release` use same timestamp, and generate same checksums
   a. Run `export SOURCE_DATE_EPOCH=$EPOCHSECONDS && echo $SOURCE_DATE_EPOCH`
   b. If the echo above has no output, then it didn't work.
   c. Note that you'll need the `zsh/datetime` module, if running `zsh`.
9. Run `bundle exec rake build`
10. Run [`bin/checksums`][🔒️rubygems-checksums-pr] to create SHA-256 and SHA-512 checksums
    a. Checksums will be committed automatically by the script, but not pushed
11. Run `bundle exec rake release` which will create a git tag for the version,
    push git commits and tags, and push the `.gem` file to [rubygems.org][💎rubygems]

NOTE: You will need to have a public key in `certs/`, and list your cert in the
`gemspec`, in order to sign the new release.
See: [RubyGems Security Guide][🔒️rubygems-security-guide]

## Honorable Mentions

This gem is *heavily based* on the venerable [`friendly_id`](https://github.com/norman/friendly_id).

## Contributors

[![Contributors][🖐contributors-img]][🖐contributors]

Made with [contributors-img][🖐contrib-rocks].

[🧪build]: https://github.com/pboling/active_security/actions
[🤝conduct]: https://github.com/pboling/active_security/blob/main/CODE_OF_CONDUCT.md
[🖐contrib-rocks]: https://contrib.rocks
[🖐contributors]: https://github.com/pboling/active_security/graphs/contributors
[🖐contributors-img]: https://contrib.rocks/image?repo=pboling/active_security
[💎rubygems]: https://rubygems.org
[🔒️rubygems-security-guide]: https://guides.rubygems.org/security/#building-gems
[🔒️rubygems-checksums-pr]: https://github.com/rubygems/guides/pull/325
[🚎src-main]: https://github.com/pboling/active_security
