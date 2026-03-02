"""Compila la memoria y genera juan_arzola_memoria_V2.pdf."""

from pathlib import Path
import shutil
import subprocess

ROOT = Path(__file__).parent
MAIN = ROOT / "memoria_skeleton.tex"
OUTPUT = ROOT / "juan_arzola_memoria_V2.pdf"
AUX_PATTERNS = [
    "*.aux",
    "*.bbl",
    "*.bcf",
    "*.blg",
    "*.fdb_latexmk",
    "*.fls",
    "*.lof",
    "*.log",
    "*.lot",
    "*.out",
    "*.run.xml",
    "*.synctex.gz",
    "*.toc",
]


def run(cmd: list[str]) -> None:
    subprocess.run(cmd, cwd=ROOT, check=True)


def clean_aux() -> None:
    for pattern in AUX_PATTERNS:
        for path in ROOT.rglob(pattern):
            try:
                path.unlink()
            except FileNotFoundError:
                continue


def main() -> None:
    clean_aux()
    run(["xelatex", "-interaction=nonstopmode", MAIN.name])
    run(["biber", MAIN.stem])
    run(["xelatex", "-interaction=nonstopmode", MAIN.name])
    run(["xelatex", "-interaction=nonstopmode", MAIN.name])
    shutil.copy2(ROOT / f"{MAIN.stem}.pdf", OUTPUT)
    clean_aux()


if __name__ == "__main__":
    main()
