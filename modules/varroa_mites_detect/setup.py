from setuptools import setup, find_packages
from mites_detection import __version__

__author__ = "Sven Becker"
__email__ = "SvenBecker19@gmail.com"

with open('README.rst') as readme_file:
    readme = readme_file.read()

requirements=[]

setup(
    author=__author__,
    author_email=__email__,
    version=__version__,
    install_requires=requirements,
    extra_requires=[],
    packages=find_packages(include=["mites_detection", "mites_detection.*"]),
    long_description=readme,
    include_package_data=True,
    keyword=[
        "Varroa Mites",
        "Object Detection",
        "Computer Vision"
    ],
    zip_safe=False,
    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Intended Audience :: Developers',
        'Natural Language :: English',
        'Programming Language :: Python :: 3.6',
        'Programming Language :: Python :: 3.7',
    ]
)
