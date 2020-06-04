import subprocess
def test_mook():
    bash_command = f"true"
    subprocess.getoutput(bash_command)
    output = int(subprocess.getoutput("echo $?"))
    assert output == 0
