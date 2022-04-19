.class Lcom/samsung/android/app/galaxyraw/executor/RulePathState;
.super Ljava/lang/Object;
.source "RulePathState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;,
        Lcom/samsung/android/app/galaxyraw/executor/RulePathState$ModeFeaturesMaker;
    }
.end annotation


# static fields
.field static final STATE_ID_ANGLE_MODE:I = 0x9

.field static final STATE_ID_ANGLE_TELE:I = 0xd9

.field static final STATE_ID_ANGLE_ULTRA_WIDE:I = 0xda

.field static final STATE_ID_ANGLE_WIDE:I = 0xd8

.field static final STATE_ID_CAMERA:I = 0xc8

.field static final STATE_ID_CAMERA_SETTING:I = 0x64

.field static final STATE_ID_COMMON_MODE:I = 0x0

.field static final STATE_ID_CREATE_MYFILTER:I = 0xdb

.field static final STATE_ID_FLASH_AUTO:I = 0xcd

.field static final STATE_ID_FLASH_MODE:I = 0x3

.field static final STATE_ID_FLASH_OFF:I = 0xcb

.field static final STATE_ID_FLASH_ON:I = 0xcc

.field static final STATE_ID_GET_LOCATION_TAG:I = 0xfa

.field static final STATE_ID_MOTION_PHOTO_MODE:I = 0x6

.field static final STATE_ID_MOTION_PHOTO_OFF:I = 0xd1

.field static final STATE_ID_MOTION_PHOTO_ON:I = 0xd2

.field static final STATE_ID_MULTI_RECORDING_MODE:I = 0xa

.field static final STATE_ID_MULTI_RECORDING_PIP:I = 0xde

.field static final STATE_ID_MULTI_RECORDING_SINGLE:I = 0xdd

.field static final STATE_ID_MULTI_RECORDING_SPLIT:I = 0xdf

.field static final STATE_ID_PICTURE_MODE:I = 0x1

.field static final STATE_ID_RECORDING:I = 0xc9

.field static final STATE_ID_RECORD_MODE:I = 0x2

.field static final STATE_ID_RESOLUTION:I = 0xd3

.field static final STATE_ID_RESOLUTION_MAX:I = 0xd4

.field static final STATE_ID_RESOLUTION_MODE:I = 0x7

.field static final STATE_ID_RETURN_TO_CAMERA:I = 0x190

.field static final STATE_ID_SELECT_MYFILTER:I = 0xdc

.field static final STATE_ID_SETTING:I = 0x65

.field static final STATE_ID_SET_LOCATION_TAG:I = 0xfb

.field static final STATE_ID_SHOOTING_SELECT:I = 0xce

.field static final STATE_ID_SINGLE_TAKE_CAPTURE_TIME:I = 0xe0

.field static final STATE_ID_SINGLE_TAKE_CAPTURE_TIME_MAX:I = 0xe1

.field static final STATE_ID_SINGLE_TAKE_CAPTURE_TIME_MIN:I = 0xe2

.field static final STATE_ID_SINGLE_TAKE_CAPTURE_TIME_MODE:I = 0xb

.field static final STATE_ID_SUPER_STEADY_MODE:I = 0x5

.field static final STATE_ID_SUPER_STEADY_OFF:I = 0xcf

.field static final STATE_ID_SUPER_STEADY_ON:I = 0xd0

.field static final STATE_ID_SWITCH_CAMERA:I = 0xca

.field static final STATE_ID_TIMER:I = 0x12c

.field static final STATE_ID_TIMER_MODE:I = 0x4

.field static final STATE_ID_TIMER_OFF:I = 0x12d

.field static final STATE_ID_UNKNOWN:I = -0x1

.field static final STATE_ID_ZOOM:I = 0xd5

.field static final STATE_ID_ZOOM_MAX:I = 0xd6

.field static final STATE_ID_ZOOM_MIN:I = 0xd7

.field static final STATE_ID_ZOOM_MODE:I = 0x8

.field static final STATE_TYPE_CAPTURE_MODE:I = 0x5

.field static final STATE_TYPE_CHANGE_ANGLE:I = 0xa

.field static final STATE_TYPE_CHANGE_MOTION_PHOTO:I = 0x9

.field static final STATE_TYPE_CHANGE_SETTING_VALUE:I = 0x3

.field static final STATE_TYPE_CHANGE_SHOOTING_MODE:I = 0x1

.field static final STATE_TYPE_CHANGE_SUPER_STEADY:I = 0x8

.field static final STATE_TYPE_CREATE_MYFILTER:I = 0xb

.field static final STATE_TYPE_LAUNCH_SETTING:I = 0x2

.field static final STATE_TYPE_RETURN_CAMERA:I = 0x6

.field static final STATE_TYPE_SELECT_MYFILTER:I = 0xc

.field static final STATE_TYPE_SHOW_MENU:I = 0x4

.field static final STATE_TYPE_SWITCH_CAMERA:I = 0x7

.field static final STATE_TYPE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RulePathState"

.field static final USE_LAST_LANDING_STATE:I = -0x1

.field private static final mModeFeatureSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/executor/RulePathState$ModeFeaturesMaker;",
            ">;"
        }
    .end annotation
.end field

.field private static mStateInfoDepot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final mStateTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mStateTypeMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mModeFeatureSetMap:Landroid/util/SparseArray;

    const/16 v0, 0xc8

    const-string v1, "Camera"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/4 v0, 0x1

    const-string v1, "PictureMode"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/4 v1, 0x2

    const-string v3, "RecordMode"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/4 v3, 0x3

    const-string v4, "FlashMode"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/4 v3, 0x4

    const-string v4, "TimerMode"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/4 v3, 0x5

    const-string v4, "SuperSteadyMode"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/4 v3, 0x6

    const-string v4, "MotionPhotoMode"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/4 v3, 0x7

    const-string v4, "ResolutionMode"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v3, 0x8

    const-string v4, "ZoomMode"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v3, 0x9

    const-string v4, "AngleMode"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v3, 0xa

    const-string v4, "MultiRecordingMode"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v3, 0xb

    const-string v4, "SingleTakeCaptureTimeMode"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v3, 0x65

    const-string v4, "Setting"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v3, 0xc9

    const-string v4, "Recording"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v3, 0xca

    const-string v4, "SwitchCamera"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    new-array v3, v1, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    aput-object v4, v3, v0

    const/16 v4, 0xcb

    const-string v6, "FlashOff"

    invoke-static {v4, v6, v3}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    new-array v3, v1, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    aput-object v4, v3, v5

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    aput-object v4, v3, v0

    const/16 v4, 0xcc

    const-string v6, "FlashOn"

    invoke-static {v4, v6, v3}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    new-array v1, v1, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    aput-object v3, v1, v5

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    aput-object v3, v1, v0

    const/16 v3, 0xcd

    const-string v4, "FlashAuto"

    invoke-static {v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v1, 0x12c

    const-string v3, "Timer"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v1, 0x12d

    const-string v3, "TimerOff"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    new-array v1, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    aput-object v3, v1, v5

    const/16 v3, 0xcf

    const-string v4, "SuperSteadyOff"

    invoke-static {v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    new-array v1, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    aput-object v3, v1, v5

    const/16 v3, 0xd0

    const-string v4, "SuperSteadyOn"

    invoke-static {v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    new-array v1, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    aput-object v3, v1, v5

    const/16 v3, 0xd1

    const-string v4, "MotionPhotoOff"

    invoke-static {v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    new-array v0, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    aput-object v1, v0, v5

    const/16 v1, 0xd2

    const-string v3, "MotionPhotoOn"

    invoke-static {v1, v3, v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xd3

    const-string v1, "Resolution"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xd4

    const-string v1, "ResolutionMax"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xd5

    const-string v1, "Zoom"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xd6

    const-string v1, "ZoomMax"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xd7

    const-string v1, "ZoomMin"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xd8

    const-string v1, "AngleWide"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xd9

    const-string v1, "AngleTele"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xda

    const-string v1, "AngleUltraWide"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xdb

    const-string v1, "CreateMyFilter"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xdc

    const-string v1, "SelectMyFilter"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xdd

    const-string v1, "MultiRecordingSingle"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xde

    const-string v1, "MultiRecordingPip"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xdf

    const-string v1, "MultiRecordingSplit"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xe0

    const-string v1, "SingleTakeCaptureTime"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xe1

    const-string v1, "SingleTakeCaptureTimeMax"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xe2

    const-string v1, "SingleTakeCaptureTimeMin"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xfa

    const-string v1, "GetLocationTag"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xfb

    const-string v1, "SetLocationTag"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0x64

    const-string v1, "CameraSetting"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0x190

    const-string v1, "ReturnToCamera"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const/16 v0, 0xce

    const-string v1, "ShootingSelect"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    const-string v0, "CommonMode"

    invoke-static {v5, v0, v2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getSingletakevideoSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getSingletakephotoSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNightSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getFoodSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getPanoramaSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getSelfiefocusSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getProSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getPhotoSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getLivefocusSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getHyperlapseSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getVideoSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getProvideoSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getMultirecordingSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getLivefocusvideoSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getSuperslowmotionSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/LinkedHashSet;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getSlowmotionSupportedFeatures()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method static add(ILjava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stateId",
            "state",
            "settingKeys"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;-><init>(Ljava/lang/String;[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private static getFoodSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x7
        0x8
        0x0
    .end array-data
.end method

.method private static getHyperlapseSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_SUPER_STEADY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_SEAMLESS_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x2
        0x3
        0x7
        0x0
    .end array-data
.end method

.method private static getLivefocusSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_TORCH_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x7
        0x9
        0x0
    .end array-data
.end method

.method private static getLivefocusvideoSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x0
    .end array-data
.end method

.method private static getMultirecordingSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0xa
        0x8
        0x0
    .end array-data
.end method

.method static getName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;->stateIdName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "UNKNOWN_STATE"

    :goto_0
    return-object p0
.end method

.method static varargs getNames([I)Ljava/util/LinkedHashSet;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getNightSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x7
        0x8
        0x9
        0x0
    .end array-data
.end method

.method private static getPanoramaSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x9
        0x0
    .end array-data
.end method

.method private static getPhotoSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x4
        0x7
        0x8
        0x9
        0x0
    .end array-data
.end method

.method private static getProSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x4
        0x7
        0x8
        0x9
        0x0
    .end array-data
.end method

.method private static getProvideoSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x7
        0x8
        0x0
    .end array-data
.end method

.method private static getSelfiefocusSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x4
        0x7
        0x9
        0x0
    .end array-data
.end method

.method static getSettingKeysOfStateID(I)[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;->settingKeys:[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getSingletakephotoSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0xb
        0x0
    .end array-data
.end method

.method private static getSingletakevideoSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0xb
        0x0
    .end array-data
.end method

.method private static getSlowmotionSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x0
    .end array-data
.end method

.method static getStateIDbyName(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mStateInfoDepot:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$StateInfo;->stateIdName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private static getSuperslowmotionSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x0
    .end array-data
.end method

.method static getSupportedModeSet(IZ)Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "isFront"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedModeSet : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RulePathState"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mModeFeatureSetMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$ModeFeaturesMaker;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState$ModeFeaturesMaker;->update()Ljava/util/LinkedHashSet;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getType(I)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->mStateTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static getVideoSupportedFeatures()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getNames([I)Ljava/util/LinkedHashSet;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x7
        0x8
        0x9
        0x0
    .end array-data
.end method
