import os

def update():
    """Call through the the hard working update function.
    """

    os.system('cd /opt/aegir-ci/fab && fab update')

if __name__ == '__main__':
    update()
