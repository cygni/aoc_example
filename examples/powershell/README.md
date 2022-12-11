# PowerShell

## How to run locally
Type for example:
```bash
part=part1 pwsh aoc.ps1
part=part2 pwsh aoc.ps1
```
```powershell
$ENV:part="part1"; ./aoc.ps1; $ENV:part=$null
$ENV:part="part2"; ./aoc.ps1; $ENV:part=$null
```

## How to build and run with Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example).

Type for example:
```bash
docker build -t aoc_pwsh --platform=linux/x86-64 .
docker run --rm -e part=part1 aoc_pwsh
docker run --rm -e part=part2 aoc_pwsh
```