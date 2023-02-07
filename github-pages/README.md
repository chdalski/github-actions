# GitHub Pages

The [GitHub Pages](https://docs.github.com/en/pages) action deploys a directory to a branch called `gh-pages`.

## Usage

To use the action add this to your workflow (snippet):

```yaml
- uses: chdalski/github-actions/github-pages@main
  with:
    deploy_dir: book
    github_token: "${{ secrets.gh_pages_token }}"
```
