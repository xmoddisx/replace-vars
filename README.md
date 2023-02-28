# Replace Variables in File GitHub Action

This GitHub Action replaces variables in a file using a bash script.

## Inputs

- `github_vars` (required): The JSON with the variables to replace in the file.
- `file_path` (required): The path of the file to be updated.
- `prefix` (required): The prefix used for each variable in the file.
- `suffix` (required): The suffix used for each variable in the file.

## Example Usage

```yaml
uses: xmoddisx/replace-variables-action@v1
env:
  GITHUB_VARS: ${{ toJson(vars) }}
with:
  github_vars: ${{ env.GITHUB_VARS }}
  file_path: 'path/to/file.txt'
  prefix: '${{ vars.'
  suffix: '}}'
```

This example uses the action to replace variables in a file located at `path/to/file.txt`. The `github_vars` input is a secret containing a JSON object with the variables to be replaced. The `prefix` and `suffix` inputs are used to specify the pattern of the variables in the file.

## License
This GitHub Action is licensed under the `MIT License`.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Credits
This GitHub Action was created by Ignacio Valencia.


## Disclaimer
This GitHub Action is provided "as is" without warranty of any kind, either express or implied, including without limitation any warranty with respect to accuracy, functionality, completeness, merchantability, fitness for a particular purpose, or non-infringement. The author(s) and maintainer(s) of this GitHub Action hereby disclaim any and all such warranties.
