# Pester data-driven tests

A small proof of concept repo showing how to write data-driven tests with [Pester](pester.dev).

## Run 

### Locally 

```shell
pwsh ./Invoke-RunTests.ps1
```

### Using docker 
```shell
docker run --rm --mount="type=bind,src=$PWD,dst=/opt/local,readonly" mcr.microsoft.com/dotnet/sdk:9.0-noble pwsh -Command 'Push-Location /opt/local; ./Invoke-RunTests.ps1'
```
