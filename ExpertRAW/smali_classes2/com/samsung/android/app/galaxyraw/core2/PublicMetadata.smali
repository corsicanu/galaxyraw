.class public Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;
.super Ljava/lang/Object;
.source "PublicMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;,
        Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;,
        Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$ImgFormat;,
        Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$ZoomLockTrigger;,
        Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SuperSlowMotionTrigger;,
        Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$StillCaptureAnalysis;,
        Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$ShootingModes;,
        Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$AfTrigger;,
        Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$AePreCaptureTrigger;,
        Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$AudioRestrictionModes;
    }
.end annotation


# static fields
.field public static final AR_CAMERA_APP_PACKAGE:Ljava/lang/String; = "com.samsung.android.aremoji"

.field public static final AR_DOODLE_APP_PACKAGE:Ljava/lang/String; = "com.samsung.android.ardrawing"

.field public static final AR_SCENE_PLAY_APP_PACKAGE:Ljava/lang/String; = "com.samsung.android.arsceneplay"

.field public static final AUDIO_RESTRICTION_NONE:I = 0x0

.field public static final AUDIO_RESTRICTION_VIBRATION:I = 0x1

.field public static final AUDIO_RESTRICTION_VIBRATION_SOUND:I = 0x3

.field public static final CAMERA_APP_PACKAGE:Ljava/lang/String; = "com.sec.android.app.camera"

.field public static final COLOR_CORRECTION_ABERRATION_MODE_FAST:I = 0x1

.field public static final COLOR_CORRECTION_ABERRATION_MODE_HIGH_QUALITY:I = 0x2

.field public static final COLOR_CORRECTION_ABERRATION_MODE_OFF:I = 0x0

.field public static final COLOR_CORRECTION_MODE_FAST:I = 0x1

.field public static final COLOR_CORRECTION_MODE_HIGH_QUALITY:I = 0x2

.field public static final COLOR_CORRECTION_MODE_TRANSFORM_MATRIX:I = 0x0

.field public static final CONTROL_ADAPTIVE_LENS_CONDITION_AVAILABLE_UW_AUTO:I = 0x1

.field public static final CONTROL_ADAPTIVE_LENS_CONDITION_UNAVAILABLE:I = 0x0

.field public static final CONTROL_ADAPTIVE_LENS_MODE_OFF:I = 0x0

.field public static final CONTROL_ADAPTIVE_LENS_MODE_ON_UW_AUTO:I = 0x1

.field public static final CONTROL_ADAPTIVE_LENS_STATE_DONE_UW_AUTO:I = 0x1

.field public static final CONTROL_ADAPTIVE_LENS_STATE_NONE:I = 0x0

.field public static final CONTROL_AE_ANTIBANDING_MODE_50HZ:I = 0x1

.field public static final CONTROL_AE_ANTIBANDING_MODE_60HZ:I = 0x2

.field public static final CONTROL_AE_ANTIBANDING_MODE_AUTO:I = 0x3

.field public static final CONTROL_AE_ANTIBANDING_MODE_OFF:I = 0x0

.field public static final CONTROL_AE_EXTRA_MODE_AUTO:I = 0x0

.field public static final CONTROL_AE_EXTRA_MODE_ISO_PRIORITY:I = 0x2

.field public static final CONTROL_AE_EXTRA_MODE_SHUTTER_PRIORITY:I = 0x1

.field public static final CONTROL_AE_MODE_OFF:I = 0x0

.field public static final CONTROL_AE_MODE_OFF_ALWAYS_FLASH:I = 0x67

.field public static final CONTROL_AE_MODE_ON:I = 0x1

.field public static final CONTROL_AE_MODE_ON_ALWAYS_FLASH:I = 0x3

.field public static final CONTROL_AE_MODE_ON_ALWAYS_SCREEN_FLASH:I = 0x66

.field public static final CONTROL_AE_MODE_ON_AUTO_FLASH:I = 0x2

.field public static final CONTROL_AE_MODE_ON_AUTO_FLASH_REDEYE:I = 0x4

.field public static final CONTROL_AE_MODE_ON_AUTO_NIGHT_SCREEN_FLASH:I = 0x68

.field public static final CONTROL_AE_MODE_ON_AUTO_SCREEN_FLASH:I = 0x65

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER_CANCEL:I = 0x2

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER_IDLE:I = 0x0

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER_START:I = 0x1

.field public static final CONTROL_AE_STATE_CONVERGED:I = 0x2

.field public static final CONTROL_AE_STATE_FLASH_REQUIRED:I = 0x4

.field public static final CONTROL_AE_STATE_INACTIVE:I = 0x0

.field public static final CONTROL_AE_STATE_LOCKED:I = 0x3

.field public static final CONTROL_AE_STATE_PRECAPTURE:I = 0x5

.field public static final CONTROL_AE_STATE_SEARCHING:I = 0x1

.field public static final CONTROL_AF_MODE_AUTO:I = 0x1

.field public static final CONTROL_AF_MODE_CONTINUOUS_PICTURE:I = 0x4

.field public static final CONTROL_AF_MODE_CONTINUOUS_VIDEO:I = 0x3

.field public static final CONTROL_AF_MODE_CONTROL_AF_MODE_FIXED_FACE:I = 0x67

.field public static final CONTROL_AF_MODE_EDOF:I = 0x5

.field public static final CONTROL_AF_MODE_MACRO:I = 0x2

.field public static final CONTROL_AF_MODE_OBJECT_TRACKING_PICTURE:I = 0x65

.field public static final CONTROL_AF_MODE_OBJECT_TRACKING_VIDEO:I = 0x66

.field public static final CONTROL_AF_MODE_OFF:I = 0x0

.field public static final CONTROL_AF_STATE_ACTIVE_SCAN:I = 0x3

.field public static final CONTROL_AF_STATE_FIXED_FOCUS_INACTIVE:I = 0x65

.field public static final CONTROL_AF_STATE_FOCUSED_LOCKED:I = 0x4

.field public static final CONTROL_AF_STATE_INACTIVE:I = 0x0

.field public static final CONTROL_AF_STATE_NOT_FOCUSED_LOCKED:I = 0x5

.field public static final CONTROL_AF_STATE_PASSIVE_FOCUSED:I = 0x2

.field public static final CONTROL_AF_STATE_PASSIVE_SCAN:I = 0x1

.field public static final CONTROL_AF_STATE_PASSIVE_UNFOCUSED:I = 0x6

.field public static final CONTROL_AF_TRIGGER_CANCEL:I = 0x2

.field public static final CONTROL_AF_TRIGGER_IDLE:I = 0x0

.field public static final CONTROL_AF_TRIGGER_START:I = 0x1

.field public static final CONTROL_AUTO_FRAMING_MANUAL_TRACKING_STATE_IDLE:I = 0x1

.field public static final CONTROL_AUTO_FRAMING_MANUAL_TRACKING_STATE_LOST:I = 0x4

.field public static final CONTROL_AUTO_FRAMING_MANUAL_TRACKING_STATE_OK:I = 0x2

.field public static final CONTROL_AUTO_FRAMING_MANUAL_TRACKING_STATE_TEMP_LOST:I = 0x3

.field public static final CONTROL_AUTO_FRAMING_MANUAL_TRACKING_STATE_UNDEFINED:I = 0x0

.field public static final CONTROL_AVAILABLE_FEATURE_3A_EXTRA_INFO:I = 0x1e

.field public static final CONTROL_AVAILABLE_FEATURE_AE_PRIORITY_MODE:I = 0x29

.field public static final CONTROL_AVAILABLE_FEATURE_AUTO_FRAMING:I = 0x3b

.field public static final CONTROL_AVAILABLE_FEATURE_BEAUTY_FACE:I = 0x7

.field public static final CONTROL_AVAILABLE_FEATURE_BODY_BEAUTY:I = 0x13

.field public static final CONTROL_AVAILABLE_FEATURE_BOKEH:I = 0x4

.field public static final CONTROL_AVAILABLE_FEATURE_BOKEH_NIGHT:I = 0x33

.field public static final CONTROL_AVAILABLE_FEATURE_BOKEH_RELIGHT:I = 0x30

.field public static final CONTROL_AVAILABLE_FEATURE_BOKEH_SPECIAL_EFFECT:I = 0xc

.field public static final CONTROL_AVAILABLE_FEATURE_DUAL_BOKEH_CAMERA_X:I = 0xc8

.field public static final CONTROL_AVAILABLE_FEATURE_DUAL_ZOOM:I = 0x3

.field public static final CONTROL_AVAILABLE_FEATURE_DYNAMIC_FOV:I = 0x1c

.field public static final CONTROL_AVAILABLE_FEATURE_DYNAMIC_SHOT_DEVICE_INFO:I = 0x1b

.field public static final CONTROL_AVAILABLE_FEATURE_DYNAMIC_SHOT_INFO:I = 0xb

.field public static final CONTROL_AVAILABLE_FEATURE_DYNAMIC_VIEWING:I = 0x2e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_FEATURE_EVENT_FINDER:I = 0x2f

.field public static final CONTROL_AVAILABLE_FEATURE_FACE_UNLOCK_PRE_OPEN:I = 0x2d

.field public static final CONTROL_AVAILABLE_FEATURE_FACTORY_DRAM_TEST:I = 0x64

.field public static final CONTROL_AVAILABLE_FEATURE_FOLDABLE:I = 0x28

.field public static final CONTROL_AVAILABLE_FEATURE_FRC_SSM:I = 0xa

.field public static final CONTROL_AVAILABLE_FEATURE_HAND_GESTURE:I = 0x31

.field public static final CONTROL_AVAILABLE_FEATURE_HDR10_RECORDING:I = 0x9

.field public static final CONTROL_AVAILABLE_FEATURE_HDR_CAMERA_X:I = 0xca

.field public static final CONTROL_AVAILABLE_FEATURE_LENS_SUGGESTION:I = 0x27

.field public static final CONTROL_AVAILABLE_FEATURE_LLS_CAPTURE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_FEATURE_MAX_RAW_SIZE_ONLY:I = 0x16

.field public static final CONTROL_AVAILABLE_FEATURE_NEED_RECORD_PRE_ALLOC:I = 0x2a

.field public static final CONTROL_AVAILABLE_FEATURE_NIGHT_CAMERA_X:I = 0xc9

.field public static final CONTROL_AVAILABLE_FEATURE_NO_FIRST_SET_PARAM:I = 0x36

.field public static final CONTROL_AVAILABLE_FEATURE_NO_PREVIEW_VIDEO_SNAP:I = 0x10

.field public static final CONTROL_AVAILABLE_FEATURE_PERSONAL_PRESET:I = 0x1a

.field public static final CONTROL_AVAILABLE_FEATURE_PHOTO_PREVIEW_VDIS:I = 0x22

.field public static final CONTROL_AVAILABLE_FEATURE_RAW_SUPER_RESOLUTION:I = 0x32

.field public static final CONTROL_AVAILABLE_FEATURE_SCENE_DETECT_IN_HAL:I = 0x18

.field public static final CONTROL_AVAILABLE_FEATURE_SECOND_PICTURE_CONFIG:I = 0x14

.field public static final CONTROL_AVAILABLE_FEATURE_SENSOR_CROP:I = 0xf

.field public static final CONTROL_AVAILABLE_FEATURE_SHUTTER_NOTIFICATION:I = 0x1

.field public static final CONTROL_AVAILABLE_FEATURE_SHUTTER_NOTI_TIMESTAMP:I = 0x2c

.field public static final CONTROL_AVAILABLE_FEATURE_SINGLE_CAM_SUPPORT_MULTI_RAW_STREAM:I = 0x20

.field public static final CONTROL_AVAILABLE_FEATURE_SMOOTH_ZOOM:I = 0x21

.field public static final CONTROL_AVAILABLE_FEATURE_SSM:I = 0x2

.field public static final CONTROL_AVAILABLE_FEATURE_SSM_GMC:I = 0xd

.field public static final CONTROL_AVAILABLE_FEATURE_SSM_NEED_SYNC_CANCEL_IN_AUTO_MODE:I = 0x25

.field public static final CONTROL_AVAILABLE_FEATURE_STILL_CAPTURE_ANALYSIS:I = 0x3c

.field public static final CONTROL_AVAILABLE_FEATURE_STP_SECOND_PICTURE_CONFIG:I = 0x1f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_FEATURE_STP_SUPPORT_PARTIAL_CAPTURE:I = 0x26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_FEATURE_STP_SUPPORT_YUV_CAPTURE_ONLY:I = 0x23

.field public static final CONTROL_AVAILABLE_FEATURE_STR:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_FEATURE_SUB_PREVIEW_CB:I = 0x19

.field public static final CONTROL_AVAILABLE_FEATURE_SUB_PREVIEW_CB_USE_REQUEST_SAMPLING:I = 0x39

.field public static final CONTROL_AVAILABLE_FEATURE_SUPER_NIGHT_PPP:I = 0x17

.field public static final CONTROL_AVAILABLE_FEATURE_SUPER_NIGHT_SHOT:I = 0xe

.field public static final CONTROL_AVAILABLE_FEATURE_SUPPORT_LITE_NIGHT_IN_AUTO_MODE:I = 0x24

.field public static final CONTROL_AVAILABLE_FEATURE_SUPPORT_LITE_NIGHT_IN_SELFIE_MODE:I = 0x34

.field public static final CONTROL_AVAILABLE_FEATURE_SW_SUPER_VIDEO_STABILIZATION:I = 0x1d

.field public static final CONTROL_AVAILABLE_FEATURE_SYSTEM_TRANSIENT_ZOOMING:I = 0x3a

.field public static final CONTROL_AVAILABLE_FEATURE_THIRD_PICTURE_CONFIG:I = 0x37

.field public static final CONTROL_AVAILABLE_FEATURE_UDC:I = 0x38

.field public static final CONTROL_AVAILABLE_FEATURE_VALID_IMAGE_REGION_PRIORITY:I = 0x35

.field public static final CONTROL_AVAILABLE_FEATURE_VIDEO_BEAUTY_FACE:I = 0x6

.field public static final CONTROL_AVAILABLE_FEATURE_VIDEO_BOKEH:I = 0x11

.field public static final CONTROL_AVAILABLE_FEATURE_VIDEO_FUNCTION_NEED_YUV_SNAP:I = 0x12

.field public static final CONTROL_AVAILABLE_FEATURE_VIDEO_PREVIEW_CB:I = 0x15

.field public static final CONTROL_AVAILABLE_FEATURE_ZOOM_IN_OUT_PHOTO:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTROL_AVAILABLE_FEATURE_ZOOM_LOCK:I = 0x2b

.field public static final CONTROL_AWB_MODE_AUTO:I = 0x1

.field public static final CONTROL_AWB_MODE_CLOUDY_DAYLIGHT:I = 0x6

.field public static final CONTROL_AWB_MODE_DAYLIGHT:I = 0x5

.field public static final CONTROL_AWB_MODE_FLUORESCENT:I = 0x3

.field public static final CONTROL_AWB_MODE_INCANDESCENT:I = 0x2

.field public static final CONTROL_AWB_MODE_KELVIN:I = 0x65

.field public static final CONTROL_AWB_MODE_OFF:I = 0x0

.field public static final CONTROL_AWB_MODE_SHADE:I = 0x8

.field public static final CONTROL_AWB_MODE_TWILIGHT:I = 0x7

.field public static final CONTROL_AWB_MODE_WARM_FLUORESCENT:I = 0x4

.field public static final CONTROL_AWB_STATE_CONVERGED:I = 0x2

.field public static final CONTROL_AWB_STATE_INACTIVE:I = 0x0

.field public static final CONTROL_AWB_STATE_LOCKED:I = 0x3

.field public static final CONTROL_AWB_STATE_SEARCHING:I = 0x1

.field public static final CONTROL_BODY_BEAUTY_PARAMETERS_INDEX_HEAD:I = 0x1

.field public static final CONTROL_BODY_BEAUTY_PARAMETERS_INDEX_HIP:I = 0x4

.field public static final CONTROL_BODY_BEAUTY_PARAMETERS_INDEX_LEGS:I = 0x5

.field public static final CONTROL_BODY_BEAUTY_PARAMETERS_INDEX_LONG_LEGS:I = 0x6

.field public static final CONTROL_BODY_BEAUTY_PARAMETERS_INDEX_SHOULDER:I = 0x2

.field public static final CONTROL_BODY_BEAUTY_PARAMETERS_INDEX_WAIST:I = 0x3

.field public static final CONTROL_BODY_BEAUTY_PARAMETERS_INDEX_WHOLE:I = 0x0

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_ARTIFY_PICASSO:I = 0x9

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_BIG_BOKEH:I = 0xa

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_BOKEH_LENS:I = 0x0

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_BOKEH_SPIN:I = 0x1

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_BOKEH_ZOOM:I = 0x2

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_COLOR_PICKER:I = 0x14

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_COLOR_POP:I = 0x6

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_GLITCH:I = 0x8

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_HIGHLOW_KEY:I = 0x15

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_HIGH_KEY:I = 0x16

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_INFO_INDEX_MODE:I = 0x0

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_INFO_INDEX_VALUE:I = 0x1

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_LOW_KEY:I = 0x17

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_MONO_TONE:I = 0x5

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_STAGE_LIGHT:I = 0x4

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_STUDIO_LIGHT:I = 0xb

.field public static final CONTROL_BOKEH_SPECIAL_EFFECT_VINTAGE_LIGHT:I = 0x3

.field public static final CONTROL_BOKEH_STATE_CAPTURE_PROCESSING_FAIL:I = 0x65

.field public static final CONTROL_BOKEH_STATE_CAPTURE_PROCESSING_SUCCESS:I = 0x64

.field public static final CONTROL_BOKEH_STATE_ERROR_DISTANCE_TOO_CLOSE:I = 0xc

.field public static final CONTROL_BOKEH_STATE_ERROR_DISTANCE_TOO_FAR:I = 0xb

.field public static final CONTROL_BOKEH_STATE_ERROR_INVALID_DEPTH:I = 0x1

.field public static final CONTROL_BOKEH_STATE_ERROR_LENS_PARTIALLY_COVERED:I = 0x15

.field public static final CONTROL_BOKEH_STATE_ERROR_LOW_LIGHT_CONDITION:I = 0x1f

.field public static final CONTROL_BOKEH_STATE_ERROR_NO_FACE_DETECTED:I = 0x29

.field public static final CONTROL_BOKEH_STATE_SUCCESS:I = 0x0

.field public static final CONTROL_CAPTURE_HINT_ANIMATED_GIF:I = 0x2

.field public static final CONTROL_CAPTURE_HINT_BURST:I = 0x1

.field public static final CONTROL_CAPTURE_HINT_NONE:I = 0x0

.field public static final CONTROL_CAPTURE_HINT_ST:I = 0x3

.field public static final CONTROL_CAPTURE_HINT_ST_BURST:I = 0x4

.field public static final CONTROL_CAPTURE_INTENT_CUSTOM:I = 0x0

.field public static final CONTROL_CAPTURE_INTENT_MANUAL:I = 0x6

.field public static final CONTROL_CAPTURE_INTENT_PREVIEW:I = 0x1

.field public static final CONTROL_CAPTURE_INTENT_STILL_CAPTURE:I = 0x2

.field public static final CONTROL_CAPTURE_INTENT_VIDEO_RECORD:I = 0x3

.field public static final CONTROL_CAPTURE_INTENT_VIDEO_SNAPSHOT:I = 0x4

.field public static final CONTROL_CAPTURE_INTENT_ZERO_SHUTTER_LAG:I = 0x5

.field public static final CONTROL_DOF_MULTI_INFO_USAGE_MULTI_AF:I = 0x1

.field public static final CONTROL_DOF_MULTI_INFO_USAGE_OUTFOCUS:I = 0x0

.field public static final CONTROL_DS_CONDITION_MAIN_PIC_CNT_BIT_MASK:I = 0xff

.field public static final CONTROL_DS_CONDITION_MODE_BIT_SHIFT_CNT:I = 0x10

.field public static final CONTROL_DS_CONDITION_PRESET_LLHDR:I = 0x1e0005

.field public static final CONTROL_DS_CONDITION_PRESET_SINGLE_REMOSAIC:I = 0x8

.field public static final CONTROL_DS_CONDITION_SUB_PIC_CNT_BIT_MASK:I = 0xff00

.field public static final CONTROL_DS_EXTRA_INFO_MODE_BIT_MASK:I = -0x10000

.field public static final CONTROL_DS_EXTRA_INFO_MODE_DUAL_BOKEH:I = 0x10000

.field public static final CONTROL_DS_EXTRA_INFO_MODE_EXTRA_POST_PROCESS:I = 0x200000

.field public static final CONTROL_DS_EXTRA_INFO_MODE_FILTER_EFFECT:I = 0x100000

.field public static final CONTROL_DS_EXTRA_INFO_MODE_SINGLE_BOKEH:I = 0x20000

.field public static final CONTROL_DS_EXTRA_INFO_MODE_STAR_EFFECT:I = 0x40000

.field public static final CONTROL_DS_EXTRA_INFO_MODE_ULTRA_LENS_DISTORTION:I = 0x80000

.field public static final CONTROL_DS_EXTRA_INFO_NEED_AI_SR:I = 0x8

.field public static final CONTROL_DS_EXTRA_INFO_NEED_CONT_DET:I = 0x10

.field public static final CONTROL_DS_EXTRA_INFO_NEED_DEBLUR:I = 0x4

.field public static final CONTROL_DS_EXTRA_INFO_NEED_FACE_RESTORATION:I = 0x20

.field public static final CONTROL_DS_EXTRA_INFO_NEED_LTM:I = 0x2

.field public static final CONTROL_DS_EXTRA_INFO_NEED_PREVIEW_TARGET:I = 0x1

.field public static final CONTROL_DS_EXTRA_INFO_NEED_SINGLE_UDC:I = 0x40

.field public static final CONTROL_DS_EXTRA_INFO_NONE:I = 0x0

.field public static final CONTROL_DS_MODE_AIF_MERGE:I = 0x6e

.field public static final CONTROL_DS_MODE_AI_HIGHRES_HDR:I = 0xb7

.field public static final CONTROL_DS_MODE_AI_HIGHRES_MAX_RESOLUTION_HDR:I = 0xb5

.field public static final CONTROL_DS_MODE_AI_HIGHRES_MAX_RESOLUTION_SINGLE:I = 0xb4

.field public static final CONTROL_DS_MODE_AI_HIGHRES_SINGLE:I = 0xb6

.field public static final CONTROL_DS_MODE_DUAL_BOKEH_HDR:I = 0x29

.field public static final CONTROL_DS_MODE_DUAL_BOKEH_LLHDR:I = 0x2a

.field public static final CONTROL_DS_MODE_DUAL_BOKEH_LLS:I = 0x28

.field public static final CONTROL_DS_MODE_DUAL_BOKEH_NIGHT:I = 0x2d

.field public static final CONTROL_DS_MODE_DUAL_BOKEH_QM_LT:I = 0x2f

.field public static final CONTROL_DS_MODE_DUAL_BOKEH_QM_LT_HDR:I = 0x30

.field public static final CONTROL_DS_MODE_DUAL_BOKEH_SINGLE:I = 0x2e

.field public static final CONTROL_DS_MODE_DUAL_BOKEH_SR:I = 0x2b

.field public static final CONTROL_DS_MODE_DUAL_BOKEH_SR_HDR:I = 0x2c

.field public static final CONTROL_DS_MODE_GALAXY_RAW:I = 0xaa

.field public static final CONTROL_DS_MODE_HIFI_MERGE_DEBLUR:I = 0xb

.field public static final CONTROL_DS_MODE_HIFI_MERGE_FLASH:I = 0xf

.field public static final CONTROL_DS_MODE_HIFI_MERGE_OIS:I = 0xc

.field public static final CONTROL_DS_MODE_HIFI_MERGE_SR:I = 0xd

.field public static final CONTROL_DS_MODE_HIFI_MERGE_ZSL:I = 0xe

.field public static final CONTROL_DS_MODE_HIFI_PICK:I = 0xa

.field public static final CONTROL_DS_MODE_HIGHRES_LLHDR_MERGE:I = 0x5b

.field public static final CONTROL_DS_MODE_HIGHRES_MERGE:I = 0x5a

.field public static final CONTROL_DS_MODE_LITE_LLHDR_MERGE:I = 0x65

.field public static final CONTROL_DS_MODE_LITE_MERGE:I = 0x64

.field public static final CONTROL_DS_MODE_LLHDR_MERGE_LDEBLURVEHDR_QZM:I = 0x27

.field public static final CONTROL_DS_MODE_LLHDR_MERGE_LDEBLURVENR:I = 0x3c

.field public static final CONTROL_DS_MODE_LLHDR_MERGE_LZT:I = 0x1e

.field public static final CONTROL_DS_MODE_LLHDR_MERGE_QOISM3_LOIST:I = 0x1f

.field public static final CONTROL_DS_MODE_LLHDR_MERGE_QOISM4:I = 0x20

.field public static final CONTROL_DS_MODE_LLHDR_MERGE_QOISM5:I = 0x21

.field public static final CONTROL_DS_MODE_LLHDR_MERGE_QOISM6:I = 0x22

.field public static final CONTROL_DS_MODE_LLHDR_MERGE_QOISM7:I = 0x23

.field public static final CONTROL_DS_MODE_LLHDR_MERGE_QZM5:I = 0x25

.field public static final CONTROL_DS_MODE_LLHDR_MERGE_QZM7:I = 0x26

.field public static final CONTROL_DS_MODE_MFHDR_MERGE_LZT:I = 0x14

.field public static final CONTROL_DS_MODE_MFHDR_MERGE_QOISM3_LOIST:I = 0x16

.field public static final CONTROL_DS_MODE_MFHDR_MERGE_QOISM4:I = 0x17

.field public static final CONTROL_DS_MODE_MFHDR_MERGE_QOISM5:I = 0x18

.field public static final CONTROL_DS_MODE_MFHDR_MERGE_QOISM6:I = 0x19

.field public static final CONTROL_DS_MODE_MFHDR_MERGE_QOISM7:I = 0x1a

.field public static final CONTROL_DS_MODE_MFHDR_MERGE_QZM5:I = 0x1c

.field public static final CONTROL_DS_MODE_MFHDR_MERGE_QZM7:I = 0x1d

.field public static final CONTROL_DS_MODE_MFHDR_MERGE_REMOSAIC:I = 0x15

.field public static final CONTROL_DS_MODE_MF_SR_MERGE:I = 0x46

.field public static final CONTROL_DS_MODE_MF_SR_MERGE_HDR:I = 0x47

.field public static final CONTROL_DS_MODE_MF_SR_MERGE_REMOSAIC:I = 0x4b

.field public static final CONTROL_DS_MODE_MF_UW_SR_MERGE:I = 0x82

.field public static final CONTROL_DS_MODE_NON_PROCESSING_MODE:I = 0x0

.field public static final CONTROL_DS_MODE_RAW_SR_MERGE:I = 0xa0

.field public static final CONTROL_DS_MODE_SIE_LLHDR_MERGE:I = 0x79

.field public static final CONTROL_DS_MODE_SIE_MERGE:I = 0x78

.field public static final CONTROL_DS_MODE_SIE_MFHDR_MERGE:I = 0x7a

.field public static final CONTROL_DS_MODE_SINGLE:I = 0x0

.field public static final CONTROL_DS_MODE_SSHDR_MERGE:I = 0x96

.field public static final CONTROL_DS_MODE_SUPER_NIGHT_EXTREME_DARK:I = 0x53

.field public static final CONTROL_DS_MODE_SUPER_NIGHT_EXTREME_DARK_MAX:I = 0x56

.field public static final CONTROL_DS_MODE_SUPER_NIGHT_HANDHELD:I = 0x50

.field public static final CONTROL_DS_MODE_SUPER_NIGHT_HANDHELD_MAX:I = 0x54

.field public static final CONTROL_DS_MODE_SUPER_NIGHT_TRIPOD:I = 0x51

.field public static final CONTROL_DS_MODE_SUPER_NIGHT_TRIPOD_LE:I = 0x52

.field public static final CONTROL_DS_MODE_SUPER_NIGHT_TRIPOD_MAX:I = 0x55

.field public static final CONTROL_DS_MODE_UDC_RAW_HDR_MERGE:I = 0x8d

.field public static final CONTROL_DS_MODE_UDC_RAW_MERGE:I = 0x8c

.field public static final CONTROL_DS_MODE_UDC_SAQE:I = 0x8e

.field public static final CONTROL_DS_MODE_UDC_SAQE_QMLT:I = 0x8f

.field public static final CONTROL_EFFECT_AE_AVAILABLE_TARGET_FPS_RANGES_INDEX_PREVIEW:I = 0x0

.field public static final CONTROL_EFFECT_AE_AVAILABLE_TARGET_FPS_RANGES_INDEX_RECORD:I = 0x1

.field public static final CONTROL_EFFECT_MODE_AQUA:I = 0x8

.field public static final CONTROL_EFFECT_MODE_BEAUTY:I = 0x65

.field public static final CONTROL_EFFECT_MODE_BLACKBOARD:I = 0x7

.field public static final CONTROL_EFFECT_MODE_MONO:I = 0x1

.field public static final CONTROL_EFFECT_MODE_NEGATIVE:I = 0x2

.field public static final CONTROL_EFFECT_MODE_OFF:I = 0x0

.field public static final CONTROL_EFFECT_MODE_POSTERIZE:I = 0x5

.field public static final CONTROL_EFFECT_MODE_SEPIA:I = 0x4

.field public static final CONTROL_EFFECT_MODE_SOLARIZE:I = 0x3

.field public static final CONTROL_EFFECT_MODE_WHITEBOARD:I = 0x6

.field public static final CONTROL_EVENT_FINDER_MODE_OFF:I = 0x0

.field public static final CONTROL_EVENT_FINDER_MODE_ON:I = 0x1

.field public static final CONTROL_HAND_GESTURE_MODE_OFF:I = 0x0

.field public static final CONTROL_HAND_GESTURE_MODE_ON:I = 0x1

.field public static final CONTROL_HAND_GESTURE_TYPE_PALM_PHOTO:I = 0x0

.field public static final CONTROL_HAND_GESTURE_TYPE_PALM_VIDEO:I = 0x1

.field public static final CONTROL_LENS_DISTORTION_CORRECTION_MODE_OFF:I = 0x0

.field public static final CONTROL_LENS_DISTORTION_CORRECTION_MODE_ON:I = 0x1

.field public static final CONTROL_LENS_SUGGESTION_MACRO:I = 0x1

.field public static final CONTROL_LENS_SUGGESTION_NONE:I = 0x0

.field public static final CONTROL_LIGHT_CONDITION_ENABLE_MODE_FULL:I = 0x1

.field public static final CONTROL_LIGHT_CONDITION_ENABLE_MODE_HDR_ONLY:I = 0x2

.field public static final CONTROL_LIGHT_CONDITION_ENABLE_MODE_LLS_ONLY:I = 0x3

.field public static final CONTROL_LIGHT_CONDITION_ENABLE_MODE_SIMPLE:I = 0x0

.field public static final CONTROL_LIGHT_CONDITION_ENABLE_MODE_SINGLE_ONLY:I = 0x4

.field public static final CONTROL_LIGHT_CONDITION_FLASH:I = 0x20

.field public static final CONTROL_LIGHT_CONDITION_HIGH:I = 0x0

.field public static final CONTROL_LIGHT_CONDITION_LLS_FLASH:I = 0x21

.field public static final CONTROL_LIGHT_CONDITION_LLS_LOW:I = 0x12

.field public static final CONTROL_LIGHT_CONDITION_LOW:I = 0x10

.field public static final CONTROL_LIGHT_CONDITION_SIS_LOW:I = 0x11

.field public static final CONTROL_LIGHT_CONDITION_TORCH_FLASH:I = 0x22

.field public static final CONTROL_LIVE_HDR_MODE_AUTO:I = 0x2

.field public static final CONTROL_LIVE_HDR_MODE_AUTO_3P:I = 0x3

.field public static final CONTROL_LIVE_HDR_MODE_AUTO_3P_VIDEO:I = 0x4

.field public static final CONTROL_LIVE_HDR_MODE_OFF:I = 0x0

.field public static final CONTROL_LIVE_HDR_MODE_ON:I = 0x1

.field public static final CONTROL_LIVE_HDR_STATE_OFF:I = 0x0

.field public static final CONTROL_LIVE_HDR_STATE_OFF_HDR_ON_REQUIRED:I = 0x65

.field public static final CONTROL_LIVE_HDR_STATE_ON:I = 0x1

.field public static final CONTROL_METERING_MODE_CENTER:I = 0x0

.field public static final CONTROL_METERING_MODE_MANUAL:I = 0x3

.field public static final CONTROL_METERING_MODE_MATRIX:I = 0x2

.field public static final CONTROL_METERING_MODE_SPOT:I = 0x1

.field public static final CONTROL_METERING_MODE_WEIGHTED_CENTER:I = 0x4

.field public static final CONTROL_METERING_MODE_WEIGHTED_MATRIX:I = 0x6

.field public static final CONTROL_METERING_MODE_WEIGHTED_SPOT:I = 0x5

.field public static final CONTROL_MODE_AUTO:I = 0x1

.field public static final CONTROL_MODE_OFF:I = 0x0

.field public static final CONTROL_MODE_OFF_KEEP_STATE:I = 0x3

.field public static final CONTROL_MODE_USE_SCENE_MODE:I = 0x2

.field public static final CONTROL_MULTIVIEW_CROP_ROI_STATE_IDLE:I = 0x1

.field public static final CONTROL_MULTIVIEW_CROP_ROI_STATE_LOST:I = 0x3

.field public static final CONTROL_MULTIVIEW_CROP_ROI_STATE_OK:I = 0x2

.field public static final CONTROL_MULTIVIEW_CROP_ROI_STATE_UNDEFINED:I = 0x0

.field public static final CONTROL_MULTI_AF_MODE_OFF:I = 0x0

.field public static final CONTROL_MULTI_AF_MODE_ON:I = 0x1

.field public static final CONTROL_OBJECT_TRACKING_STATE_IDLE:I = 0x1

.field public static final CONTROL_OBJECT_TRACKING_STATE_LOST:I = 0x4

.field public static final CONTROL_OBJECT_TRACKING_STATE_OK:I = 0x2

.field public static final CONTROL_OBJECT_TRACKING_STATE_TEMPLOST:I = 0x3

.field public static final CONTROL_OBJECT_TRACKING_STATE_UNDEFINED:I = 0x0

.field public static final CONTROL_OVER_HEAT_HINT_LOW_POWER_MODE_L1:I = 0x1

.field public static final CONTROL_OVER_HEAT_HINT_LOW_POWER_MODE_L2:I = 0x2

.field public static final CONTROL_OVER_HEAT_HINT_LOW_POWER_MODE_L3:I = 0x4

.field public static final CONTROL_OVER_HEAT_HINT_LOW_POWER_MODE_L4:I = 0x8

.field public static final CONTROL_OVER_HEAT_HINT_LOW_POWER_MODE_L5:I = 0x10

.field public static final CONTROL_OVER_HEAT_HINT_LOW_POWER_MODE_L6:I = 0x20

.field public static final CONTROL_OVER_HEAT_HINT_NONE:I = 0x0

.field public static final CONTROL_PAF_MODE_OFF:I = 0x0

.field public static final CONTROL_PAF_MODE_ON:I = 0x1

.field public static final CONTROL_RECORDING_DR_MODE_3HDR:I = 0x2

.field public static final CONTROL_RECORDING_DR_MODE_HDR10:I = 0x1

.field public static final CONTROL_RECORDING_DR_MODE_SDR:I = 0x0

.field public static final CONTROL_RECORDING_EXTRA_MODE_AUTO_FRAMING:I = 0x1

.field public static final CONTROL_RECORDING_EXTRA_MODE_NONE:I = 0x0

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_10X:I = 0xc

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_15X:I = 0xd

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_16X:I = 0x3

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_30X:I = 0xe

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_32X:I = 0x4

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_4X:I = 0x1

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_4X_AUTO:I = 0x0

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_5X:I = 0xb

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_5X_AUTO:I = 0xa

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_60X:I = 0xf

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_64X:I = 0x5

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_8X:I = 0x2

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_NIGHT_15X:I = 0x63

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_NIGHT_45X:I = 0x64

.field public static final CONTROL_RECORDING_MOTION_SPEED_MODE_NIGHT_AUTO:I = 0x62

.field public static final CONTROL_REPEATING_REQUEST_HINT_NONE:I = 0x0

.field public static final CONTROL_REPEATING_REQUEST_HINT_USING_GPU:I = 0x1

.field public static final CONTROL_SCENE_INDEX_ANIMAL:I = 0x9

.field public static final CONTROL_SCENE_INDEX_BABY:I = 0x16

.field public static final CONTROL_SCENE_INDEX_BEACH:I = 0xb

.field public static final CONTROL_SCENE_INDEX_BIRD:I = 0x10

.field public static final CONTROL_SCENE_INDEX_CAT:I = 0x17

.field public static final CONTROL_SCENE_INDEX_CITY:I = 0x23

.field public static final CONTROL_SCENE_INDEX_CITYSTREET:I = 0x11

.field public static final CONTROL_SCENE_INDEX_CLOTHING:I = 0x19

.field public static final CONTROL_SCENE_INDEX_DAY_HDR:I = 0x2710

.field public static final CONTROL_SCENE_INDEX_DOG:I = 0x18

.field public static final CONTROL_SCENE_INDEX_DRINK:I = 0x1a

.field public static final CONTROL_SCENE_INDEX_FACE:I = 0x26

.field public static final CONTROL_SCENE_INDEX_FACE_WITH_TEXT:I = 0x27

.field public static final CONTROL_SCENE_INDEX_FLOWER:I = 0x4

.field public static final CONTROL_SCENE_INDEX_FOOD:I = 0x1

.field public static final CONTROL_SCENE_INDEX_GREENERY:I = 0x15

.field public static final CONTROL_SCENE_INDEX_HOMEINDOOR:I = 0x12

.field public static final CONTROL_SCENE_INDEX_IDLE:I = -0x1

.field public static final CONTROL_SCENE_INDEX_INVALID:I = 0x0

.field public static final CONTROL_SCENE_INDEX_MOON:I = 0x271c

.field public static final CONTROL_SCENE_INDEX_MOUNTAIN:I = 0x6

.field public static final CONTROL_SCENE_INDEX_MOUNTAIN_FALL:I = 0x8

.field public static final CONTROL_SCENE_INDEX_MOUNTAIN_GREEN:I = 0x7

.field public static final CONTROL_SCENE_INDEX_NIGHTVIEW:I = 0xe

.field public static final CONTROL_SCENE_INDEX_NIGHT_DISABLED_SUPER_NIGHT_SUGGEST:I = 0x2713

.field public static final CONTROL_SCENE_INDEX_NIGHT_HDR:I = 0x2711

.field public static final CONTROL_SCENE_INDEX_NIGHT_OFF_NIGHT_SCENE:I = 0x2724

.field public static final CONTROL_SCENE_INDEX_NIGHT_OFF_SUPER_NIGHT_SUGGEST:I = 0x2725

.field public static final CONTROL_SCENE_INDEX_NIGHT_ON_NIGHT_SCENE:I = 0x271a

.field public static final CONTROL_SCENE_INDEX_NIGHT_ON_SUPER_NIGHT_SUGGEST:I = 0x271b

.field public static final CONTROL_SCENE_INDEX_NIGHT_SCENE_NIGHT_HDR:I = 0x2712

.field public static final CONTROL_SCENE_INDEX_PEOPLE:I = 0x1b

.field public static final CONTROL_SCENE_INDEX_PERSON:I = 0x3

.field public static final CONTROL_SCENE_INDEX_RESTAURANT_INDOOR:I = 0x1c

.field public static final CONTROL_SCENE_INDEX_SCENERY:I = 0x14

.field public static final CONTROL_SCENE_INDEX_SCENE_DETECTION_OFF:I = -0x2

.field public static final CONTROL_SCENE_INDEX_SHOE_DISP:I = 0x24

.field public static final CONTROL_SCENE_INDEX_SHOE_ON:I = 0x25

.field public static final CONTROL_SCENE_INDEX_SKY:I = 0xc

.field public static final CONTROL_SCENE_INDEX_SKYSCRAPER:I = 0x22

.field public static final CONTROL_SCENE_INDEX_SKY_BLUE:I = 0x20

.field public static final CONTROL_SCENE_INDEX_SKY_GREY:I = 0x21

.field public static final CONTROL_SCENE_INDEX_SNOW:I = 0xd

.field public static final CONTROL_SCENE_INDEX_STAGE:I = 0x1d

.field public static final CONTROL_SCENE_INDEX_SUNSET_SUNRISE:I = 0xa

.field public static final CONTROL_SCENE_INDEX_TEXT:I = 0x2

.field public static final CONTROL_SCENE_INDEX_TREE:I = 0x5

.field public static final CONTROL_SCENE_INDEX_TREE_GREEN:I = 0x1f

.field public static final CONTROL_SCENE_INDEX_VEHICLE:I = 0x1e

.field public static final CONTROL_SCENE_INDEX_WATERFALL:I = 0xf

.field public static final CONTROL_SCENE_INDEX_WATERSIDE:I = 0x13

.field public static final CONTROL_SCENE_MODE_ACTION:I = 0x2

.field public static final CONTROL_SCENE_MODE_BARCODE:I = 0x10

.field public static final CONTROL_SCENE_MODE_BEACH:I = 0x8

.field public static final CONTROL_SCENE_MODE_CANDLELIGHT:I = 0xf

.field public static final CONTROL_SCENE_MODE_DISABLED:I = 0x0

.field public static final CONTROL_SCENE_MODE_FACE_PRIORITY:I = 0x1

.field public static final CONTROL_SCENE_MODE_FIREWORKS:I = 0xc

.field public static final CONTROL_SCENE_MODE_HDR:I = 0x12

.field public static final CONTROL_SCENE_MODE_LANDSCAPE:I = 0x4

.field public static final CONTROL_SCENE_MODE_NIGHT:I = 0x5

.field public static final CONTROL_SCENE_MODE_NIGHT_PORTRAIT:I = 0x6

.field public static final CONTROL_SCENE_MODE_PARTY:I = 0xe

.field public static final CONTROL_SCENE_MODE_PORTRAIT:I = 0x3

.field public static final CONTROL_SCENE_MODE_SNOW:I = 0x9

.field public static final CONTROL_SCENE_MODE_SPORTS:I = 0xd

.field public static final CONTROL_SCENE_MODE_STEADYPHOTO:I = 0xb

.field public static final CONTROL_SCENE_MODE_SUNSET:I = 0xa

.field public static final CONTROL_SCENE_MODE_THEATRE:I = 0x7

.field public static final CONTROL_SHOOTING_MODE_AI_HIGHRES:I = 0x27

.field public static final CONTROL_SHOOTING_MODE_AUTO:I = 0x1

.field public static final CONTROL_SHOOTING_MODE_BEAUTY:I = 0x2

.field public static final CONTROL_SHOOTING_MODE_BOKEH_VIDEO:I = 0x1c

.field public static final CONTROL_SHOOTING_MODE_DUAL_BOKEH:I = 0x15

.field public static final CONTROL_SHOOTING_MODE_FOOD:I = 0x9

.field public static final CONTROL_SHOOTING_MODE_GALAXY_RAW:I = 0x26

.field public static final CONTROL_SHOOTING_MODE_HDR:I = 0x7

.field public static final CONTROL_SHOOTING_MODE_HYPER_MOTION_VIDEO:I = 0x10

.field public static final CONTROL_SHOOTING_MODE_INSTAGRAM_PHOTO:I = 0x1d

.field public static final CONTROL_SHOOTING_MODE_MULTIVIEW_VIDEO_MULTI:I = 0x25

.field public static final CONTROL_SHOOTING_MODE_MULTIVIEW_VIDEO_SINGLE:I = 0x20

.field public static final CONTROL_SHOOTING_MODE_NONE:I = 0x0

.field public static final CONTROL_SHOOTING_MODE_PANORAMA:I = 0x4

.field public static final CONTROL_SHOOTING_MODE_PRO:I = 0x5

.field public static final CONTROL_SHOOTING_MODE_PRO_VIDEO:I = 0x23

.field public static final CONTROL_SHOOTING_MODE_QUICK_TAKE_VIDEO:I = 0x24

.field public static final CONTROL_SHOOTING_MODE_REAR_CAM_SELFIE:I = 0x1b

.field public static final CONTROL_SHOOTING_MODE_SINGLE_BOKEH:I = 0x19

.field public static final CONTROL_SHOOTING_MODE_SLOW_MOTION_VIDEO:I = 0xd

.field public static final CONTROL_SHOOTING_MODE_SPORTS:I = 0xf

.field public static final CONTROL_SHOOTING_MODE_SSM_VIDEO:I = 0x14

.field public static final CONTROL_SHOOTING_MODE_STICKER:I = 0x18

.field public static final CONTROL_SHOOTING_MODE_ST_FRONT:I = 0x22

.field public static final CONTROL_SHOOTING_MODE_ST_REAR:I = 0x21

.field public static final CONTROL_SHOOTING_MODE_SUPER_NIGHT:I = 0x1f

.field public static final CONTROL_SHOOTING_MODE_VIDEO:I = 0x3

.field public static final CONTROL_SPECIAL_FUNCTIONS_MAX_COVERAGE_FHD:I = 0x1

.field public static final CONTROL_SPECIAL_FUNCTIONS_MAX_COVERAGE_HD:I = 0x0

.field public static final CONTROL_SPECIAL_FUNCTIONS_MAX_COVERAGE_UHD:I = 0x2

.field public static final CONTROL_SPECIAL_FUNCTIONS_MODE_DUAL_BOKEH_CAPTURE:I = 0x0

.field public static final CONTROL_SPECIAL_FUNCTIONS_MODE_SDK_HYPER_LAPSE:I = 0x1

.field public static final CONTROL_SSM_SHOT_MODE_MULTI:I = 0x1

.field public static final CONTROL_SSM_SHOT_MODE_MULTI_FRC:I = 0x3

.field public static final CONTROL_SSM_SHOT_MODE_SINGLE:I = 0x2

.field public static final CONTROL_SSM_SHOT_MODE_SINGLE_FRC:I = 0x4

.field public static final CONTROL_SSM_SHOT_MODE_UNKNOWN:I = 0x0

.field public static final CONTROL_SSRM_HINT_LOW_POWER_MODE_L1:I = 0x1

.field public static final CONTROL_SSRM_HINT_LOW_POWER_MODE_L2:I = 0x2

.field public static final CONTROL_SSRM_HINT_LOW_POWER_MODE_L3:I = 0x4

.field public static final CONTROL_SSRM_HINT_LOW_POWER_MODE_L4:I = 0x8

.field public static final CONTROL_SSRM_HINT_LOW_POWER_MODE_L5:I = 0x10

.field public static final CONTROL_SSRM_HINT_LOW_POWER_MODE_L6:I = 0x20

.field public static final CONTROL_SSRM_HINT_NONE:I = 0x0

.field public static final CONTROL_STILL_CAPTURE_BLURRED:I = 0x1

.field public static final CONTROL_STILL_CAPTURE_NORMAL:I = 0x0

.field public static final CONTROL_SUPER_NIGHT_SHOT_MODE_MAX:I = 0x2

.field public static final CONTROL_SUPER_NIGHT_SHOT_MODE_NORMAL:I = 0x1

.field public static final CONTROL_SUPER_NIGHT_SHOT_MODE_OFF:I = 0x0

.field public static final CONTROL_SUPER_SLOW_MOTION_MODE_AUTO_DETECT:I = 0x1

.field public static final CONTROL_SUPER_SLOW_MOTION_MODE_MANUAL:I = 0x0

.field public static final CONTROL_SUPER_SLOW_MOTION_MODE_PREPARE_AUTO_DETECT:I = 0x2

.field public static final CONTROL_SUPER_SLOW_MOTION_STATE_AUTO_DETECT_CANCELED:I = 0x3

.field public static final CONTROL_SUPER_SLOW_MOTION_STATE_NEED_STOP:I = 0x4

.field public static final CONTROL_SUPER_SLOW_MOTION_STATE_OPERATING:I = 0x2

.field public static final CONTROL_SUPER_SLOW_MOTION_STATE_READY:I = 0x1

.field public static final CONTROL_SUPER_SLOW_MOTION_STATE_UNDEFINED:I = 0x0

.field public static final CONTROL_SUPER_SLOW_MOTION_TRIGGER_AUTO_DETECT_CANCEL:I = 0x2

.field public static final CONTROL_SUPER_SLOW_MOTION_TRIGGER_AUTO_DETECT_CANCEL_WITH_GMC:I = 0x3

.field public static final CONTROL_SUPER_SLOW_MOTION_TRIGGER_IDLE:I = 0x0

.field public static final CONTROL_SUPER_SLOW_MOTION_TRIGGER_PREPARE_480FPS:I = 0x5

.field public static final CONTROL_SUPER_SLOW_MOTION_TRIGGER_PREPARE_960FPS:I = 0x4

.field public static final CONTROL_SUPER_SLOW_MOTION_TRIGGER_START:I = 0x1

.field public static final CONTROL_SW_VIDEO_STABILIZATION_OFF:I = 0x0

.field public static final CONTROL_SW_VIDEO_STABILIZATION_ON_EFFECT:I = 0x2

.field public static final CONTROL_SW_VIDEO_STABILIZATION_ON_NORMAL:I = 0x1

.field public static final CONTROL_TOUCH_AE_STATE_BV_CHANGED:I = 0x2

.field public static final CONTROL_TOUCH_AE_STATE_DONE:I = 0x1

.field public static final CONTROL_TOUCH_AE_STATE_SEARCHING:I = 0x0

.field public static final CONTROL_TRANSIENT_ACTION_MANUAL_FOCUSING:I = 0x2

.field public static final CONTROL_TRANSIENT_ACTION_OFF:I = 0x0

.field public static final CONTROL_TRANSIENT_ACTION_ZOOMING:I = 0x1

.field public static final CONTROL_TRANSIENT_ACTION_ZOOMING_JUMP_TELE:I = 0x5

.field public static final CONTROL_TRANSIENT_ACTION_ZOOMING_JUMP_UW:I = 0x3

.field public static final CONTROL_TRANSIENT_ACTION_ZOOMING_JUMP_WIDE:I = 0x4

.field public static final CONTROL_TRANSIENT_CAPTURE_ACTION_FAST_CAPTURE:I = 0x1

.field public static final CONTROL_TRANSIENT_CAPTURE_ACTION_OFF:I = 0x0

.field public static final CONTROL_VIDEO_STABILIZATION_MODE_OFF:I = 0x0

.field public static final CONTROL_VIDEO_STABILIZATION_MODE_ON:I = 0x1

.field public static final CONTROL_ZOOM_LOCK_STATE_ACTIVE:I = 0x1

.field public static final CONTROL_ZOOM_LOCK_STATE_INACTIVE:I = 0x0

.field public static final CONTROL_ZOOM_LOCK_STATE_LOCKED:I = 0x2

.field public static final CONTROL_ZOOM_LOCK_TRIGGER_CANCEL:I = 0x2

.field public static final CONTROL_ZOOM_LOCK_TRIGGER_IDLE:I = 0x0

.field public static final CONTROL_ZOOM_LOCK_TRIGGER_START:I = 0x1

.field public static final DEPTH_INFO_INDEX_AIF_CAPTURE_COUNT:I = 0x1

.field public static final DEPTH_INFO_INDEX_CENTER_DEPTH:I = 0x0

.field public static final DEPTH_INFO_INDEX_PLANE_ANGLE:I = 0x2

.field public static final EDGE_MODE_FAST:I = 0x1

.field public static final EDGE_MODE_HIGH_QUALITY:I = 0x2

.field public static final EDGE_MODE_OFF:I = 0x0

.field public static final EDGE_MODE_ZERO_SHUTTER_LAG:I = 0x3

.field public static final FLASH_MODE_OFF:I = 0x0

.field public static final FLASH_MODE_SINGLE:I = 0x1

.field public static final FLASH_MODE_TORCH:I = 0x2

.field public static final FLASH_STATE_CHARGING:I = 0x1

.field public static final FLASH_STATE_FIRED:I = 0x3

.field public static final FLASH_STATE_PARTIAL:I = 0x4

.field public static final FLASH_STATE_READY:I = 0x2

.field public static final FLASH_STATE_UNAVAILABLE:I = 0x0

.field public static final GALAXY_RAW_APP_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.galaxyraw"

.field public static final HOT_PIXEL_MODE_FAST:I = 0x1

.field public static final HOT_PIXEL_MODE_HIGH_QUALITY:I = 0x2

.field public static final HOT_PIXEL_MODE_OFF:I = 0x0

.field public static final IMG_FORMAT_FLEX_RGBA_8888:I = 0x2a

.field public static final IMG_FORMAT_HEIF:I = 0x48454946

.field public static final IMG_FORMAT_JPEG:I = 0x100

.field public static final IMG_FORMAT_RAW_SENSOR:I = 0x20

.field public static final IMG_FORMAT_RGBA_8888:I = 0x1

.field public static final IMG_FORMAT_UNKNOWN:I = 0x0

.field public static final IMG_FORMAT_YUV_420_888:I = 0x23

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_3:I = 0x3

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_FULL:I = 0x1

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY:I = 0x2

.field public static final INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED:I = 0x0

.field public static final LENS_APERTURE_AUTO:F = 0.0f

.field public static final LENS_FACING_BACK:I = 0x1

.field public static final LENS_FACING_EXTERNAL:I = 0x2

.field public static final LENS_FACING_FRONT:I = 0x0

.field public static final LENS_INFO_FOCUS_DISTANCE_CALIBRATION_APPROXIMATE:I = 0x1

.field public static final LENS_INFO_FOCUS_DISTANCE_CALIBRATION_CALIBRATED:I = 0x2

.field public static final LENS_INFO_FOCUS_DISTANCE_CALIBRATION_UNCALIBRATED:I = 0x0

.field public static final LENS_OPTICAL_STABILIZATION_MODE_OFF:I = 0x0

.field public static final LENS_OPTICAL_STABILIZATION_MODE_ON:I = 0x1

.field public static final LENS_OPTICAL_STABILIZATION_OPERATION_MODE_PICTURE:I = 0x0

.field public static final LENS_OPTICAL_STABILIZATION_OPERATION_MODE_SINX:I = 0x2

.field public static final LENS_OPTICAL_STABILIZATION_OPERATION_MODE_SINY:I = 0x3

.field public static final LENS_OPTICAL_STABILIZATION_OPERATION_MODE_VIDEO:I = 0x1

.field public static final LENS_STATE_MOVING:I = 0x1

.field public static final LENS_STATE_STATIONARY:I = 0x0

.field public static final LIVE_STICKERS_APP_PACKAGE:Ljava/lang/String; = "com.samsung.android.livestickers"

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI1:I = 0x3

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI1_UI:I = 0x4

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI2:I = 0x5

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI2_UI:I = 0x6

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI3:I = 0x7

.field public static final MULTIVIEW_CROP_ROI_INDEX_ROI3_UI:I = 0x8

.field public static final MULTIVIEW_CROP_ROI_INDEX_TELE:I = 0x2

.field public static final MULTIVIEW_CROP_ROI_INDEX_ULTRA_WIDE:I = 0x0

.field public static final MULTIVIEW_CROP_ROI_INDEX_WIDE:I = 0x1

.field public static final NOISE_REDUCTION_MODE_FAST:I = 0x1

.field public static final NOISE_REDUCTION_MODE_HIGH_QUALITY:I = 0x2

.field public static final NOISE_REDUCTION_MODE_MINIMAL:I = 0x3

.field public static final NOISE_REDUCTION_MODE_OFF:I = 0x0

.field public static final NOISE_REDUCTION_MODE_ZERO_SHUTTER_LAG:I = 0x4

.field public static final SAMSUNG_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_DIGITAL_ZOOM_LIST_INDEX_HIGH_RESOLUTION:I = 0x2

.field public static final SCALER_AVAILABLE_DIGITAL_ZOOM_LIST_INDEX_LENS_PHYSICAL:I = 0x6

.field public static final SCALER_AVAILABLE_DIGITAL_ZOOM_LIST_INDEX_MULTIVIEW:I = 0x3

.field public static final SCALER_AVAILABLE_DIGITAL_ZOOM_LIST_INDEX_NIGHT:I = 0x4

.field public static final SCALER_AVAILABLE_DIGITAL_ZOOM_LIST_INDEX_NORMAL:I = 0x0

.field public static final SCALER_AVAILABLE_DIGITAL_ZOOM_LIST_INDEX_PORTRAIT:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_DIGITAL_ZOOM_LIST_INDEX_PRO:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCALER_AVAILABLE_DIGITAL_ZOOM_LIST_INDEX_VIDEO:I = 0x1

.field public static final SCALER_CROPPING_TYPE_CENTER_ONLY:I = 0x0

.field public static final SCALER_CROPPING_TYPE_FREEFORM:I = 0x1

.field public static final SCALER_FLIP_MODE_HORIZONTAL:I = 0x1

.field public static final SCALER_FLIP_MODE_HORIZONTAL_VERTICAL:I = 0x3

.field public static final SCALER_FLIP_MODE_NONE:I = 0x0

.field public static final SCALER_FLIP_MODE_VERTICAL:I = 0x2

.field public static final SCALER_RAW_SENSOR_INFO_INDEX_BPP:I = 0x0

.field public static final SCALER_RAW_SENSOR_INFO_INDEX_PACKED:I = 0x1

.field public static final SCALER_RAW_SENSOR_INFO_MODE_PACKED:I = 0x1

.field public static final SCALER_RAW_SENSOR_INFO_MODE_UNPACKED:I = 0x0

.field public static final SCENE_DETECTION_INFO_INDEX_CONFIDENCE_SCORE:I = 0x2

.field public static final SCENE_DETECTION_INFO_INDEX_ROI_HEIGHT:I = 0x6

.field public static final SCENE_DETECTION_INFO_INDEX_ROI_LEFT:I = 0x3

.field public static final SCENE_DETECTION_INFO_INDEX_ROI_TOP:I = 0x4

.field public static final SCENE_DETECTION_INFO_INDEX_ROI_WIDTH:I = 0x5

.field public static final SCENE_DETECTION_INFO_INDEX_SCENE_INDEX:I = 0x1

.field public static final SCENE_DETECTION_INFO_INDEX_TIMESTAMP:I = 0x0

.field public static final SDK_AVAILABLE_FEATURE_HYPER_LAPSE:I = 0x0

.field public static final SDK_AVAILABLE_FEATURE_SMOOTH_ZOOM:I = 0x1

.field public static final SDK_AVAILABLE_FEATURE_SUPER_NIGHT:I = 0x2

.field public static final SDK_AVAILABLE_FEATURE_VIDEO_HDR_3P:I = 0x3

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_BGGR:I = 0x3

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GBRG:I = 0x2

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GRBG:I = 0x1

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGB:I = 0x4

.field public static final SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB:I = 0x0

.field public static final SENSOR_INFO_PHYSICAL_TYPE_MACRO:I = 0x1

.field public static final SENSOR_INFO_PHYSICAL_TYPE_NORMAL:I = 0x0

.field public static final SENSOR_INFO_PHYSICAL_TYPE_TELE:I = 0x4

.field public static final SENSOR_INFO_PHYSICAL_TYPE_TELE_2:I = 0x5

.field public static final SENSOR_INFO_PHYSICAL_TYPE_UDC:I = 0x6

.field public static final SENSOR_INFO_PHYSICAL_TYPE_ULTRA_WIDE:I = 0x3

.field public static final SENSOR_INFO_PHYSICAL_TYPE_UPPER:I = 0x7

.field public static final SENSOR_INFO_PHYSICAL_TYPE_WIDE:I = 0x2

.field public static final SENSOR_INFO_TIMESTAMP_SOURCE_REALTIME:I = 0x1

.field public static final SENSOR_INFO_TIMESTAMP_SOURCE_UNKNOWN:I = 0x0

.field public static final SENSOR_PIXEL_MODE_DEFAULT:I = 0x0

.field public static final SENSOR_PIXEL_MODE_MAXIMUM_RESOLUTION:I = 0x1

.field public static final SENSOR_REFERENCE_ILLUMINANT1_CLOUDY_WEATHER:I = 0xa

.field public static final SENSOR_REFERENCE_ILLUMINANT1_COOL_WHITE_FLUORESCENT:I = 0xe

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D50:I = 0x17

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D55:I = 0x14

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D65:I = 0x15

.field public static final SENSOR_REFERENCE_ILLUMINANT1_D75:I = 0x16

.field public static final SENSOR_REFERENCE_ILLUMINANT1_DAYLIGHT:I = 0x1

.field public static final SENSOR_REFERENCE_ILLUMINANT1_DAYLIGHT_FLUORESCENT:I = 0xc

.field public static final SENSOR_REFERENCE_ILLUMINANT1_DAY_WHITE_FLUORESCENT:I = 0xd

.field public static final SENSOR_REFERENCE_ILLUMINANT1_FINE_WEATHER:I = 0x9

.field public static final SENSOR_REFERENCE_ILLUMINANT1_FLASH:I = 0x4

.field public static final SENSOR_REFERENCE_ILLUMINANT1_FLUORESCENT:I = 0x2

.field public static final SENSOR_REFERENCE_ILLUMINANT1_ISO_STUDIO_TUNGSTEN:I = 0x18

.field public static final SENSOR_REFERENCE_ILLUMINANT1_SHADE:I = 0xb

.field public static final SENSOR_REFERENCE_ILLUMINANT1_STANDARD_A:I = 0x11

.field public static final SENSOR_REFERENCE_ILLUMINANT1_STANDARD_B:I = 0x12

.field public static final SENSOR_REFERENCE_ILLUMINANT1_STANDARD_C:I = 0x13

.field public static final SENSOR_REFERENCE_ILLUMINANT1_TUNGSTEN:I = 0x3

.field public static final SENSOR_REFERENCE_ILLUMINANT1_WHITE_FLUORESCENT:I = 0xf

.field public static final SENSOR_SENSITIVITY_AUTO:I = 0x0

.field public static final SENSOR_SENSOR_FLIP_MODE_HORIZONTAL:I = 0x1

.field public static final SENSOR_SENSOR_FLIP_MODE_HORIZONTAL_VERTICAL:I = 0x3

.field public static final SENSOR_SENSOR_FLIP_MODE_NONE:I = 0x0

.field public static final SENSOR_SENSOR_FLIP_MODE_PHYSICAL_HORIZONTAL:I = 0x4

.field public static final SENSOR_SENSOR_FLIP_MODE_PHYSICAL_VERTICAL:I = 0x8

.field public static final SENSOR_SENSOR_FLIP_MODE_VERTICAL:I = 0x2

.field public static final SENSOR_STREAM_TYPE_CROP:I = 0x1

.field public static final SENSOR_STREAM_TYPE_FULL:I = 0x0

.field public static final SENSOR_TEST_PATTERN_MODE_COLOR_BARS:I = 0x2

.field public static final SENSOR_TEST_PATTERN_MODE_COLOR_BARS_FADE_TO_GRAY:I = 0x3

.field public static final SENSOR_TEST_PATTERN_MODE_CUSTOM1:I = 0x100

.field public static final SENSOR_TEST_PATTERN_MODE_OFF:I = 0x0

.field public static final SENSOR_TEST_PATTERN_MODE_PN9:I = 0x4

.field public static final SENSOR_TEST_PATTERN_MODE_SOLID_COLOR:I = 0x1

.field public static final SHADING_MODE_FAST:I = 0x1

.field public static final SHADING_MODE_HIGH_QUALITY:I = 0x2

.field public static final SHADING_MODE_OFF:I = 0x0

.field public static final STATISTICS_FACE_DETECT_MODE_FULL:I = 0x2

.field public static final STATISTICS_FACE_DETECT_MODE_OFF:I = 0x0

.field public static final STATISTICS_FACE_DETECT_MODE_SIMPLE:I = 0x1

.field public static final STATISTICS_LENS_SHADING_MAP_MODE_OFF:I = 0x0

.field public static final STATISTICS_LENS_SHADING_MAP_MODE_ON:I = 0x1

.field public static final STATISTICS_SCENE_FLICKER_50HZ:I = 0x1

.field public static final STATISTICS_SCENE_FLICKER_60HZ:I = 0x2

.field public static final STATISTICS_SCENE_FLICKER_NONE:I = 0x0

.field public static final ST_PHOTO_CAPTURE_MODE_NORMAL:I = 0x0

.field public static final ST_PHOTO_CAPTURE_MODE_PARTIAL:I = 0x1

.field public static final SYNC_MAX_LATENCY_PER_FRAME_CONTROL:I = 0x0

.field public static final SYNC_MAX_LATENCY_UNKNOWN:I = -0x1

.field public static final TONEMAP_MODE_CONTRAST_CURVE:I = 0x0

.field public static final TONEMAP_MODE_FAST:I = 0x1

.field public static final TONEMAP_MODE_GAMMA_VALUE:I = 0x3

.field public static final TONEMAP_MODE_HIGH_QUALITY:I = 0x2

.field public static final TONEMAP_MODE_PRESET_CURVE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "com.sec.android.app.camera"

    const-string v1, "com.samsung.android.aremoji"

    const-string v2, "com.samsung.android.livestickers"

    const-string v3, "com.samsung.android.ardrawing"

    const-string v4, "com.samsung.android.arsceneplay"

    const-string v5, "com.samsung.android.app.galaxyraw"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->SAMSUNG_PACKAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDsExtraInfoNeedContDet(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDsExtraInfoNeedDualBokeh(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDsExtraInfoNeedFaceRestoration(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDsExtraInfoNeedFilterEffect(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDsExtraInfoNeedLTM(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDsExtraInfoNeedPreviewTarget(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getDsExtraInfoNeedSingleBokeh(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDsExtraInfoNeedSrDeblur(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getDsExtraInfoNeedStarEffect(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDsExtraInfoNeedUltraLensDistortion(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDsExtraInfoProcessingMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x0

    and-int/lit8 v1, p0, 0x2

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x4

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x20

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x40

    or-int/2addr p0, v0

    return p0
.end method

.method public static getDsExtraInfoShotMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    return p0
.end method

.method public static getDsExtraInfoSingleUdc(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsExtraInfo"
        }
    .end annotation

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDsMode(Ljava/lang/Integer;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsCondition"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getDsModeNeedRawPic(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isSuperNightDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isRawSrDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isUdcRawDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isGalaxyRawDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isAiHighresDsMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getDsModeNeedSeparatedCompPic(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isSrDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isSuperNightDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isDualBokehSrDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isSSHdrDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isRawSrDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isDualBokehNightDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isUdcRawDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isAiHighresDsMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getDsModeNeedSeparatedCompPicForGalaxyRaw(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dsMode",
            "dsPicCnt"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->isGalaxyRawDsMode(I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getDsModeSensorPixelMode(I)Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb5

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;->MODE_DEFAULT:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;->MODE_MAXIMUM_RESOLUTION:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    return-object p0
.end method

.method public static getDsPicMainCount(Ljava/lang/Integer;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsCondition"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getDsPicSubCount(Ljava/lang/Integer;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsCondition"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static getDsProcessingMode(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dsCondition",
            "dsExtraInfo"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result p0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsExtraInfoProcessingMode(I)I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method public static isAiHighresDsMode(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xb4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isDsProcessingMode(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dsCondition",
            "dsExtraInfo"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsProcessingMode(II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDualBokehNightDsMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDualBokehSrDsMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isGalaxyRawDsMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    const/16 v0, 0xaa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHifiDsMode(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isHighResolutionDsMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isLlHdrDsMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isMfHdrDsMode(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isRawSrDsMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSSHdrDsMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    const/16 v0, 0x96

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSrDsMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    const/16 v0, 0x46

    if-eq p0, v0, :cond_0

    const/16 v0, 0x47

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x82

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSuperNightDsMode(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isUdcRawDsMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dsMode"
        }
    .end annotation

    const/16 v0, 0x8c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8d

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
