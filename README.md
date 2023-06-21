# IETF Publication GitHub Action

An action that does the dirty work of *publishing* an RFC-flavored markdown document to properly
formatted PDF, TXT, PS, and HTML files.

The resulting files will be stored in a `.zip` file as an artifact of the workflow run.

## Inputs

### spec_git_url

**required** The URL of a `clone`-able git repository that contains the RFC-flavored markdown document.

### spec_filename

**required** The name of the document with the RFC-flavored markdown. Do *not* include the `.md` extension

## Example

```yaml
on: [workflow_dispatch]
jobs:
  testing:
    runs-on: ubuntu-latest
    name: testing
    steps:
      - name: Publish artifacts
        uses: actions/ietf-publish-action@main
        with:
          spec_git_url: 'https://github.com/network-quality/draft-ietf-ippm-responsiveness.git'
          spec_filename: 'draft-ietf-ippm-responsiveness'
```