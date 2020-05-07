# Target

Projeto demo para explorar funcionalidades do framework de testes automatizado Karate-dsl.

# Environment

Deve estar devidamente hospedado na estação de trabalho/servidor o arquivo `.jar` e adicionado ao `PATH` a sua localização. Ação essa feita atravavés do arquivo set-env.bat

## Definição de Variáveis

* *URL_BASE*: set URL_BASE=https://jsonplaceholder.typicode.com/

# Execução

Para executar a bateria de testes, utilizar o comando abaixo:

1) executar a carga de variáveis de ambiente

2) disparar execução com o comando abaixo:
```
>java -jar ..\karate.jar api\features
```

