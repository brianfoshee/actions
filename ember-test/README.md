This is no longer necessary with the new Github Actions YAML syntax. Chrome is
installed in `ubuntu-latest`; therefore, `ember test` can be run directly in the
action:

```
    - name: Run Tests
      run: npm test
```
