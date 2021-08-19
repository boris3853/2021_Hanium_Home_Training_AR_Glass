## *********************************************************
##
## File autogenerated for the compressed_image_transport package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'Color Mode', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'mode', 'edit_method': "{'enum_description': 'Enum to set the decompression color mode', 'enum': [{'srcline': 9, 'description': 'keep image encoding', 'srcfile': '/home/pi/21_hf271/PI_package/src/image_transport_plugins/compressed_image_transport/cfg/CompressedSubscriber.cfg', 'cconsttype': 'const char * const', 'value': 'unchanged', 'ctype': 'std::string', 'type': 'str', 'name': 'unchanged'}, {'srcline': 10, 'description': 'decode to gray', 'srcfile': '/home/pi/21_hf271/PI_package/src/image_transport_plugins/compressed_image_transport/cfg/CompressedSubscriber.cfg', 'cconsttype': 'const char * const', 'value': 'gray', 'ctype': 'std::string', 'type': 'str', 'name': 'gray'}, {'srcline': 11, 'description': 'decode to color', 'srcfile': '/home/pi/21_hf271/PI_package/src/image_transport_plugins/compressed_image_transport/cfg/CompressedSubscriber.cfg', 'cconsttype': 'const char * const', 'value': 'color', 'ctype': 'std::string', 'type': 'str', 'name': 'color'}]}", 'default': 'unchanged', 'level': 0, 'min': '', 'type': 'str'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

CompressedSubscriber_unchanged = 'unchanged'
CompressedSubscriber_gray = 'gray'
CompressedSubscriber_color = 'color'
