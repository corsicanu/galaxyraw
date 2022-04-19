.class public Lcom/samsung/android/app/galaxyraw/util/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;
    }
.end annotation


# static fields
.field private static final FEATURE_INDEX_EFFECT:Ljava/lang/String; = "effect"

.field private static final FEATURE_INDEX_EXTERNAL_STORAGE_SUPPORT_RECORDING:Ljava/lang/String; = "external-storage-support"

.field private static final FEATURE_INDEX_HDR:Ljava/lang/String; = "hdr"

.field private static final FEATURE_INDEX_HDR10:Ljava/lang/String; = "hdr10"

.field private static final FEATURE_INDEX_MODE:Ljava/lang/String; = "supported-mode"

.field private static final FEATURE_INDEX_OBJECT_TRACKING:Ljava/lang/String; = "object-tracking"

.field private static final FEATURE_INDEX_PHYSICAL_ZOOM_RECORDING:Ljava/lang/String; = "physical-zoom-supported"

.field private static final FEATURE_INDEX_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final FEATURE_INDEX_SEAMLESS_ZOOM_RECORDING:Ljava/lang/String; = "seamless-zoom-support"

.field private static final FEATURE_INDEX_SNAPSHOT_SIZE:Ljava/lang/String; = "snapshot-size"

.field private static final FEATURE_INDEX_SNAPSHOT_SUPPORT:Ljava/lang/String; = "snapshot-support"

.field private static final FEATURE_INDEX_SUPER_VIDEO_STABILIZATION:Ljava/lang/String; = "super-vdis"

.field private static final FEATURE_INDEX_TOUCH_AF:Ljava/lang/String; = "touch-af"

.field private static final FEATURE_INDEX_VALUE:Ljava/lang/String; = "value"

.field private static final FEATURE_INDEX_VIDEO_STABILIZATION:Ljava/lang/String; = "vdis"

.field public static final MODE_NAME_PRO_VIDEO:Ljava/lang/String; = "pro_video"

.field public static final MODE_NAME_VIDEO:Ljava/lang/String; = "video"

.field private static mBackPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

.field private static final mBackPictureUpdateLock:Ljava/lang/Object;

.field private static mBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

.field private static final mBackProVideoUpdateLock:Ljava/lang/Object;

.field private static mBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

.field private static final mBackVideoUpdateLock:Ljava/lang/Object;

.field private static final mCamcorderFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
            "Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;",
            ">;"
        }
    .end annotation
.end field

.field private static mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefaultResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFrontPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

.field private static final mFrontPictureUpdateLock:Ljava/lang/Object;

.field private static mFrontSensorCropResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

.field private static final mFrontSensorCropUpdateLock:Ljava/lang/Object;

.field private static mFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

.field private static final mFrontVideoUpdateLock:Ljava/lang/Object;

.field private static final mResolutionSequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelectableBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

.field private static final mSelectableBackProVideoUpdateLock:Ljava/lang/Object;

.field private static mSelectableBackSuperSteadyVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

.field private static final mSelectableBackSuperSteadyVideoUpdateLock:Ljava/lang/Object;

.field private static mSelectableBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

.field private static final mSelectableBackVideoUpdateLock:Ljava/lang/Object;

.field private static mSelectableFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

.field private static final mSelectableFrontVideoUpdateLock:Ljava/lang/Object;

.field private static mSensorCropResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWideMaxResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWideResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackVideoUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontVideoUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackProVideoUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackPictureUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontPictureUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontSensorCropUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackVideoUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableFrontVideoUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackSuperSteadyVideoUpdateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackProVideoUpdateLock:Ljava/lang/Object;

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v8, 0xa

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0xb

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0xc

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0xd

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0xe

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0xf

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x10

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x11

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x12

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x13

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x14

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x15

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x16

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2320X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x17

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x18

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x19

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x1a

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1440X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x1b

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x1c

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_4000X1868:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/16 v13, 0x1d

    aput-object v1, v0, v13

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mResolutionSequence:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderFeatureMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontSensorCropResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackSuperSteadyVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19DOT3x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19DOT3x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_1_1_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19DOT3x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_1_1_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19DOT3x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_1_1_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_18DOT5x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19DOT3x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_21x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_21_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_20x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_19x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_16BY9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_4BY3:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_1BY1:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v13}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X824_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCamcorderResolutionCommandId(ILjava/util/ArrayList;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionId",
            "subCommandIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderResolutionSubCommandIdOrderMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findCamcorderResolutionId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "commandId",
            "resolutions",
            "subCommandIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "[",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)I"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v3

    invoke-static {v3, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->findCamcorderResolutionCommandId(ILjava/util/ArrayList;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    if-ne p0, v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderFeatureMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;->getBackResolutionMapTag()Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;->getBackResolutionMapTag()Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getDefaultAttachCamcorderFeature()Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getBackPictureResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackPictureUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-nez v1, :cond_0

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/16 v2, 0xa

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->makeResolutionIdList([Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v4, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v4, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    :goto_0
    if-ge v3, v2, :cond_0

    sget-object v4, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBackProVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackProVideoUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_8K:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "pro_video"

    invoke-static {v7, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v7, "pro_video"

    invoke-static {v7, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackVideoUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBackWideCameraMaxResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideMaxResolutionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWideMaxResolution : Argument is wrong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCamcorderEffectAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "effect"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderExternalStorageAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "external-storage-support"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static getCamcorderHDRAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "hdr"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderHdr10AvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "hdr10"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderObjectTrackingAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "object-tracking"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderPhysicalZoomRecordingAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "physical-zoom-supported"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderRatio(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionId"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getCamcorderSeamlessZoomRecordingAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "seamless-zoom-support"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static getCamcorderSnapshotAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "snapshot-support"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderSnapshotHeightFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    const-string v1, "snapshot-size"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderSnapshotWidthFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "snapshot-size"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    :goto_1
    return v0
.end method

.method public static getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "super-vdis"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getCamcorderTouchAfAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "touch-af"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static getCamcorderVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "vdis"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getDefaultResolution(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionKey",
            "aspectRatio"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mDefaultResolutionMap:Ljava/util/Map;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getExternalStorageRestrictedCamcorderResolution(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {p0, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getExternalStorageRestrictedCamcorderResolutionString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExternalStorageRestrictedCamcorderResolutionString : Argument is wrong = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p1, 0x7f1204bd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f12029b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f120457

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mCamcorderFeatureMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;->getFrontResolutionMapTag()Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$ResolutionMapTag;->getFrontResolutionMapTag()Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getDefaultAttachCamcorderFeature()Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getFrontPictureResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontPictureUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-nez v1, :cond_0

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/16 v2, 0xa

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->makeResolutionIdList([Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v4, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v4, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    :goto_0
    if-ge v3, v2, :cond_0

    sget-object v4, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontPictureResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFrontSensorCropResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontSensorCropUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontSensorCropResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->makeResolutionIdList([Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v4, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v4, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontSensorCropResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    :goto_0
    if-ge v3, v2, :cond_0

    sget-object v4, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontSensorCropResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontSensorCropResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFrontVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontVideoUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getNormalAngleResolutionBySensorCropAngle(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensorCropResolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNormalAngleResolutionBySensorCropAngle : Argument is wrong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNormalAngleResolutionByWideAngle(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wideAngleResolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNormalAngleResolutionByWideAngle : Argument is wrong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPictureRatio(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionId"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported picture ratio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRatioString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const p1, 0x7f12049b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f120495

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f12048e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f12049c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f12048f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f120490

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRepresentativeCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aspectRatio"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_4_3_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_3
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_1_1_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :goto_0
    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRepresentativePreviewSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aspectRatio"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_0

    :pswitch_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_CIF:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_4_3:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_16_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_20_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_19_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_19DOT3_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_18DOT5_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_1_1:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_21_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSelectableBackPictureResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackPictureResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectableBackProVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackProVideoUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackProVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_8K:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "pro_video"

    invoke-static {v7, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSelectableBackCamcorderResolution(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v7, "pro_video"

    invoke-static {v7, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSelectableBackCamcorderResolution(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->sortResolutionList(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackProVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSelectableBackProVideoResolutionList(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackProVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$0o7DsqYy9FsHgk-KjP9oXE3THyA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$0o7DsqYy9FsHgk-KjP9oXE3THyA;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$V-7OstYO3wZ4pgQNOqzZ5EDj7RA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$V-7OstYO3wZ4pgQNOqzZ5EDj7RA;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    return-object p0
.end method

.method public static getSelectableBackSuperSteadyVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackSuperSteadyVideoUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackSuperSteadyVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    const-string v7, "video"

    invoke-static {v7, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSelectableBackCamcorderResolution(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-static {v7, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->sortResolutionList(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackSuperSteadyVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackSuperSteadyVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackSuperSteadyVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSelectableBackSuperSteadyVideoResolutionList(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackSuperSteadyVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$x69UgPdL-B2BPQGMP5REzx_jvDg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$x69UgPdL-B2BPQGMP5REzx_jvDg;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$DDE32JbUt6bLl4gQWC1x7ra57W0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$DDE32JbUt6bLl4gQWC1x7ra57W0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    return-object p0
.end method

.method public static getSelectableBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackVideoUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    const-string v7, "video"

    invoke-static {v7, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSelectableBackCamcorderResolution(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->sortResolutionList(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableBackVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSelectableBackVideoResolutionList(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$RB9ltaQ0xL9xo2yHfxh2o12BMqc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$RB9ltaQ0xL9xo2yHfxh2o12BMqc;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$ZGGe9a3FBBeeqMd3zfVUd-8vNxc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$ZGGe9a3FBBeeqMd3zfVUd-8vNxc;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    return-object p0
.end method

.method public static getSelectableFrontPictureResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontPictureResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectableFrontSensorCropResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontSensorCropResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectableFrontVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableFrontVideoUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSelectableFrontCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->sortResolutionList(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    sput-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    aput-object v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSelectableFrontVideoResolutions:[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSelectableFrontVideoResolutionList(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableFrontVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$vsmUL2etM1eJXsclhX3iuHNyNqc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$vsmUL2etM1eJXsclhX3iuHNyNqc;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$yjTwIvK-zynhy88e6rLTxtXFIyY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$yjTwIvK-zynhy88e6rLTxtXFIyY;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    return-object p0
.end method

.method public static getSensorCropResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalAngleResolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mSensorCropResolutionMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSensorCropResolution : Argument is wrong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSuperSteadyResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result p0

    const/16 v1, 0x3c

    if-ne p0, v1, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0

    :pswitch_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_1_1_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getVideoFpsString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resolution"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMinFps()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result v1

    if-eq v0, v1, :cond_0

    const p1, 0x7f1204d0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f1204d1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVideoRatioCustomString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getRatioString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const p1, 0x7f1200a3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getVideoSizeCoverString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resolution"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getVideoSizeStandardString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getVideoSizeStandardString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getVideoRatioCustomString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoSizeFpsString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const p1, 0x7f120479

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f120478

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f120475

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f120476

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f120477

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f12047c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const p1, 0x7f12047b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p1, 0x7f12047d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const p1, 0x7f120474

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const p1, 0x7f120472

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    const p1, 0x7f120473

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoSizeShortString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resolution"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isLocaleRTL()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getVideoFpsString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getVideoSizeCoverString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getVideoSizeCoverString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getVideoFpsString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVideoSizeStandardString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p0, ""

    return-object p0

    :pswitch_0
    const p1, 0x7f1204d9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1204db

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f1204dd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f1204d8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f1204dc

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f1204d7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f1204da

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getWideAngleResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalAngleResolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mWideResolutionMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWideAngleResolution : Argument is wrong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static is120FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result p0

    const/16 v0, 0x78

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is60FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result p0

    const/16 v0, 0x3c

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBackCamcorderHDR10RecordingSupported()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderHdr10AvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs isBackCamcorderProResolutionRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratios"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackProVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackProVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    array-length v5, p0

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p0, v6

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v8

    if-ne v8, v7, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isBackCamcorderProResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackProVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackProVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs isBackCamcorderResolutionRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratios"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    array-length v5, p0

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p0, v6

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v8

    if-ne v8, v7, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isBackCamcorderResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isBackCamcorderSuperResolutionSupported()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isBackCameraFullRatioResolutionSupported()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isCinemaResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_21x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFhd120FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_120FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFrontCamcorderHDR10RecordingSupported()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v1, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderHdr10AvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs isFrontCamcorderRatioResolutionSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratios"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    array-length v5, p0

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p0, v6

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v8

    if-ne v8, v7, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isFrontCameraFullRatioResolutionSupported()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNormalResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSelectableBackCamcorderResolution(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modeName",
            "resolution"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSupportedBackCamcorderResolutionValue(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    return p0
.end method

.method private static isSelectableFrontCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSupportedFrontCamcorderResolutionValue(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    return p0
.end method

.method public static isSmartViewSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSquareResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSuperResolution(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionId"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    return p0
.end method

.method public static isSuperResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSuperSteadyMultiRatioSupported()Z
    .locals 8

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    const/4 v6, 0x1

    new-array v7, v6, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    aput-object v5, v7, v2

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperSteadyRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    if-le v4, v6, :cond_0

    return v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static varargs isSuperSteadyRatioSupported([Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratios"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackVideoResolutionList()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    array-length v5, p0

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p0, v6

    const-string v8, "pro_video"

    invoke-static {v8, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSelectableBackCamcorderResolution(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    invoke-static {v8, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v9

    if-ne v9, v7, :cond_0

    return v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isSuperWideResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportedBackCamcorderResolutionFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    const-string v0, "video"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    return p0
.end method

.method public static isSupportedBackCamcorderResolutionFeature(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modeName",
            "resolution"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "supported-mode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static isSupportedBackCamcorderResolutionValue(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modeName",
            "resolution"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "value"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    const-string v2, "supported-mode"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static isSupportedFrontCamcorderResolutionFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedFrontCamcorderResolutionValue(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getFrontCamcorderFeature(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "value"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTorchHighTemperatureWarningResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isUhd60FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X1644_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isWideResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getSelectableBackProVideoResolutionList$0(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getSelectableBackProVideoResolutionList$1(I)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 0

    new-array p0, p0, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    return-object p0
.end method

.method static synthetic lambda$getSelectableBackSuperSteadyVideoResolutionList$2(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getSelectableBackSuperSteadyVideoResolutionList$3(I)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 0

    new-array p0, p0, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    return-object p0
.end method

.method static synthetic lambda$getSelectableBackVideoResolutionList$4(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getSelectableBackVideoResolutionList$5(I)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 0

    new-array p0, p0, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    return-object p0
.end method

.method static synthetic lambda$getSelectableFrontVideoResolutionList$6(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getSelectableFrontVideoResolutionList$7(I)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;
    .locals 0

    new-array p0, p0, [Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    return-object p0
.end method

.method static synthetic lambda$sortResolutionList$8(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->mResolutionSequence:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs makeResolutionIdList([Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/app/galaxyraw/feature/StringTag;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static sortResolutionList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$-Z1zNexJAvtpko3A8VaFaZ5QNso;->INSTANCE:Lcom/samsung/android/app/galaxyraw/util/-$$Lambda$CameraResolution$-Z1zNexJAvtpko3A8VaFaZ5QNso;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method
