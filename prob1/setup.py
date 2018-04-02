# NOTE: This file should be used to compile the
# present code using `python setup.py build_ext -i`

from distutils.core import setup
from Cython.Build import cythonize

setup(
    ext_modules = cythonize("prob1.pyx")
)
