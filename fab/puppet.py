# vim: tabstop=4 shiftwidth=4 softtabstop=4
import os
import tempfile

from fabric.api import *

def puppet():
    run_puppet('true')

def run_puppet(color='true'):
    """run puppet to get the config applied."""
    local('puppet apply --color=%s --verbose --modulepath=/opt/aegir-ci/puppet/modules /opt/aegir-ci/puppet/aegir-ci.pp' % color, capture=False)
