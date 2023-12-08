import json
import argparse
from jsonpath_ng import jsonpath, parse

CLI = argparse.ArgumentParser()

CLI.add_argument(
    "--fname",
    nargs=1,
    required=False,
    type=str,  # any type/callable can be used here
    default=["/Users/mark/Documents/_Local/DaVinci/pdex_stu_update/davinci-epdx/input/capabilities/CapabilityStatement-pdex-server.json"],
    help="location of json file"
)
CLI.add_argument(
    "--element",
    nargs=1,
    required=False,
    type=str,  # any type/callable can be used here
    default=["rest[0].resource[0].extension[1].extension[0]"],
    help="element to get"
)

def read_json_element(file_path, json_path):
    with open(file_path) as file:
        data = json.load(file)
        jsonpath_expr = parse(json_path)
        match = jsonpath_expr.find(data)
        if match:
            return [match_item.value for match_item in match]
        else:
            return None

if __name__ == '__main__':
    args = CLI.parse_args()
    # Replace 'file_path.json' with the actual path to your JSON file
    json_file_path = args.fname[0]
    print(json_file_path)
    # Replace 'element_key' with the key of the element you want to read from the JSON file
    element_key = "$." + args.element[0]
    print(element_key)
    # Read the element from the JSON file
    element_value = read_json_element(json_file_path, element_key)
    # Print the value of the element
    print(f"{element_key} = {element_value}")
