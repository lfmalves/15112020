# Distributor

Hello, Gl0balme! 
For simplicity's sake, the only files that have relevant info are `distributor/test/sieve_test.exs` and `distributor/lib/sieve.ex`


## Contracts

Also, you can run `mix dialyzer` to check the static analysis.

## Warnings

There is a trade-off on the `ponderate_major/2` and `ponderate_minor/2` functions: they do have a warning generator for when the data is non-ideal. Turning it on acknowledges the lack of confiability of the data, leaving it out (and possibly "letting it crash" in a real world app) somewhat masks the problem, but does not pollute the console screen.
Guard clauses could have been used extensively, but as the community screams at defensive programming, I left it out.

## Docs

There's quite a bit of controversy about docs on our community. Although there are groups that say "docs are fast deprecating assets on the application", I chose to write them, so Gl0balme could judge my [lack of] literary talent.

## Dummy data

DB storage could be used for the test data, but it seemed like an overkill for such a simple algorithm. I chose to write some fixtures, and leave them on the one-and-only test file. 

## Tests

I would love to have written property-based tests (as I am studying them now, and they are awesome), but 1) not many companies use them, and 2) I still do not feel confortable wrinting them. So I wrote normal, boring and repetitive tests, but they do give a glimpse on the behaviour of the code.