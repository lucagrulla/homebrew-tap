# homebrew-cw
Brewfile for cw

## Updating brew formula and bottle
1. Uninstall brew awless
    brew uninstall awless
    
2. Update  with new version informations
3. Build bottle
  * brew install --build-bottle cw
  * brew bottle cw
    
4. Update the formula with the output of `brew bottle...` 
5. Push the formula
6. Add the formula to a new release on github releases of homebrew-cw