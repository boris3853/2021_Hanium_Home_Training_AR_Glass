## *********************************************************
##
## File autogenerated for the compressed_depth_image_transport package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'Compression format', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'format', 'edit_method': "{'enum_description': 'Enum to set the compression format', 'enum': [{'srcline': 9, 'description': 'PNG lossless compression', 'srcfile': '/home/pi/21_hf271/PI_main/src/image_transport_plugins/compressed_depth_image_transport/cfg/CompressedDepthPublisher.cfg', 'cconsttype': 'const char * const', 'value': 'png', 'ctype': 'std::string', 'type': 'str', 'name': 'png'}, {'srcline': 10, 'description': 'RVL lossless compression', 'srcfile': '/home/pi/21_hf271/PI_main/src/image_transport_plugins/compressed_depth_image_transport/cfg/CompressedDepthPublisher.cfg', 'cconsttype': 'const char * const', 'value': 'rvl', 'ctype': 'std::string', 'type': 'str', 'name': 'rvl'}]}", 'default': 'png', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 291, 'description': 'Maximum depth value (meter) ', 'max': 100.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'depth_max', 'edit_method': '', 'default': 10.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 291, 'description': 'Depth value at which the sensor accuracy is 1 m (Kinect: >75)', 'max': 150.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'depth_quantization', 'edit_method': '', 'default': 100.0, 'level': 0, 'min': 1.0, 'type': 'double'}, {'srcline': 291, 'description': 'PNG compression level', 'max': 9, 'cconsttype': 'const int', 'ctype': 'int', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'png_level', 'edit_method': '', 'default': 9, 'level': 0, 'min': 1, 'type': 'int'}], 'type': '', 'id': 0}

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

CompressedDepthPublisher_png = 'png'
CompressedDepthPublisher_rvl = 'rvl'
