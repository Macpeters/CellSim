/// @description Create the Camera
cam_width = 320;
cam_height = 180;
cam = camera_create_view(0, 0, cam_width, cam_height, 0, -1, -1, -1, 32, 32);
view_set_camera(0, cam);