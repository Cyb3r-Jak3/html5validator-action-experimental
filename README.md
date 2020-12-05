# HTML5 Validator Experimental Action
---
![Action Test](https://github.com/Cyb3r-Jak3/html5validator-action-experimental/workflows/Action%20Test/badge.svg?branch=main) 
![Integration Test](https://github.com/Cyb3r-Jak3/html5validator-action-experimental/workflows/Integration%20Test/badge.svg) ![Build Test](https://github.com/Cyb3r-Jak3/html5validator-action-experimental/workflows/Build%20Test/badge.svg)

---

## This action is not stable and can change rapidly. 
## [Stable Verison](https://github.com/Cyb3r-Jak3/html5validator-action)

If you are planning on using this for more then just testing please use a released version and not the main branch.

---

This action checks the syntax of your html files in the path that you provide.  
It used an experimential branch of [html5validator](https://github.com/svenkreiss/html5validator), which I develop, and a docker image that I build from it found [here](https://github.com/Cyb3r-Jak3/html5validator-docker).


## Inputs

### `Root`

The root path of the files you want to check.

### `Config`

The path to the config file.

### `Extra`

Additional arguments to pass to html5validator.

### `Format`

Format for logging. Supported values: `json, xml, gnu, text`.

### `Log_Level`

Log level to use. Supported values: `DEBUG, INFO, WARNING`. Default: `Warning`.

### `Skip`

Files names that should not be checked.

### `CSS`

If to check css. Supported values: `true, false`. Default: `false`.

## Outputs

### `result`

The exit code of the validation.

## Example usage

```yaml
      uses: Cyb3r-Jak3/html5validator-action-experimental@main
      with:
        root: tests/valid/
```

There is a log file that is automatically created. To retrieve it you need to use Github's upload artifact action after the validator action.

```yaml
    - uses: actions/upload-artifact@v2
      with:
        name: log
        path: log.log
```
