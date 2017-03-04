# homebrew-cw
Brewfile for cw

[http://www.lucagrulla.com/cw/](http://www.lucagrulla.com/cw/)

## Updating brew formula and bottle
1. Uninstall brew cw
    brew uninstall cw
    
2. Update  with new version informations
3. Push recipe
4. Build bottle
  * brew install --build-bottle cw
  * brew bottle cw
    
5. Update the formula with the output of `brew bottle...` 
6. Push the formula
7. Add the formula .tar.gz to a new release on github releases of homebrew-cw
