.class public Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;
    }
.end annotation


# static fields
.field private static KeysToCaptureRequestDump:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static KeysToCaptureResultDump:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd1

    new-array v1, v1, [Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v15, 0xc

    aput-object v2, v1, v15

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0xd

    aput-object v2, v1, v16

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v17, 0xe

    aput-object v2, v1, v17

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v18, 0xf

    aput-object v2, v1, v18

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v19, 0x10

    aput-object v2, v1, v19

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v20, 0x11

    aput-object v2, v1, v20

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v21, 0x12

    aput-object v2, v1, v21

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v22, 0x13

    aput-object v2, v1, v22

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v23, 0x14

    aput-object v2, v1, v23

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v24, 0x15

    aput-object v2, v1, v24

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x16

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x17

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x18

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x19

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1a

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1b

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->EDGE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1c

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1d

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1e

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1f

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x20

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x21

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x22

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x23

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x24

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x25

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x26

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x27

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x28

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_RANGE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x29

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2a

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2b

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_POSE_ROTATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2c

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2d

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2e

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2f

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x30

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x31

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x32

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_BLACK_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x33

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_WHITE_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x34

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x35

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x36

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_GREEN_SPLIT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x37

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x38

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_NOISE_PROFILE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x39

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_ROLLING_SHUTTER_SKEW:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3a

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3b

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3c

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3d

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3e

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SHADING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3f

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x40

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x41

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_HOT_PIXEL_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x42

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x43

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x44

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x45

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x46

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x47

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x48

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x49

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ADAPTIVE_LENS_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ADAPTIVE_LENS_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ADAPTIVE_LENS_MODE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_AE_EXTRA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_AUTO_FRAMING_MANUAL_TRACKING_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_AUTO_FRAMING_MANUAL_TRACKING_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x50

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_AUTO_FRAMING_TRACKING_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x51

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x52

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BEAUTY_FACE_SKIN_COLOR:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x53

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BODY_BEAUTY_PARAMETERS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x54

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BOKEH_BLUR_STRENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x55

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BOKEH_DUAL_PREVIEW_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x56

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BOKEH_FOCUSED_RECTS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x57

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BOKEH_RELIGHT_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x58

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BOKEH_SPECIAL_EFFECT_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x59

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BOKEH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BRIGHTNESS_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BURST_SHOT_FPS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_CAMERA_CLIENT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_CAMERA_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_CAMERA_RUNNING_DEBUG_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_CAPTURE_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x60

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_CAPTURE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x61

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_COLOR_TEMPERATURE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x62

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DEVICE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x63

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DOF_MULTI_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x64

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DOF_MULTI_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x65

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x66

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_CAPTURE_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x67

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x68

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x69

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_EV_COMPENSATION_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_EVENT_FINDER_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_EVENT_FINDER_RESULT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_FACE_TONE_WEIGHT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_FACTORY_DRAM_TEST_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x70

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_HAND_GESTURE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x71

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_HAND_GESTURE_RESULT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x72

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ISP_TUNING_META_FOR_RAW:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x73

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LATEST_PREVIEW_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x74

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LENS_DIRTY_DETECT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x75

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LENS_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x76

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LENS_SUGGESTION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x77

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LIGHT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x78

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x79

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LIVE_HDR_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_MULTI_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_MULTI_FRAME_EV_LIST:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_MULTIVIEW_CROP_ROI:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_NOISE_INDEX:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x80

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_OBJECT_TRACKING_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x81

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_OBJECT_TRACKING_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x82

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_OVER_HEAT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x83

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_PAF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x84

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_PERSONAL_PRESET_INDEX:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x85

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RANGE_SENSOR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x86

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RECORDING_SUGGESTED_MOTION_SPEED_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x87

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RECORDING_DR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x88

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RECORDING_EXTRA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x89

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RECORDING_MAX_FPS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RECORDING_MIN_FPS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RECORDING_MOTION_SPEED_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_REF_FRAME_INDEX:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_REPEATING_REQUEST_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_REQUEST_BUILD_NUMBER:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x90

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SCENE_DETECTION_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x91

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x92

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHUTTER_NOTIFICATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x93

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SSM_SHOT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x94

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SSRM_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x95

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_STILL_CAPTURE_PROGRESS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x96

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_STILL_CAPTURE_ANALYSIS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x97

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x98

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SUPER_SLOW_MOTION_AUTO_DETECT_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x99

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SUPER_SLOW_MOTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SUPER_SLOW_MOTION_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SUPER_SLOW_MOTION_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SW_SUPER_VIDEO_STABILIZATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SW_VIDEO_STABILIZATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_TOUCH_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_TRANSIENT_ACTION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa0

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_TRANSIENT_CAPTURE_ACTION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa1

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_UNIHAL_ENABLE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa2

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_VIDEO_BEAUTY_FACE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa3

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_WB_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa4

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ZOOM_JUMP_TARGET_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa5

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ZOOM_LOCK_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa6

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_ZOOM_LOCK_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa7

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->DEPTH_FILTER_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa8

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->DEPTH_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa9

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->JPEG_IMAGE_DEBUG_INFO_APP4:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xaa

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->JPEG_IMAGE_DEBUG_INFO_APP5:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xab

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->JPEG_IMAGE_UNIQUE_ID:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xac

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->LENS_FOCUS_LENS_POS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xad

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->LENS_FOCUS_LENS_POS_STALL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xae

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->LENS_INFO_CURRENT_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xaf

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->LENS_INFO_FOCAL_LENGTH_IN_35MM_FILM:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb0

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->LENS_OPTICAL_STABILIZATION_OPERATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb1

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_BASE_IMAGE_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb2

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb3

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb4

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_VALID_IMAGE_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb5

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb6

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_CAPTURE_EV:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb7

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_CAPTURE_TOTAL_GAIN:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb8

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_DRC_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb9

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_GYRO_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xba

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_MULTI_FRAME_EV:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xbb

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_PHOTO_DIODE_MONITORING_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xbc

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_MULTI_LUMINANCES:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xbd

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_SENSOR_FLIP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xbe

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_SINGLE_LUMINANCE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xbf

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_SSHDR_EV:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc0

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc1

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc2

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_WDR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc3

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_WDR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc4

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->STATISTICS_SPECIAL_SCENE_AE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc5

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->STATISTICS_3A_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc6

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc7

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->UNIHAL_VIDEO_BEAUTY_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc8

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->UNIHAL_VIDEO_BOKEH_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc9

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->UNIHAL_VIDEO_BOKEH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xca

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xcb

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->UNIHAL_VIDEO_SEGMENTATION_BG_IMG_NUM:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xcc

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->UNIHAL_VIDEO_SEGMENTATION_BLUR_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xcd

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->UNIHAL_VIDEO_SEGMENTATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xce

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->UNIHAL_VIDEO_SEGMENTATION_RGB_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xcf

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd0

    aput-object v2, v1, v25

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureResultDump:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x82

    new-array v1, v1, [Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v4

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v5

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v6

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v7

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v8

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v9

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v10

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v11

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v12

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v13

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v14

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v15

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v16

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v17

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v18

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v19

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v20

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v21

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v22

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v23

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v2, v1, v24

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x30

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x31

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x32

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x33

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x34

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x35

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_ADAPTIVE_LENS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x36

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_AE_EXTRA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x37

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_AUTO_FRAMING_MANUAL_TRACKING_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x38

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x39

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_BEAUTY_FACE_SKIN_COLOR:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_BODY_BEAUTY_PARAMETERS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_BOKEH_BLUR_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_BOKEH_RELIGHT_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_BOKEH_SPECIAL_EFFECT_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_BURST_SHOT_FPS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_CAMERA_CLIENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x40

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_CAPTURE_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x41

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_CAPTURE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x42

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_COLOR_TEMPERATURE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x43

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x44

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x45

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x46

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x47

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_EVENT_FINDER_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x48

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_HAND_GESTURE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x49

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_LATEST_PREVIEW_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_LENS_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x4d

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x4e

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_MULTI_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x4f

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_MULTI_FRAME_EV_LIST:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x50

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_MULTIVIEW_CROP_ROI:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x51

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_OVER_HEAT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x52

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_PAF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x53

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_PERSONAL_PRESET_INDEX:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x54

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RANGE_SENSOR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x55

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_DR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x56

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_EXTRA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x57

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_MAX_FPS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x58

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_MIN_FPS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x59

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_RECORDING_MOTION_SPEED_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x5a

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_REPEATING_REQUEST_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x5b

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_REQUEST_BUILD_NUMBER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x5c

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SCENE_DETECTION_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x5d

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SET_BARCODE_APP:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x5e

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x5f

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SSM_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x60

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SSRM_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x61

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x62

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SUPER_SLOW_MOTION_AUTO_DETECT_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x63

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SUPER_SLOW_MOTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x64

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SUPER_SLOW_MOTION_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x65

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SW_SUPER_VIDEO_STABILIZATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x66

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SW_VIDEO_STABILIZATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x67

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_TRANSIENT_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x68

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_TRANSIENT_CAPTURE_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x69

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_UNIHAL_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x6a

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_VIDEO_BEAUTY_FACE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x6b

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_WB_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x6c

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_ZOOM_JUMP_TARGET_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x6d

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_ZOOM_LOCK_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x6e

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->DEPTH_FILTER_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x6f

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->LENS_FOCUS_LENS_POS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x70

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->LENS_FOCUS_LENS_POS_STALL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x71

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->LENS_OPTICAL_STABILIZATION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x72

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x73

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x74

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->SENSOR_GAIN:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x75

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->SENSOR_SENSOR_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x76

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x77

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x78

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->UNIHAL_VIDEO_BEAUTY_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x79

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->UNIHAL_VIDEO_BOKEH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x7a

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->UNIHAL_VIDEO_BOKEH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x7b

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x7c

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->UNIHAL_VIDEO_SEGMENTATION_BG_IMG_NUM:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x7d

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->UNIHAL_VIDEO_SEGMENTATION_BLUR_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x7e

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->UNIHAL_VIDEO_SEGMENTATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x7f

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->UNIHAL_VIDEO_SEGMENTATION_RGB_VALUE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x80

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0x81

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureRequestDump:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureResultDump:Ljava/util/List;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_SCENE_CHANGE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureResultDump:Ljava/util/List;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureResultDump:Ljava/util/List;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_DISTORTION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureResultDump:Ljava/util/List;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureResultDump:Ljava/util/List;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureRequestDump:Ljava/util/List;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureRequestDump:Ljava/util/List;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "Dump"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    const-string v1, "dumpCaptureRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureRequestDump:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    :try_start_0
    const-string v3, "dumpCaptureRequest - %s : %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpCaptureRequest fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static dumpCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "Dump"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    const-string v1, "dumpCaptureResult"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->KeysToCaptureResultDump:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    :try_start_0
    const-string v3, "dumpCaptureResult - %s : %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpCaptureResult fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isDebugModeEnabled()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isShipMode()Z
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
