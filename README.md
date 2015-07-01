# Semantic Versioning Bash Compare

This little script offers you a bash function to compare semantic versions with each other.
It will only return true (0) when the new version you pass is actually greater then the old version. When versions are equal or less then false (1) is returned.

## How to use it?

You need to call the function with 2 parameters representing a semantic
version. The first param is the old version and the second param is seen
as the new version. Like this:

    compare_semantic_version 1.1.1 2.1.1

## Testing

I provided some unit tests, create with the Bats testing framework

You can easliy run the tests with this command:

    bats unit_tests.bats

For more information on installing/using Bats you have to take a look
here: @TODO: add link


## Contributions

See Contributing Guidelines
