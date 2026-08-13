from pathlib import Path


def test_output_exists():
    path = Path("/app/output.txt")
    assert path.is_file(), "Required artifact /app/output.txt is missing"


def test_output_is_integer():
    text = Path("/app/output.txt").read_text().strip()
    assert text.isdigit(), "Output must contain one integer"


def test_output_is_correct():
    value = int(Path("/app/output.txt").read_text().strip())
    assert value == 338350
