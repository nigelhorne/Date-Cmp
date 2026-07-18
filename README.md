# NAME

Date::Cmp - Compare two dates with approximate parsing support

# VERSION

Version 0.05

# SYNOPSIS

    use Date::Cmp qw(datecmp);

    my $date1 = '1914';
    my $date2 = '1918';
    my $cmp = datecmp($date1, $date2);

    # Optionally provide a complaint callback:
    $cmp = datecmp($date1, $date2, sub { warn @_ });

# DESCRIPTION

This module provides a single function, `datecmp`, which compares two date strings
or date-like objects, returning a numeric comparison similar to Perl's spaceship operator (`<=>`).

The comparison is tolerant of approximate dates (e.g., "Abt. 1902", "BET 1830 AND 1832", "Oct/Nov/Dec 1950"),
partial dates (years only), and strings with common genealogy-style formats.
It attempts to normalize and parse these into comparable values using [DateTime::Format::Genealogy](https://metacpan.org/pod/DateTime%3A%3AFormat%3A%3AGenealogy).

# FUNCTIONS

## datecmp

### Purpose

Compare two genealogy-style date strings or date-like objects, returning a
numeric result equivalent to Perl's spaceship operator (`<=>`).

### Arguments

- `$left` (required)

    The left-hand date to compare. Accepts any of:

    - A string in any format listed under ["SUPPORTED FORMATS"](#supported-formats).
    - A blessed object implementing a `date()` method that returns a date string.
    - A hash reference with a `date` key whose value is a date string.

- `$right` (required)

    The right-hand date to compare. Accepts the same types as `$left`.

- `$complain` (optional)

    A coderef invoked with a diagnostic string for ambiguous conditions such as a
    date range with equal endpoints or an inverted range.

### Returns

- `-1` if `$left` is earlier than `$right`
- `0` if the two dates are equivalent
- `1` if `$left` is later than `$right`

When either argument is `undef`, prints a diagnostic to STDERR and returns `0`.
On a fatal parse failure, dies with a string beginning `"Date parse failure: "`.

### Side Effects

May print coloured diagnostic output to STDERR when dates cannot be parsed, when
a range is inverted, or when arguments are undefined. The optional `$complain`
callback is invoked instead of (or in addition to) STDERR output for selected
ambiguous conditions.

### Usage Example

    use Date::Cmp qw(datecmp);

    my $cmp = datecmp('BET 1830 AND 1832', '1831');   # 0
    my $cmp = datecmp('Abt. 1850', '1855');            # -1
    my $cmp = datecmp('1 Jan 1996', '1996-2000',
        sub { warn "ambiguous: @_" });

### API SPECIFICATION

#### Input

    $left    : Str | Object(date) | HashRef(date => Str)   # required
    $right   : Str | Object(date) | HashRef(date => Str)   # required
    $complain: CodeRef                                      # optional

Valid string types (see ["SUPPORTED FORMATS"](#supported-formats) for pattern details):

    exact    => qr/^\d{4}-\d{2}-\d{2}(?:T\d{2}:\d{2}:\d{2})?$/
    slash    => qr{^\d+/\d+/\d{4}$}
    year     => qr/^\d{3,4}$/
    approx   => qr/^(?:Abt\.?|ca?\.?)\s+.+/i  |  qr/.+\s?\?$/
    range    => qr/^\d{3,4}-\d{3,4}$/  |  qr/^BET \d+ AND \d+$/i
    month_rng=> qr/^[a-z\/]+\s+\d{3,4}$/i
    before   => qr/^bef\b/i
    after    => qr/^aft\b/i

#### Output

    Int: -1 | 0 | 1

    Or dies("Date parse failure: ...") when a date cannot be parsed.
    Returns 0 (after STDERR output) when either argument is undef.

# SUPPORTED FORMATS

The function supports a variety of partial or approximate formats,
including:

- Exact dates (e.g. `1941-08-02`, `5/27/1872`)
- Years only (e.g. `1828`)
- Approximate dates (e.g. `Abt. 1802`, `ca. 1802`, `1802 ?`)
- Date ranges (e.g. `1802-1803`, `BET 1830 AND 1832`)
- Month ranges (e.g. `Oct/Nov/Dec 1950`)
- Qualifiers like `BEF`, `AFT`

# ERROR HANDLING

In cases where a date cannot be parsed or compared meaningfully, diagnostic messages
will be printed to STDERR, and the function may die with an error. Callbacks and
stack traces are used to help identify parsing issues.

# AUTHOR

Nigel Horne, `<njh at nigelhorne.com>`

# SEE ALSO

- [Test Dashboard](https://nigelhorne.github.io/Date-Cmp/coverage/)
- [Sort::Key::DateTime](https://metacpan.org/pod/Sort%3A%3AKey%3A%3ADateTime)

# SUPPORT

This module is provided as-is without any warranty.

Please report any bugs or feature requests to `bug-date-cmp at rt.cpan.org`,
or through the web interface at
[http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Date-Cmp](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Date-Cmp).
I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

You can find documentation for this module with the perldoc command.

    perldoc Date::Cmp

# FORMAL SPECIFICATION

## datecmp

    [DATESTR, DIAGMSG]

    DATE ::= exact⟨year: ℕ⟩
           | approx⟨year: ℕ⟩
           | before⟨year: ℕ⟩
           | after⟨year: ℕ⟩
           | range⟨from: ℕ; to: ℕ⟩
           | invalid

    COMPARISON ::= lt | eq | gt | error

    DateCmp
    left?, right?: DATESTR
    diagnostic!: ℙ DIAGMSG
    result!: COMPARISON

    ∀d: DATESTR @ validDate(d)

    ≙
    ∃ l, r: DATE •
        l = parse(left?) ∧ r = parse(right?) ∧
        (
          (l = invalid ∨ r = invalid ⇒ result! = error) ∧
          (l = r ⇒ result! = eq) ∧
          (compare(l, r, diagnostic!) = -1 ⇒ result! = lt) ∧
          (compare(l, r, diagnostic!) = 0 ⇒ result! = eq) ∧
          (compare(l, r, diagnostic!) = 1 ⇒ result! = gt)
        )

# LICENCE AND COPYRIGHT

Copyright 2025-2026 Nigel Horne.

Usage is subject to the GPL2 licence terms.
If you use it,
please let me know.
