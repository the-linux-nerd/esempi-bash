# funzioni
Possiamo immaginare le funzioni in Bash come dei sotto script, in grado di ricevere argomenti e restituire un risultato.

## esempio #1

```
esempio_funzione() {
  echo "ciao $1"
}

echo "chiamata a funzione"
esempio_funzione "mondo"
```

## esempio #2

```
var1='A'
var2='B'

esempio_funzione () {
  local var1='C'
  var2='D'
  echo "dentro la funzione: var1: $var1, var2: $var2"
}

echo "prima di eseguire la funzione: var1: $var1, var2: $var2"

esempio_funzione

echo "dopo aver eseguito la funzione: var1: $var1, var2: $var2"
```

## esempio #3

```
esempio_funzione () {
  return 42
}

esempio_funzione
echo "la risposta è $?"
```

## esempio #4

```
esempio_funzione () {
  risultato=42
}

esempio_funzione
echo $risultato
```

## esempio #5

```
esempio_funzione () {
  local risultato=42
  echo "$risultato"
}

risultato="$(esempio_funzione)"
echo $risultato
```


# link-o-grafia
- https://www.html.it/pag/53368/funzioni-2/
- https://linuxize.com/post/bash-functions/
