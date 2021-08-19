# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/local/include/opencv4".split(';') if "${prefix}/include;/usr/local/include/opencv4" != "" else []
PROJECT_CATKIN_DEPENDS = "rosconsole;sensor_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcv_bridge;/usr/local/lib/libopencv_calib3d.so.4.5.3;/usr/local/lib/libopencv_dnn.so.4.5.3;/usr/local/lib/libopencv_features2d.so.4.5.3;/usr/local/lib/libopencv_flann.so.4.5.3;/usr/local/lib/libopencv_gapi.so.4.5.3;/usr/local/lib/libopencv_highgui.so.4.5.3;/usr/local/lib/libopencv_ml.so.4.5.3;/usr/local/lib/libopencv_objdetect.so.4.5.3;/usr/local/lib/libopencv_photo.so.4.5.3;/usr/local/lib/libopencv_stitching.so.4.5.3;/usr/local/lib/libopencv_video.so.4.5.3;/usr/local/lib/libopencv_videoio.so.4.5.3;/usr/local/lib/libopencv_alphamat.so.4.5.3;/usr/local/lib/libopencv_aruco.so.4.5.3;/usr/local/lib/libopencv_barcode.so.4.5.3;/usr/local/lib/libopencv_bgsegm.so.4.5.3;/usr/local/lib/libopencv_bioinspired.so.4.5.3;/usr/local/lib/libopencv_ccalib.so.4.5.3;/usr/local/lib/libopencv_datasets.so.4.5.3;/usr/local/lib/libopencv_dnn_objdetect.so.4.5.3;/usr/local/lib/libopencv_dnn_superres.so.4.5.3;/usr/local/lib/libopencv_dpm.so.4.5.3;/usr/local/lib/libopencv_face.so.4.5.3;/usr/local/lib/libopencv_freetype.so.4.5.3;/usr/local/lib/libopencv_fuzzy.so.4.5.3;/usr/local/lib/libopencv_hfs.so.4.5.3;/usr/local/lib/libopencv_img_hash.so.4.5.3;/usr/local/lib/libopencv_intensity_transform.so.4.5.3;/usr/local/lib/libopencv_line_descriptor.so.4.5.3;/usr/local/lib/libopencv_mcc.so.4.5.3;/usr/local/lib/libopencv_optflow.so.4.5.3;/usr/local/lib/libopencv_phase_unwrapping.so.4.5.3;/usr/local/lib/libopencv_plot.so.4.5.3;/usr/local/lib/libopencv_quality.so.4.5.3;/usr/local/lib/libopencv_rapid.so.4.5.3;/usr/local/lib/libopencv_reg.so.4.5.3;/usr/local/lib/libopencv_rgbd.so.4.5.3;/usr/local/lib/libopencv_saliency.so.4.5.3;/usr/local/lib/libopencv_shape.so.4.5.3;/usr/local/lib/libopencv_stereo.so.4.5.3;/usr/local/lib/libopencv_structured_light.so.4.5.3;/usr/local/lib/libopencv_superres.so.4.5.3;/usr/local/lib/libopencv_surface_matching.so.4.5.3;/usr/local/lib/libopencv_text.so.4.5.3;/usr/local/lib/libopencv_tracking.so.4.5.3;/usr/local/lib/libopencv_videostab.so.4.5.3;/usr/local/lib/libopencv_wechat_qrcode.so.4.5.3;/usr/local/lib/libopencv_xfeatures2d.so.4.5.3;/usr/local/lib/libopencv_ximgproc.so.4.5.3;/usr/local/lib/libopencv_xobjdetect.so.4.5.3;/usr/local/lib/libopencv_xphoto.so.4.5.3;/usr/local/lib/libopencv_core.so.4.5.3;/usr/local/lib/libopencv_imgproc.so.4.5.3;/usr/local/lib/libopencv_imgcodecs.so.4.5.3".split(';') if "-lcv_bridge;/usr/local/lib/libopencv_calib3d.so.4.5.3;/usr/local/lib/libopencv_dnn.so.4.5.3;/usr/local/lib/libopencv_features2d.so.4.5.3;/usr/local/lib/libopencv_flann.so.4.5.3;/usr/local/lib/libopencv_gapi.so.4.5.3;/usr/local/lib/libopencv_highgui.so.4.5.3;/usr/local/lib/libopencv_ml.so.4.5.3;/usr/local/lib/libopencv_objdetect.so.4.5.3;/usr/local/lib/libopencv_photo.so.4.5.3;/usr/local/lib/libopencv_stitching.so.4.5.3;/usr/local/lib/libopencv_video.so.4.5.3;/usr/local/lib/libopencv_videoio.so.4.5.3;/usr/local/lib/libopencv_alphamat.so.4.5.3;/usr/local/lib/libopencv_aruco.so.4.5.3;/usr/local/lib/libopencv_barcode.so.4.5.3;/usr/local/lib/libopencv_bgsegm.so.4.5.3;/usr/local/lib/libopencv_bioinspired.so.4.5.3;/usr/local/lib/libopencv_ccalib.so.4.5.3;/usr/local/lib/libopencv_datasets.so.4.5.3;/usr/local/lib/libopencv_dnn_objdetect.so.4.5.3;/usr/local/lib/libopencv_dnn_superres.so.4.5.3;/usr/local/lib/libopencv_dpm.so.4.5.3;/usr/local/lib/libopencv_face.so.4.5.3;/usr/local/lib/libopencv_freetype.so.4.5.3;/usr/local/lib/libopencv_fuzzy.so.4.5.3;/usr/local/lib/libopencv_hfs.so.4.5.3;/usr/local/lib/libopencv_img_hash.so.4.5.3;/usr/local/lib/libopencv_intensity_transform.so.4.5.3;/usr/local/lib/libopencv_line_descriptor.so.4.5.3;/usr/local/lib/libopencv_mcc.so.4.5.3;/usr/local/lib/libopencv_optflow.so.4.5.3;/usr/local/lib/libopencv_phase_unwrapping.so.4.5.3;/usr/local/lib/libopencv_plot.so.4.5.3;/usr/local/lib/libopencv_quality.so.4.5.3;/usr/local/lib/libopencv_rapid.so.4.5.3;/usr/local/lib/libopencv_reg.so.4.5.3;/usr/local/lib/libopencv_rgbd.so.4.5.3;/usr/local/lib/libopencv_saliency.so.4.5.3;/usr/local/lib/libopencv_shape.so.4.5.3;/usr/local/lib/libopencv_stereo.so.4.5.3;/usr/local/lib/libopencv_structured_light.so.4.5.3;/usr/local/lib/libopencv_superres.so.4.5.3;/usr/local/lib/libopencv_surface_matching.so.4.5.3;/usr/local/lib/libopencv_text.so.4.5.3;/usr/local/lib/libopencv_tracking.so.4.5.3;/usr/local/lib/libopencv_videostab.so.4.5.3;/usr/local/lib/libopencv_wechat_qrcode.so.4.5.3;/usr/local/lib/libopencv_xfeatures2d.so.4.5.3;/usr/local/lib/libopencv_ximgproc.so.4.5.3;/usr/local/lib/libopencv_xobjdetect.so.4.5.3;/usr/local/lib/libopencv_xphoto.so.4.5.3;/usr/local/lib/libopencv_core.so.4.5.3;/usr/local/lib/libopencv_imgproc.so.4.5.3;/usr/local/lib/libopencv_imgcodecs.so.4.5.3" != "" else []
PROJECT_NAME = "cv_bridge"
PROJECT_SPACE_DIR = "/home/pi/21_hf271/PI_main/install"
PROJECT_VERSION = "1.15.0"
