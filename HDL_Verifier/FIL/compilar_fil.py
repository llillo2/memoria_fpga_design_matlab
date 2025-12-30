"""Compila el documento LaTeX principal y limpia los archivos temporales generados."""
from __future__ import annotations

import subprocess
from pathlib import Path


ROOT = Path(__file__).parent
MAIN_TEX = ROOT / "configuracion.tex"
GENERATED_PDF = MAIN_TEX.with_suffix(".pdf")
OUTPUT_PDF = ROOT / "tutorial_fil.pdf"

# Extensiones y patrones temporales a eliminar tras la compilacion.
TEMP_PATTERNS = [
    f"{MAIN_TEX.stem}.aux",
    f"{MAIN_TEX.stem}.log",
    f"{MAIN_TEX.stem}.out",
    f"{MAIN_TEX.stem}.toc",
    f"{MAIN_TEX.stem}.lof",
    f"{MAIN_TEX.stem}.lot",
    f"{MAIN_TEX.stem}.fls",
    f"{MAIN_TEX.stem}.fdb_latexmk",
    f"{MAIN_TEX.stem}.synctex.gz",
    f"{MAIN_TEX.stem}.xdv",
    "*.aux",
]


def run_pdflatex() -> None:
    """Ejecuta xelatex dos veces para resolver referencias y el indice."""
    if not MAIN_TEX.exists():
        raise FileNotFoundError(f"No se encuentra el archivo {MAIN_TEX.name}")

    cmd = ["xelatex", "-interaction=nonstopmode", "-halt-on-error", MAIN_TEX.name]
    try:
        subprocess.run(cmd, cwd=ROOT, check=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        subprocess.run(cmd, cwd=ROOT, check=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    except FileNotFoundError as exc:
        raise RuntimeError("No se encontro xelatex en el PATH. Instale LaTeX (XeLaTeX) para continuar.") from exc
    except subprocess.CalledProcessError as exc:
        log_hint = MAIN_TEX.with_suffix(".log")
        raise RuntimeError(f"Fallo la compilacion de LaTeX. Revise {log_hint}") from exc


def cleanup_temporaries() -> None:
    """Elimina archivos temporales generados por LaTeX, incluyendo los de subdirectorios."""
    for pattern in TEMP_PATTERNS:
        for path in ROOT.glob(pattern):
            if path.is_file() and path not in {GENERATED_PDF, OUTPUT_PDF}:
                path.unlink(missing_ok=True)

    paginas_dir = ROOT / "paginas"
    if paginas_dir.is_dir():
        for aux_file in paginas_dir.glob("*.aux"):
            aux_file.unlink(missing_ok=True)


def main() -> None:
    run_pdflatex()
    if GENERATED_PDF.exists():
        OUTPUT_PDF.unlink(missing_ok=True)
        GENERATED_PDF.rename(OUTPUT_PDF)
    cleanup_temporaries()
    print(f"PDF generado en: {OUTPUT_PDF}")


if __name__ == "__main__":
    main()
