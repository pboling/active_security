# ActiveSecurity

<div id="badges">

[![CI Build][🚎dl-cwfi]][🚎dl-cwf]
[![Test Coverage][🔑cc-covi]][🔑cc-cov]
[![Maintainability][🔑cc-mnti]][🔑cc-mnt]
[![Depfu][🔑depfui]][🔑depfu]

[🚎dl-cwf]: https://github.com/pboling/active_security/actions/workflows/supported.yml
[🚎dl-cwfi]: https://github.com/pboling/active_security/actions/workflows/supported.yml/badge.svg

[comment]: <> ( 🔑 KEYED LINKS )

[🔑cc-mnt]: https://codeclimate.com/github/pboling/active_security/maintainability
[🔑cc-mnti]: https://api.codeclimate.com/v1/badges/a6280f7e5533aed38d05/maintainability
[🔑cc-cov]: https://codeclimate.com/github/pboling/active_security/test_coverage
[🔑cc-covi]: https://api.codeclimate.com/v1/badges/a6280f7e5533aed38d05/test_coverage
[🔑depfu]: https://depfu.com/github/pboling/active_security?project_id=41757
[🔑depfui]: https://badges.depfu.com/badges/88e0dac6be89feaa9bd6bb0dd12b3e3a/count.svg

-----

[![Liberapay Patrons][⛳liberapay-img]][⛳liberapay]
[![Sponsor Me on Github][🖇sponsor-img]][🖇sponsor]

<span class="badge-buymeacoffee">
<a href="https://ko-fi.com/O5O86SNP4" target='_blank' title="Donate to my FLOSS or refugee efforts at ko-fi.com"><img src="https://img.shields.io/badge/buy%20me%20coffee-donate-yellow.svg" alt="Buy me coffee donation button" /></a>
</span>
<span class="badge-patreon">
<a href="https://patreon.com/galtzo" title="Donate to my FLOSS or refugee efforts using Patreon"><img src="https://img.shields.io/badge/patreon-donate-yellow.svg" alt="Patreon donate button" /></a>
</span>

</div>

[⛳liberapay-img]: https://img.shields.io/liberapay/patrons/pboling.svg?logo=liberapay
[⛳liberapay]: https://liberapay.com/pboling/donate
[🖇sponsor-img]: https://img.shields.io/badge/Sponsor_Me!-pboling.svg?style=social&logo=github
[🖇sponsor]: https://github.com/sponsors/pboling

## Compatibility

* ⚙️ Ruby >= 2.7, plus JRuby and Truffleruby, but only non-EOL Rubies are officially supported
* ⚙️ Rails >= 7.0 (actually, it only requires `activerecord`)

<!--
Numbering rows and badges in each row as a visual "database" lookup,
    as the table is extremely dense, and it can be very difficult to find anything
Putting one on each row here, to document the emoji that should be used, and for ease of copy/paste.

row #s:
1️⃣
2️⃣
3️⃣
4️⃣
5️⃣
6️⃣
7️⃣

badge #s:
⛳️
🖇
🏘
🚎
🖐
🧮
📗

appended indicators:
♻️ / 🔑 - Tagged URLs need to be updated from SAAS integration. Find / Replace is insufficient.
-->

|     | Project                        | bundle add active_security                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:----|--------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1️⃣ | name, license, docs, standards | [![RubyGems.org][⛳️name-img]][⛳️gem] [![License: MIT][🖇src-license-img]][🖇src-license] [![RubyDoc.info][🚎yard-img]][🚎yard] [![YARD Documentation](http://inch-ci.org/github/pboling/active_security.svg)][🚎yard] [![SemVer 2.0.0][🧮semver-img]][🧮semver] [![Keep-A-Changelog 1.0.0][📗keep-changelog-img]][📗keep-changelog]                                                                                                                                                                                                                                        |
| 2️⃣ | version & activity             | [![Gem Version][⛳️version-img]][⛳️gem] [![Total Downloads][🖇DL-total-img]][⛳️gem] [![Download Rank][🏘DL-rank-img]][⛳️gem] [![Source Code][🚎src-main-img]][🚎src-main] [![Open PRs][🖐prs-o-img]][🖐prs-o] [![Closed PRs][🧮prs-c-img]][🧮prs-c]                                                                                                                                                                                                                                                                                                                        |
| 3️⃣ | maintenance & linting          | [![Maintainability][🔑cc-mnti]][🔑cc-mnt] [![Helpers][🖇triage-help-img]][🖇triage-help] [![Depfu][🔑depfui]][🔑depfu] [![Contributors][🚎contributors-img]][🚎contributors] [![Style][🖐style-wf-img]][🖐style-wf]                                                                                                                                                                                                                                                                                                                                                       |
| 4️⃣ | testing                        | [![Supported][🏘sup-wf-img]][🏘sup-wf] [![Heads][🚎heads-wf-img]][🚎heads-wf] [![Unsupported][🖐uns-wf-img]][🖐uns-wf]                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| 5️⃣ | coverage & security            | [![CodeClimate][🔑cc-covi]][🔑cc-cov] [![CodeCov][🖇codecov-img♻️]][🖇codecov] [![Coveralls][🏘coveralls-img]][🏘coveralls] [![Security Policy][🚎sec-pol-img]][🚎sec-pol] [![CodeQL][🖐codeQL-img]][🖐codeQL] [![Code Coverage][🧮cov-wf-img]][🧮cov-wf]                                                                                                                                                                                                                                                                                                                 |
| 6️⃣ | resources                      | [![Get help on Codementor][🖇codementor-img]][🖇codementor] [![Blog][🚎blog-img]][🚎blog] [![Wiki][🖐wiki-img]][🖐wiki]                                                                                                                                                                                                                                                                                                                                                                                                                      |
| 7️⃣ | `...` 💖                       | [![Liberapay Patrons][⛳liberapay-img]][⛳liberapay] [![Sponsor Me][🖇sponsor-img]][🖇sponsor] [![Follow Me on LinkedIn][🖇linkedin-img]][🖇linkedin] [![Find Me on WellFound:][✌️wellfound-img]][✌️wellfound] [![Find Me on CrunchBase][💲crunchbase-img]][💲crunchbase] [![My LinkTree][🌳linktree-img]][🌳linktree] [![Follow Me on Ruby.Social][🐘ruby-mast-img]][🐘ruby-mast]  [![Tweet @ Peter][🐦tweet-img]][🐦tweet] [💻][coderme] [🌏][aboutme] |

<!--
The link tokens in the following sections should be kept ordered by the row and badge numbering scheme
-->

<!-- 1️⃣ name, license, docs -->
[⛳️gem]: https://rubygems.org/gems/active_security
[⛳️name-img]: https://img.shields.io/badge/name-sanitize__email-brightgreen.svg?style=flat
[🖇src-license]: https://opensource.org/licenses/MIT
[🖇src-license-img]: https://img.shields.io/badge/License-MIT-green.svg
[🚎yard]: https://www.rubydoc.info/gems/active_security
[🚎yard-img]: https://img.shields.io/badge/documentation-rubydoc-brightgreen.svg?style=flat
[🧮semver]: http://semver.org/
[🧮semver-img]: https://img.shields.io/badge/semver-2.0.0-FFDD67.svg?style=flat
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-FFDD67.svg?style=flat

<!-- 2️⃣ version & activity -->
[⛳️version-img]: http://img.shields.io/gem/v/active_security.svg
[🖇DL-total-img]: https://img.shields.io/gem/dt/active_security.svg
[🏘DL-rank-img]: https://img.shields.io/gem/rt/active_security.svg
[🚎src-main]: https://gitlab.com/pboling/active_security
[🚎src-main-img]: https://img.shields.io/badge/source-gitlab-brightgreen.svg?style=flat
[🖐prs-o]: https://gitlab.com/pboling/active_security/-/merge_requests
[🖐prs-o-img]: https://img.shields.io/github/issues-pr/pboling/active_security
[🧮prs-c]: https://github.com/pboling/active_security/pulls?q=is%3Apr+is%3Aclosed
[🧮prs-c-img]: https://img.shields.io/github/issues-pr-closed/pboling/active_security

<!-- 3️⃣ maintenance & linting -->
[🖇triage-help]: https://www.codetriage.com/pboling/active_security
[🖇triage-help-img]: https://www.codetriage.com/pboling/active_security/badges/users.svg
[🚎contributors]: https://gitlab.com/pboling/active_security/-/graphs/main
[🚎contributors-img]: https://img.shields.io/github/contributors-anon/pboling/active_security
[🖐style-wf]: https://github.com/pboling/active_security/actions/workflows/style.yml
[🖐style-wf-img]: https://github.com/pboling/active_security/actions/workflows/style.yml/badge.svg
<!-- TODO: tokei/lines shields badge is broken -->
[🧮kloc]: https://www.youtube.com/watch?v=dQw4w9WgXcQ
[🧮kloc-img]: https://img.shields.io/tokei/lines/github.com/pboling/active_security

<!-- 4️⃣ testing -->
[🏘sup-wf]: https://github.com/pboling/active_security/actions/workflows/supported.yml
[🏘sup-wf-img]: https://github.com/pboling/active_security/actions/workflows/supported.yml/badge.svg
[🚎heads-wf]: https://github.com/pboling/active_security/actions/workflows/heads.yml
[🚎heads-wf-img]: https://github.com/pboling/active_security/actions/workflows/heads.yml/badge.svg
[🖐uns-wf]: https://github.com/pboling/active_security/actions/workflows/unsupported.yml
[🖐uns-wf-img]: https://github.com/pboling/active_security/actions/workflows/unsupported.yml/badge.svg

<!-- 5️⃣ coverage & security -->
[🖇codecov-img♻️]: https://codecov.io/gh/pboling/active_security/graph/badge.svg?token=Joire8DbSW
[🖇codecov]: https://codecov.io/gh/pboling/active_security
[🏘coveralls]: https://coveralls.io/github/pboling/active_security?branch=main
[🏘coveralls-img]: https://coveralls.io/repos/github/pboling/active_security/badge.svg?branch=main
[🚎sec-pol]: https://gitlab.com/pboling/active_security/-/blob/main/SECURITY.md
[🚎sec-pol-img]: https://img.shields.io/badge/security-policy-brightgreen.svg?style=flat
[🖐codeQL]: https://github.com/pboling/active_security/security/code-scanning
[🖐codeQL-img]: https://github.com/pboling/active_security/actions/workflows/codeql-analysis.yml/badge.svg
[🧮cov-wf]: https://github.com/pboling/active_security/actions/workflows/coverage.yml
[🧮cov-wf-img]: https://github.com/pboling/active_security/actions/workflows/coverage.yml/badge.svg

<!-- 6️⃣ resources -->
[🖇codementor]: https://www.codementor.io/peterboling?utm_source=github&utm_medium=button&utm_term=peterboling&utm_campaign=github
[🖇codementor-img]: https://cdn.codementor.io/badges/get_help_github.svg
[🚎blog]: http://www.railsbling.com/tags/active_security/
[🚎blog-img]: https://img.shields.io/badge/blog-railsbling-brightgreen.svg?style=flat
[🖐wiki]: https://gitlab.com/pboling/active_security/-/wikis/home
[🖐wiki-img]: https://img.shields.io/badge/wiki-examples-brightgreen.svg?style=flat

<!-- 7️⃣ spread 💖 -->
[🐦tweet-img]: https://img.shields.io/twitter/follow/galtzo.svg?style=social&label=Follow%20%40galtzo
[🐦tweet]: http://twitter.com/galtzo
[🚎blog]: http://www.railsbling.com/tags/debug_logging/
[🚎blog-img]: https://img.shields.io/badge/blog-railsbling-brightgreen.svg?style=flat
[🖇linkedin]: http://www.linkedin.com/in/peterboling
[🖇linkedin-img]: https://img.shields.io/badge/PeterBoling-blue?style=plastic&logo=linkedin
[✌️wellfound]: https://angel.co/u/peter-boling
[✌️wellfound-img]: https://img.shields.io/badge/peter--boling-orange?style=plastic&logo=wellfound
[💲crunchbase]: https://www.crunchbase.com/person/peter-boling
[💲crunchbase-img]: https://img.shields.io/badge/peter--boling-purple?style=plastic&logo=crunchbase
[🐘ruby-mast]: https://ruby.social/@galtzo
[🐘ruby-mast-img]: https://img.shields.io/mastodon/follow/109447111526622197?domain=https%3A%2F%2Fruby.social&style=plastic&logo=mastodon&label=Ruby%20%40galtzo
[🐘floss-mast]: https://floss.social/@galtzo
[🐘floss-mast-img]: https://img.shields.io/mastodon/follow/110304921404405715?domain=https%3A%2F%2Ffloss.social&style=plastic&logo=mastodon&label=FLOSS%20%40galtzo
[🐘mast]: https://mastodon.social/@galtzo
[🐘mast-img]: https://img.shields.io/mastodon/follow/000924127?domain=https%3A%2F%2Fmastodon.social&style=plastic&logo=mastodon&label=Mastodon%20%40galtzo
[🌳linktree]: https://linktr.ee/galtzo
[🌳linktree-img]: https://img.shields.io/badge/galtzo-purple?style=plastic&logo=linktree

<!-- Maintainer Contact Links -->
[aboutme]: https://about.me/peter.boling
[coderme]: https://coderwall.com/Peter%20Boling

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add active_security

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install active_security

## Documentation

All documentation is in the source so check there if the following is not enough.

### Setting Up ActiveSecurity in Your Model

To use ActiveSecurity in your ActiveRecord models, you must first either extend or
include the ActiveSecurity module (it makes no difference), then invoke the
{ActiveSecurity::Base#active_security active_security} method to configure your desired
options:

```ruby
class Foo < ActiveRecord::Base
  include ActiveSecurity
  active_security :use => {finders: {default_finders: :restricted}, scoped: {scope: :bar_id}}
end
```

The most important option is `:use`, which you use to tell ActiveSecurity which
addons it should use. See the documentation for {ActiveSecurity::Base#active_security} for a list of all
available addons, or skim through the rest of the docs to get a high-level
overview.

*A note about single table inheritance (STI): you must extend ActiveSecurity in*
*all classes that participate in STI, both your parent classes and their*
*children.*

#### The Basic Setup: Simple Models

By default the `:restricted` plugin is the only one configured, and the `restricted`
scope must be explicitly added to every query.
This is the simplest way to use ActiveSecurity.  But it is messy, and laborious.
It will ensure that finds are executed within a `where` scope:

```ruby
class User < ActiveRecord::Base
  extend ActiveSecurity
end

User.restricted.find(1)                       # blows up, because no scope
User.where(name: "Bart").restricted.find(1)   # returns the user
```

#### The Strict Setup: Magic Finders

The problem with the above approach is that a naked find (`User.find(1)`)
still works, and is just as insecure as before. The `:finders` plugin fixes
this problem, so you don't need to add `restricted` everywhere.

```ruby
class User < ActiveRecord::Base
  extend ActiveSecurity
  active_security use: {finders: {default_finders: :restricted}}
end

User.find(1)                                 # blows up, because no scope
User.where(name: "Bart").find(1)             # returns the user
User.where(name: "Bart").restricted.find(1)  # also returns the user
```

### Configuration: ActiveSecurity's behavior in a model

Here's a basic config.

```ruby
class Post < ActiveRecord::Base
  extend ActiveSecurity
  active_security use: :finders
end
```

Now let's get crazy secure!

When given the optional block, this method will yield the class's instance
of {ActiveSecurity::Configuration} to the block before evaluating other
arguments, so configuration values set in the block may be overwritten by
the arguments. This order was chosen to allow passing the same proc to
multiple models, while being able to override the values it sets. Here is
a contrived example:

```ruby
$active_security_config_proc = Proc.new do |config|
  config.use :finders
end

class Foo < ActiveRecord::Base
  extend ActiveSecurity
  active_security &$active_security_config_proc
end

class Bar < ActiveRecord::Base
  extend ActiveSecurity
  active_security &$active_security_config_proc
end
```

However, it's usually better to use {ActiveSecurity.defaults} for this:

```ruby
ActiveSecurity.defaults do |config|
  config.use :finders, default_finders: :restricted
end

class Foo < ActiveRecord::Base
  extend ActiveSecurity
end

class Bar < ActiveRecord::Base
  extend ActiveSecurity
end
```

In general you should use the block syntax either because of your personal
aesthetic preference, or because you need to share some functionality
between multiple models that can't be well encapsulated by
{ActiveSecurity.defaults}.

### Order Method Calls in a Block vs Ordering Options

When calling this method without a block, you may set the hash options in
any order, so long as they either have no dependencies, or are coupled with
their respective module.

Here's an example that configures every plugin:
```ruby
class Person < ActiveRecord::Base
  active_security use: {
    finders: {default_finders: :restricted},
    scoped: {scope: :name},
    privileged: {}
  }
end

Person.find(1)                                 # blows up, because no scope
Person.where(name: "Bart").find(1)             # returns the person
Person.where(age: 29).find(1)                  # blows up, because name scope wasn't used
Person.where(age: 29).privileged.find(1)       # returns the person, because privileged
Person.where(name: "Bart").restricted.find(1)  # also returns the person, because name scope used
```

However, when using block-style invocation, be sure to call
ActiveSecurity::Configuration's {ActiveSecurity::Configuration#use use} method
*prior* to the associated configuration options, because it will include
modules into your class, and these modules in turn may add required
configuration options to the `@active_security_configuration`'s class:

```ruby
class Person < ActiveRecord::Base
  active_security do |config|
    # This will work
    config.use :scoped
    config.scope = "family_id"
  end
end

class Person < ActiveRecord::Base
  active_security do |config|
    # This will fail
    config.scope = "family_id"
    config.use :scoped
  end
end
```

### Including Your Own Modules

Because :use can accept a name or a Module, {ActiveSecurity.defaults defaults}
can be a convenient place to set up behavior common to all classes using
ActiveSecurity. You can include any module, or more conveniently, define one
on-the-fly. For example, let's say you want to globally override the error
that is raised when no scope is used:

```ruby
ActiveSecurity.defaults do |config|
  config.use :finders
  config.use Module.new {
    def self.setup(model_class)
      model_class.instance_eval do
        relation.class.send(:prepend, RaiseOverride)
        model_class.singleton_class.send(:prepend, RaiseOverride)
      end

      association_relation_delegate_class = model_class.relation_delegate_class(::ActiveRecord::AssociationRelation)
      association_relation_delegate_class.send(:prepend, RaiseOverride)
    end

    module RaiseOverride
      def raise_if_not_scoped
        puts "My errors are better than yours"
        raise StandardError, "Calm Down"
      end
    end
  }
end
```

## Running Specs

The basic compatibility matrix:
```sh
appraisal install
appraisal rake test
```

Sometimes also:
```sh
BUNDLE_GEMFILE=gemfiles/vanilla.gemfile appraisal update
```

NOTE: This results in bad paths to the gemspec.
`gemspec path: "../../"` needs to be replaced with `gemspec path: "../"` in each Appraisal gemfile.

### Code Coverage

[![Coverage Graph][🔑codecov-g]][🖇codecov]

[🔑codecov-g]: https://codecov.io/gh/pboling/active_security/graphs/tree.svg?token=hk0IktRjVc

## 🪇 Code of Conduct

Everyone interacting in this project's codebases, issue trackers,
chat rooms and mailing lists is expected to follow the [code of conduct][🪇conduct].

[🪇conduct]: CODE_OF_CONDUCT.md

## 📌 Versioning

This Library adheres to [Semantic Versioning 2.0.0][📌semver].
Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility,
a new version should be immediately released that restores compatibility.
Breaking changes to the public API will only be introduced with new major versions.

To get a better understanding of how SemVer is intended to work over a project's lifetime,
read this article from the creator of SemVer:

- ["Major Version Numbers are Not Sacred"][📌major-versions-not-sacred]

As a result of this policy, you can (and should) specify a dependency on these libraries using
the [Pessimistic Version Constraint][📌pvc] with two digits of precision.

For example:

```ruby
spec.add_dependency("active_security", "~> 1.0")
```

[comment]: <> ( 📌 VERSIONING LINKS )

[📌pvc]: http://guides.rubygems.org/patterns/#pessimistic-version-constraint
[📌semver]: http://semver.org/
[📌major-versions-not-sacred]: https://tom.preston-werner.com/2022/05/23/major-version-numbers-are-not-sacred.html

## 📄 License

The gem is available as open source under the terms of
the [MIT License][📄license] [![License: MIT][📄license-img]][📄license-ref].
See [LICENSE.txt][📄license] for the official [Copyright Notice][📄copyright-notice-explainer].

[comment]: <> ( 📄 LEGAL LINKS )

[📄copyright-notice-explainer]: https://opensource.stackexchange.com/questions/5778/why-do-licenses-such-as-the-mit-license-specify-a-single-year
[📄license]: LICENSE.txt
[📄license-ref]: https://opensource.org/licenses/MIT
[📄license-img]: https://img.shields.io/badge/License-MIT-green.svg

### © Copyright

* Copyright (c) 2024 [Peter H. Boling][peterboling] of [Rails Bling][railsbling]

[railsbling]: http://www.railsbling.com
[peterboling]: http://www.peterboling.com
