This is no longer necessary with the new Github Actions YAML syntax. git-lfs is
installed in `ubuntu-latest`; therefore, `git lfs pull` can be run either
directly in the action or in a sh file if you need to filter which files to
pull:

```
    - name: Pull LFS Files
      run: git lfs pull
```

or:
```
    - name: Pull Only Some LFS Files
      run: sh ./.github/actions/pull-lfs.sh
```

where `./.github/actions/pull-lfs.sh` is identical to the `entrypoint.sh` in
this directory.
