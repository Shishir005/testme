import subprocess

process = ['/usr/local/bin/terraform', 'init']
cwd = '/Users/danieldreier/ws/src/repro/24420'
env = {
    'AWS_ACCESS_KEY_ID': '{aws_access_key}',
    'AWS_SECRET_ACCESS_KEY': '{aws_secret}',
    'HOME': '/Users/danieldreier'
}
proc = subprocess.Popen(process, bufsize=8192, stdin=None, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=cwd, env=env)

output = []
proc.wait()

while True:
    proc.poll()

    stdout, stderr = proc.communicate()
    if stdout:
       output.append(stdout.decode('utf-8'))
    if stderr:
       output.append(stderr.decode('utf-8'))

    if proc.returncode is not None:
        break
    time.sleep(0.01)

    if proc.returncode != 0:
        raise Exception("Error initializing terraform")