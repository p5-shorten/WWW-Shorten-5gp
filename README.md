# NAME

WWW::Shorten::5gp - Shorten URLs using [http://5.gp](http://5.gp)

# SYNOPSIS

    use strict;
    use warnings;

    use WWW::Shorten::5gp;
    # use WWW::Shorten '5gp';  # or, this way

    my $short_url = makeashorterlink('http://www.foo.com/some/long/url');
    my $long_url  = makealongerlink($short_url);

# DESCRIPTION

A Perl interface to the web site [http://5.gp](http://5.gp). The service simply maintains
a database of long URLs, each of which has a unique identifier.

# FUNCTIONS

## makeashorterlink

The function `makeashorterlink` will call the [http://5gp](http://5gp) web site passing
it your long URL and will return the shorter version.

## makealongerlink

The function `makealongerlink` does the reverse. `makealongerlink`
will accept as an argument either the full URL or just the identifier.

If anything goes wrong, then either function will return `undef`.

# AUTHOR

Michiel Beijen <`michielb@cpan.org`>

# CONTRIBUTORS

- Chase Whitener <`capoeirab@cpan.org`>

# LICENSE AND COPYRIGHT

Copyright (c) 2015 by Michiel Beijen <`michielb@cpan.org`>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
