import subprocess
from expect_equal import expect_equal

def test_mook():
    bash_command = f"./pruebas/say_hello.sh"
    output = subprocess.getoutput(bash_command)
    expect_equal(output, "Hola")
