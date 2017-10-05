# xml-fmt
Uses xmllint to format and overwrite a file.

xmllint doesn't have an in-place option, this simple script will run `xmllint --format` on
the given argument and overwrite the original file with the results. In the case of an error,
the script terminates without overwriting the original file.
