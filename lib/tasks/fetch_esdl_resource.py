'''
Downloads the ecore esdl resource from github into the tmp folder. This xml-file is needed as a
resource for the EnergySystemHandler
'''
import requests
import sys
import os

TMP_FOLDER_PATH = 'tmp/esdl/'
ECORE_FILE_PATH = TMP_FOLDER_PATH + 'esdl.ecore'

if __name__ == "__main__":
    commit_hash = sys.argv[0] if len(sys.argv) == 1 else ''

    if commit_hash:
        github_url = f'https://raw.githubusercontent.com/EnergyTransition/ESDL/#{commit_hash}/esdl/model/esdl.ecore'
    else:
        github_url = 'https://raw.githubusercontent.com/EnergyTransition/ESDL/master/esdl/model/esdl.ecore'

    result = requests.get(github_url)

    if result.ok:
        os.makedirs(TMP_FOLDER_PATH, exist_ok=True)

        with open(ECORE_FILE_PATH, 'wb') as file:
            file.write(result.content)
    else:
        raise ValueError(f'Could not fetch ESDL ecore resource from github #{commit_hash}')
