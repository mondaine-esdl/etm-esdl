'''
Downloads the ecore esdl resource from github into the vendor folder. This xml-file is needed as a
resource for the EnergySystemHandler
'''
import requests
import sys
import os

VENDOR_FOLDER_PATH = 'vendor/esdl/'
ECORE_FILE_PATH = VENDOR_FOLDER_PATH + 'esdl.ecore'

if __name__ == "__main__":
    commit_hash = sys.argv[1] if len(sys.argv) == 2 else ''

    if commit_hash:
        github_url = f'https://raw.githubusercontent.com/EnergyTransition/ESDL/{commit_hash}/esdl/model/esdl.ecore'
    else:
        github_url = 'https://raw.githubusercontent.com/EnergyTransition/ESDL/master/esdl/model/esdl.ecore'

    result = requests.get(github_url)

    if result.ok:
        os.makedirs(VENDOR_FOLDER_PATH, exist_ok=True)

        with open(ECORE_FILE_PATH, 'wb') as file:
            file.write(result.content)
    else:
        raise ValueError(f'Could not fetch ESDL ecore resource from github {commit_hash}')
