import os

def puppet():
    """Call through to the puppet function.
    """

    os.system('cd /opt/aegir-ci/fab && fab puppet')

if __name__ == '__main__':
    puppet()
