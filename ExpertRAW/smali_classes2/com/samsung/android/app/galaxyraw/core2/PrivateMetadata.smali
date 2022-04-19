.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/PrivateMetadata;
.super Ljava/lang/Object;
.source "PrivateMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/PrivateMetadata$CompositionGuideCommand;,
        Lcom/samsung/android/app/galaxyraw/core2/PrivateMetadata$CompositionGuideMode;,
        Lcom/samsung/android/app/galaxyraw/core2/PrivateMetadata$LabsCaptureMode;
    }
.end annotation


# static fields
.field public static final COMPOSITION_GUIDE_COMMAND_CHECK_STABLE_TO_RESET:I = 0x2

.field public static final COMPOSITION_GUIDE_COMMAND_RESET:I = 0x1

.field public static final COMPOSITION_GUIDE_MODE_LITE:I = 0x0

.field public static final COMPOSITION_GUIDE_MODE_NONE:I = -0x1

.field public static final COMPOSITION_GUIDE_MODE_NORMAL:I = 0x1

.field public static final CONTROL_BOKEH_STATE_CAPTURE_PROCESSING_FAIL:I = 0x65

.field public static final CONTROL_BOKEH_STATE_CAPTURE_PROCESSING_SUCCESS:I = 0x64

.field public static final CONTROL_BOKEH_STATE_ERROR_DISTANCE_TOO_CLOSE:I = 0xc

.field public static final CONTROL_BOKEH_STATE_ERROR_DISTANCE_TOO_FAR:I = 0xb

.field public static final CONTROL_BOKEH_STATE_ERROR_INVALID_DEPTH:I = 0x1

.field public static final CONTROL_BOKEH_STATE_ERROR_LENS_PARTIALLY_COVERED:I = 0x15

.field public static final CONTROL_BOKEH_STATE_ERROR_LOW_LIGHT_CONDITION:I = 0x1f

.field public static final CONTROL_BOKEH_STATE_ERROR_NO_FACE_DETECTED:I = 0x29

.field public static final CONTROL_BOKEH_STATE_SUCCESS:I = 0x0

.field public static final FACE_ALIGNMENT_TYPE_2D:I = 0x0

.field public static final FACE_ALIGNMENT_TYPE_3D:I = 0x1

.field public static final FACE_LANDMARK_MODE_BEAUTY_CAPT:I = 0x3

.field public static final FACE_LANDMARK_MODE_BEAUTY_PREV:I = 0x2

.field public static final FACE_LANDMARK_MODE_BESTPHOTO:I = 0x6

.field public static final FACE_LANDMARK_MODE_BESTPHOTO_TRACKING:I = 0x8

.field public static final FACE_LANDMARK_MODE_DOODLE:I = 0x1

.field public static final FACE_LANDMARK_MODE_EMOJI:I = 0x0

.field public static final FACE_LANDMARK_MODE_FACE_CLUSTER:I = 0x4

.field public static final FACE_LANDMARK_MODE_FACE_CLUSTER_122PT:I = 0x7

.field public static final FACE_LANDMARK_MODE_FACE_CLUSTER_122PT_TRACKING:I = 0x9

.field public static final FACE_LANDMARK_MODE_STICKER:I = 0x5

.field public static final FACE_LANDMARK_TYPE_2D:I = 0x0

.field public static final FACE_LANDMARK_TYPE_3D:I = 0x1

.field public static final FACIAL_ATTRIBUTE_ERROR_ENGINE_FAIL:I = -0x1

.field public static final FACIAL_ATTRIBUTE_ERROR_INCOMPATIBLE_IMAGE_BUFFER:I = -0x3

.field public static final FACIAL_ATTRIBUTE_ERROR_UNRECOGNIZED_MODE:I = -0x2

.field public static final FILTER_MODE_BASIC:I = 0x64

.field public static final FILTER_MODE_NONE:I = 0x0

.field public static final FILTER_MODE_USER_GENERATED:I = 0x66

.field public static final HUMAN_TRACKING_MODE_BODY:I = 0x2

.field public static final HUMAN_TRACKING_MODE_FACE:I = 0x1

.field public static final HUMAN_TRACKING_MODE_FACE2D:I = 0x80

.field public static final HUMAN_TRACKING_MODE_GESTURE:I = 0x10

.field public static final HUMAN_TRACKING_MODE_HAND:I = 0x4

.field public static final HUMAN_TRACKING_MODE_MOUTH:I = 0x40

.field public static final HUMAN_TRACKING_MODE_SEGMENT:I = 0x8

.field public static final HUMAN_TRACKING_MODE_TRS:I = 0x20

.field public static final INTELLIGENT_GUIDE_BACK_LIGHT:I = 0x5

.field public static final INTELLIGENT_GUIDE_BLURRED_FACE:I = 0x4

.field public static final INTELLIGENT_GUIDE_CLOSED_EYES:I = 0x3

.field public static final INTELLIGENT_GUIDE_DEVICE_SHAKEN:I = 0x1

.field public static final INTELLIGENT_GUIDE_DIRTY_LENS:I = 0x2

.field public static final INTELLIGENT_GUIDE_NONE:I = 0x0

.field public static final LABS_CAPTURE_MODE_NONE:I = 0x0

.field public static final LABS_CAPTURE_MODE_SMART_SCAN:I = 0x2

.field public static final LABS_CAPTURE_MODE_STAR_EFFECT:I = 0x1

.field public static final OUTFOCUS_ERR_AF:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OUTFOCUS_ERR_INF:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OUTFOCUS_ERR_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OUTFOCUS_ERR_SAVE_DATA:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OUTFOCUS_ERR_SEGMENTATION:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PALM_DETECTION_MODE_ACTIVE:I = 0x2

.field public static final PALM_DETECTION_MODE_IDLE:I = 0x1

.field public static final PALM_DETECTION_MODE_OFF:I = 0x0

.field public static final PANORAMA_DIRECTION_DOWN:I = 0x8

.field public static final PANORAMA_DIRECTION_LEFT:I = 0x2

.field public static final PANORAMA_DIRECTION_RIGHT:I = 0x1

.field public static final PANORAMA_DIRECTION_UNKNOWN:I = 0x0

.field public static final PANORAMA_DIRECTION_UP:I = 0x4

.field public static final PANORAMA_ERROR_NOT_ENOUGH_STORAGE:I = 0x4

.field public static final PANORAMA_ERROR_NO_DIRECTION:I = 0x1

.field public static final PANORAMA_ERROR_REACHED_MAX_FRAME_COUNT:I = 0x3

.field public static final PANORAMA_ERROR_STITCHING:I = 0x0

.field public static final PANORAMA_ERROR_TRACING:I = 0x2

.field public static final PANORAMA_ERROR_UNKNOWN:I = -0x1

.field public static final QR_CODE_DETECTION_ERROR_CORRECTION_FAILED:I = -0x2

.field public static final QR_CODE_DETECTION_ERROR_ENGINE_FAIL:I = -0x1

.field public static final QR_CODE_DETECTION_ERROR_INCOMPATIBLE_CANT_DECODE:I = -0x7

.field public static final QR_CODE_DETECTION_ERROR_INCOMPATIBLE_IMAGE_BUFFER:I = -0x6

.field public static final QR_CODE_DETECTION_ERROR_UNRECOGNIZED_FORMAT:I = -0x4

.field public static final QR_CODE_DETECTION_ERROR_UNRECOGNIZED_MODE:I = -0x3

.field public static final QR_CODE_DETECTION_ERROR_UNRECOGNIZED_VERSION:I = -0x5

.field public static final QR_CODE_DETECTION_MODE_BARCODE:I = 0x1

.field public static final QR_CODE_DETECTION_MODE_BARCODE_AND_QR:I = 0x0

.field public static final QR_CODE_DETECTION_MODE_QR:I = 0x2

.field public static final QR_CODE_DETECTION_MODE_QR_AND_DMC:I = 0x3

.field public static final SCENE_DETECTION_MODE_FUSION:I = 0x3

.field public static final SCENE_DETECTION_MODE_LITE:I = 0x2

.field public static final SCENE_DETECTION_MODE_NORMAL:I = 0x1

.field public static final SCENE_DETECTION_MODE_OFF:I = 0x0

.field public static final SINGLE_BOKEH_ERROR_NO_FACE:I = 0x2

.field public static final SINGLE_BOKEH_ERROR_UNKNOWN:I = 0x1

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_ARTIFY_PICASSO:I = 0x9

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_BIG_BOKEH:I = 0xa

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_BOKEH_LENS:I = 0x0

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_BOKEH_SPIN:I = 0x1

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_BOKEH_ZOOM:I = 0x2

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_COLOR_PICKER:I = 0x14

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_COLOR_POP:I = 0x6

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_GLITCH:I = 0x8

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_HIGHLOW_KEY:I = 0x15

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_HIGH_KEY:I = 0x16

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_LOW_KEY:I = 0x17

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_MONO_TONE:I = 0x5

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_STAGE_LIGHT:I = 0x4

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_STUDIO_LIGHT:I = 0xb

.field public static final SINGLE_BOKEH_SPECIAL_EFFECT_VINTAGE_LIGHT:I = 0x3
