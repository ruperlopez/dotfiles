###### Paso 1
` chezmoi init`
###### Paso 2
`chezmoi add ~/.zshrc`
###### Paso 3
`chezmoi edit ~/.zshrc` -> este abre para editar en el archivo de texto
###### Paso 4
`chezmoi diff` chequeamos la diferencia de lo que editamos
##### Paso 5
`chezmoi -v apply`
###### Paso 6
- Hacemos commit
`chezmoi cd`
`git add .`
`git commit -m "initial commit"`

