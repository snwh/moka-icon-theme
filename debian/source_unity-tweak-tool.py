import os
from os import path

import apport
from apport.hookutils import *


def add_info(report):
    if not apport.packaging.is_distro_package(report['Package'].split()[0]):
        report['CrashDB'] = '{"impl": "launchpad", "project": "unity-tweak-tool"}'
