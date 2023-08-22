# pyenv-default-packages

This pyenv plugin hooks into the `pyenv install` and `pyenv virtualenv` commands to automatically install packages every time you install a new version of Python or create a new virtualenv.

Forked from the excellent [`rbenv-default-gems`](https://github.com/sstephenson/rbenv-default-gems) plugin from [sstephenson](https://github.com/sstephenson).

## Installation

### Installing as a pyenv plugin

Make sure you have the latest pyenv version, then run:

```shell
git clone git@github.com:mantoso/pyenv-install-latest.git "$(pyenv root)"/plugins/pyenv-install-latest
```

### Installing with Homebrew

macOS users can install pyenv-default-requirements with the [Homebrew](http://brew.sh) package manager.

This is the recommended method of installation if you installed pyenv  with Homebrew.

```shell
$ brew install mantoso/pyenv/pyenv-default-requirements
```

Or, if you would like to install the latest development release:

```shell
$ brew install --HEAD mantoso/pyenv/pyenv-default-requirements
```

## Usage

pyenv-default-requirements automatically installs the packages listed in the `$(pyenv root)/requirements.txt` file every time you successfully install a new  version of Python with `pyenv install` or create a virtualenv with `pyenv virtualenv`.

Specify packages in `$(pyenv root)/requirements.txt` by name, one per line. This  file should follow the pip [requirements file format](https://pip.pypa.io/en/latest/reference/pip_install.html#requirements-file-format). For example:

```shell
pytest >= 2.6.4
futures; python_version < '2.7'
http://my.package.repo/SomePackage-1.0.4.zip; python_version >= '3.4'
```
