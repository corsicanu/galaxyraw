.class public Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;
.super Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;
.source "MpiMfrpNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;,
        Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_CCM_LENGTH:I = 0x9

.field private static final DEFAULT_SENSOR_WDR_EXPOSURE_TIME:J = 0x98967fL

.field private static final DEFAULT_SENSOR_WDR_SENSITIVITY:I = 0x63

.field private static final ERROR_LOADING_MODEL:Z = false

.field private static final ISP_3D_MODEL_FILENAME:Ljava/lang/String; = "GRAW_3DISP_AI_NR_V5_3_9_832X1072X3_e1345.pb"

.field private static final MFP3_MAX_LENS_GAIN_COUNT:I = 0x374

.field private static final MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private static final NATIVE_COMMAND_GET_EV_LIST:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_INIT:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_PROCESS_MFRP:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_ACTIVE_ARRAY:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_AE_INFO:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_AI_MODEL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_BAYER_TYPE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_DEVICE_STATE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_EV_COMP:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_FACE_INFO:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_FLIP_MODE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_HDR_STATE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_INPUT_DATA:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_MEMORY_INFO:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_OVER_HEAT_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_SHOOTING_MODE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_COMMAND_SET_SHOT_MODE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUCCESS_LOADING_MODEL:Z = true


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private volatile mAiModelFileBuffer:[B

.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private mAvailableFlipMode:Z

.field private mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private mDebugInfo:[B

.field private mDngExtraMetadata:[B

.field private mIsFirstInputFrame:Z

.field private mLastBundle:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

.field private mLastPictureImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

.field private mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mLensFacing:I

.field private mMergedRawFrame:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

.field private final mMpiMfrpDebugInfoNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

.field private final mMpiMfrpDngExtraMetadataNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

.field private final mMpiMfrpMergedRawFrameNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

.field private final mMpiMfrpProgressNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

.field private final mMpiMfrpResultInfoNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

.field private final mMpiMfrpSemanticMapNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

.field private final mMpiMfrpToneMapNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

.field private final mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

.field private mResultCaptureSize:Landroid/util/Size;

.field private mResultInfo:[B

.field private mSemanticMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

.field private mToneMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$1;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x64

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$1;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$2;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v3, v4

    const-class v5, [Landroid/util/Size;

    aput-object v5, v3, v1

    const-class v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;

    const/4 v6, 0x2

    aput-object v5, v3, v6

    const/16 v5, 0x65

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$2;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$3;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    aput-object v5, v3, v4

    const-class v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;

    aput-object v5, v3, v1

    const-class v5, Ljava/lang/Long;

    aput-object v5, v3, v6

    const/16 v5, 0x66

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$3;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_INPUT_DATA:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$4;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, [Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/16 v5, 0x67

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$4;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_FACE_INFO:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$5;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v3, v4

    const/16 v5, 0x68

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$5;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_FLIP_MODE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$6;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/16 v5, 0x69

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$6;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_ACTIVE_ARRAY:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$7;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v3, v4

    const/16 v5, 0x6a

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$7;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_BAYER_TYPE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$8;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v3, v4

    const/16 v5, 0x6b

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$8;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_SHOT_MODE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$9;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v3, v4

    const/16 v5, 0x6c

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$9;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_SHOOTING_MODE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$10;

    new-array v3, v4, [Ljava/lang/Class;

    const/16 v5, 0x6d

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$10;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_PROCESS_MFRP:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$11;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Long;

    aput-object v5, v3, v4

    const/16 v5, 0x6e

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$11;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_DEVICE_STATE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$12;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v3, v4

    const/16 v5, 0x6f

    invoke-direct {v0, v5, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$12;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_OVER_HEAT_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$13;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v1

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v6

    const/16 v3, 0x70

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$13;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_GET_EV_LIST:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$14;

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v1

    const/16 v3, 0x71

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$14;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_MEMORY_INFO:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$15;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v2, v4

    const/16 v3, 0x72

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$15;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_AI_MODEL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$16;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    const/16 v3, 0x73

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$16;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$17;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v4

    const/16 v3, 0x74

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$17;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_AE_INFO:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$18;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v4

    const/16 v3, 0x75

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$18;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_HDR_STATE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$19;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    aput-object v2, v1, v4

    const/16 v2, 0x76

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$19;-><init>(I[Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_EV_COMP:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mfrpInitParam",
            "callback"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/16 v1, 0x154

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;-><init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mDebugInfo:[B

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mResultInfo:[B

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLastPictureImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mIsFirstInputFrame:Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMergedRawFrame:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mToneMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mSemanticMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mDngExtraMetadata:[B

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAiModelFileBuffer:[B

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$20;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$20;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpDebugInfoNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$21;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$21;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpProgressNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$22;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$22;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpResultInfoNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$23;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$23;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpMergedRawFrameNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$24;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$24;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpToneMapNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$25;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$25;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpSemanticMapNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$26;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$26;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpDngExtraMetadataNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    const-string v0, "callback"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerFlipAvailableModes()[I

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAvailableFlipMode:Z

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensFacing()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLensFacing:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

    iget-object p2, p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->context:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mActivityManager:Landroid/app/ActivityManager;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAssetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mDebugInfo:[B

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mDebugInfo:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLastBundle:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;)Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mResultInfo:[B

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mResultInfo:[B

    return-object p1
.end method

.method static synthetic access$502(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMergedRawFrame:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    return-object p1
.end method

.method static synthetic access$602(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mToneMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    return-object p1
.end method

.method static synthetic access$702(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mSemanticMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    return-object p1
.end method

.method static synthetic access$802(Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mDngExtraMetadata:[B

    return-object p1
.end method

.method private getModelFilename()Ljava/lang/String;
    .locals 0

    const-string p0, "GRAW_3DISP_AI_NR_V5_3_9_832X1072X3_e1345.pb"

    return-object p0
.end method

.method static synthetic lambda$processPicture$3(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_MERGED_RAW_FRAME:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->put(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    return-void
.end method

.method static synthetic lambda$processPicture$4(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_TONE_MAP:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->put(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    return-void
.end method

.method static synthetic lambda$processPicture$5(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_SEMANTIC_MAP:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->put(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    return-void
.end method

.method static synthetic lambda$processPicture$6(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;[B)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_DATA_DNG_EXTRA_METADATA:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->put(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    return-void
.end method

.method static synthetic lambda$processPictureInternal$0([FLandroid/hardware/camera2/params/RggbChannelVector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/params/RggbChannelVector;->copyTo([FI)V

    return-void
.end method

.method static synthetic lambda$processPictureInternal$1([DLandroid/hardware/camera2/params/ColorSpaceTransform;)V
    .locals 5

    const/16 v0, 0x9

    new-array v1, v0, [Landroid/util/Rational;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([Landroid/util/Rational;I)V

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object p1, v1, v2

    invoke-virtual {p1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v3

    aput-wide v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$processPictureInternal$2(Landroid/util/Rational;Ljava/lang/Integer;)Ljava/lang/Float;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private loadModel()Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getModelFilename()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "loadModel : filename %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v7

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    const-wide/16 v10, -0x1

    cmp-long v10, v7, v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    sub-long/2addr v7, v5

    :cond_0
    long-to-int v5, v7

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAiModelFileBuffer:[B

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAiModelFileBuffer:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    const-string v5, "loadModel : buffer size = %d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v0

    invoke-static {v2, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private processPictureInternal(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Z
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "picture",
            "bundle"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLastPictureImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_VALID_IMAGE_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v7, "processPicture: Current Count=%d/%d, ImageInfo=%s, validImgRegion=%s"

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getCurrentCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getMaxInputCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLastPictureImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v9, v12

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-static {v6, v7, v9}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;

    invoke-direct {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;-><init>()V

    const/4 v7, 0x0

    iget-object v9, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    :cond_0
    iget-object v9, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v9, v7}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorInfoActiveArraySize(Ljava/lang/Integer;)Landroid/graphics/Rect;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v9}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    sget-object v13, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v13}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    invoke-virtual {v9, v13}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    sget-object v13, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v13}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_1

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iput v13, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->zoomRatio:F

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    iput v13, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->zoomRatio:F

    :cond_2
    :goto_0
    sget-object v13, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_CAPTURE_EV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v13}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-static {v13}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->ev:I

    sget-object v13, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_IS_MULTIFRAME_CAPTURE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v2, v13}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-static {v13}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processPicture: isMultiFrame = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-boolean v14, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mIsFirstInputFrame:Z

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    if-eqz v14, :cond_9

    iput-boolean v4, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mIsFirstInputFrame:Z

    const-string v14, "processPicture: 1st capture"

    invoke-static {v6, v14}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v14, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_RESULT_CAPTURE_SIZE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v2, v14}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Size;

    invoke-static {v14}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLastPictureImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    iput-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mResultCaptureSize:Landroid/util/Size;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processPicture: ResultCaptureSize = "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v14, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mResultCaptureSize:Landroid/util/Size;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v8}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    iget-object v14, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v14}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getCameraId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->cameraId:Ljava/lang/String;

    iget-object v14, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v14, v8}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    const-string v10, "UNKNOWN"

    invoke-virtual {v14, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->sensorName:Ljava/lang/String;

    const-string v10, "processPicture: physicalId=%s, sensorName=%s"

    new-array v14, v12, [Ljava/lang/Object;

    iget-object v12, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->cameraId:Ljava/lang/String;

    aput-object v12, v14, v4

    iget-object v12, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->sensorName:Ljava/lang/String;

    aput-object v12, v14, v11

    invoke-static {v6, v10, v14}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v10}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsMode(Ljava/lang/Integer;)I

    move-result v10

    const-string v12, "processPicture: dsMode = 0x%X"

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v4

    invoke-static {v6, v12, v14}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->d(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v12, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_SHOT_MODE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v4

    invoke-virtual {v1, v12, v14}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureFoldable()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DEVICE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v10}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-string v10, "processPicture: deviceState = 0x%X"

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v4

    invoke-static {v6, v10, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->d(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_DEVICE_STATE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v4

    invoke-virtual {v1, v10, v12}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v2, v10}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processPicture: nonLinearCompression = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_NON_LINEAR_COMPRESSION:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v14, v4

    invoke-virtual {v1, v12, v14}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_HDR_STATE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v2, v10}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v12, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_HDR_STATE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v4

    invoke-virtual {v1, v12, v14}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->MFRP_INFO_EV_COMP:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {v2, v10}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sget-object v12, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_EV_COMP:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v14, v4

    invoke-virtual {v1, v12, v14}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v10}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v12, "processPicture: shootingMode = %d"

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v4

    invoke-static {v6, v12, v14}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->d(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v12, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_SHOOTING_MODE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v4

    invoke-virtual {v1, v12, v14}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getRawSensorInfo()[I

    move-result-object v10

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    const/4 v12, 0x2

    new-array v14, v12, [I

    aput v4, v14, v4

    aput v4, v14, v11

    invoke-virtual {v10, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    iput-object v10, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->rawSensorInfo:[I

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLastPictureImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getStrideInfo()Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getRowStride()I

    move-result v12

    iput v12, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->rowStride:I

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;->getHeightSlice()I

    move-result v10

    iput v10, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->heightSlice:I

    const-string v10, "processPicture: rowStride=%d, heightSlice=%d"

    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Object;

    iget v12, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->rowStride:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v4

    iget v12, v5, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->heightSlice:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v11

    invoke-static {v6, v10, v14}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v10}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_4

    sget-object v12, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_FLIP_MODE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v10, v14, v4

    invoke-virtual {v1, v12, v14}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_ACTIVE_ARRAY:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v7, v12, v4

    invoke-virtual {v1, v10, v12}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v10, v8}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorInfoColorFilterArrangement(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processPicture: bayerType = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    if-eqz v8, :cond_5

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_BAYER_TYPE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v8, v12, v4

    invoke-virtual {v1, v10, v12}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v8, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_OVER_HEAT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v8}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v10, "processPicture: overHeatLevel = 0x%X"

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v4

    invoke-static {v6, v10, v12}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_OVER_HEAT_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v4

    invoke-virtual {v1, v10, v12}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v8

    const-string v10, "processPicture: memoryInfo = {available %d, total %d}"

    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Object;

    iget-wide v11, v8, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v14, v4

    iget-wide v11, v8, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v14, v12

    invoke-static {v6, v10, v14}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_MEMORY_INFO:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    move-object v14, v5

    iget-wide v4, v8, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v12, v5

    iget-wide v4, v8, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v12, v5

    invoke-virtual {v1, v10, v12}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_AE_EXTRA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v4, :cond_6

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    if-ne v5, v4, :cond_7

    const/4 v4, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    if-ne v5, v4, :cond_8

    const/4 v5, 0x3

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_1
    sget-object v8, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_AE_INFO:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v10, v5

    invoke-virtual {v1, v8, v10}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->setAiModel()V

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/util/Size;

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLastPictureImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v5, v8

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mResultCaptureSize:Landroid/util/Size;

    const/4 v8, 0x1

    aput-object v4, v5, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getMaxInputCount()I

    move-result v4

    sget-object v8, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_PREPARE_CAPTURE:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v12, v10

    const/4 v4, 0x1

    aput-object v5, v12, v4

    const/4 v4, 0x2

    aput-object v14, v12, v4

    invoke-virtual {v1, v8, v12}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    move-object v14, v5

    :goto_2
    invoke-virtual {v1, v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->setFaceInfo(Landroid/hardware/camera2/TotalCaptureResult;Landroid/graphics/Rect;)V

    const/4 v4, 0x4

    new-array v5, v4, [F

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$hLKRzsCUzynd7xIiXYYvZDJtcA4;

    invoke-direct {v7, v5}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$hLKRzsCUzynd7xIiXYYvZDJtcA4;-><init>([F)V

    invoke-virtual {v4, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    move-object v4, v14

    iput-object v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->awbGain:[F

    const/16 v5, 0x9

    new-array v5, v5, [D

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/ColorSpaceTransform;

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$u6v6BLDhkDoKDhIcfHONIrr2YTk;

    invoke-direct {v8, v5}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$u6v6BLDhkDoKDhIcfHONIrr2YTk;-><init>([D)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ccm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iput-object v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->ccm:[D

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_DRC_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->drcGain:I

    if-eqz v13, :cond_a

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_WDR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/16 v7, 0x63

    const/4 v10, 0x0

    aput v7, v8, v10

    const/4 v10, 0x1

    aput v7, v8, v10

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    iput-object v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->iso:[I

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_WDR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [J

    const-wide/32 v12, 0x98967f

    const/4 v7, 0x0

    aput-wide v12, v8, v7

    const/4 v7, 0x1

    aput-wide v12, v8, v7

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    iput-object v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->shutterSpeed:[J

    goto :goto_3

    :cond_a
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x2

    new-array v10, v8, [I

    aput v5, v10, v7

    const/4 v7, 0x1

    aput v5, v10, v7

    iput-object v10, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->iso:[I

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v5, 0x2

    new-array v10, v5, [J

    const/4 v5, 0x0

    aput-wide v7, v10, v5

    const/4 v5, 0x1

    aput-wide v7, v10, v5

    iput-object v10, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->shutterSpeed:[J

    :goto_3
    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BRIGHTNESS_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->brightnessValue:I

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->exposureTime:J

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_MULTI_FRAME_EV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->exposureCompensation:F

    goto :goto_4

    :cond_b
    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getControlAeCompensationStep()Landroid/util/Rational;

    move-result-object v5

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$Mq0uMRbc78-gi-cQqs40XQHdVFI;

    invoke-direct {v8, v5}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$Mq0uMRbc78-gi-cQqs40XQHdVFI;-><init>(Landroid/util/Rational;)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->exposureCompensation:F

    :goto_4
    iput-object v9, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->cropRegion:Landroid/graphics/Rect;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->jpegOrientation:I

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_GYRO_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->sensorGyroState:I

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_NOISE_INDEX:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->noiseIndex:F

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_CAPTURE_TOTAL_GAIN:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->sensorGain:I

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_BLACK_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const/4 v7, 0x4

    new-array v8, v7, [F

    const/4 v7, 0x0

    aput v17, v8, v7

    const/4 v7, 0x1

    aput v17, v8, v7

    const/4 v7, 0x2

    aput v17, v8, v7

    const/4 v7, 0x3

    aput v17, v8, v7

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    iput-object v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->blackLevel:[F

    const/4 v5, 0x4

    new-array v7, v5, [I

    const/4 v5, 0x0

    aput v5, v7, v5

    const/4 v8, 0x1

    aput v5, v7, v8

    const/4 v8, 0x2

    aput v5, v7, v8

    const/4 v8, 0x3

    aput v5, v7, v8

    iput-object v7, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    iget-object v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v8

    const/16 v5, 0x374

    new-array v7, v5, [F

    iput-object v7, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMap:[F

    iget-object v9, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    aget v9, v9, v8

    if-lez v9, :cond_d

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v8}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/LensShadingMap;

    if-eqz v3, :cond_c

    iget-object v8, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    invoke-virtual {v3}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v9

    const/4 v10, 0x1

    aput v9, v8, v10

    iget-object v8, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    invoke-virtual {v3}, Landroid/hardware/camera2/params/LensShadingMap;->getColumnCount()I

    move-result v9

    const/4 v10, 0x2

    aput v9, v8, v10

    iget-object v8, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    invoke-virtual {v3}, Landroid/hardware/camera2/params/LensShadingMap;->getRowCount()I

    move-result v9

    const/4 v10, 0x3

    aput v9, v8, v10

    const-string v8, "lensShadingMapInfo= %d %d %d %d"

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v9, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    const/4 v11, 0x0

    aget v9, v9, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v11

    iget-object v9, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    const/4 v12, 0x1

    aget v9, v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v12

    iget-object v9, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    const/4 v12, 0x2

    aget v9, v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v12

    iget-object v9, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    const/4 v12, 0x3

    aget v9, v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v12

    invoke-static {v6, v8, v10}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    if-lez v8, :cond_e

    iget-object v8, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    aget v8, v8, v9

    if-gt v8, v5, :cond_e

    const/4 v5, 0x0

    invoke-virtual {v3, v7, v5}, Landroid/hardware/camera2/params/LensShadingMap;->copyGainFactors([FI)V

    const-string v3, "lensShadingMap= %f %f %f %f"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aget v9, v7, v5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x1

    aget v9, v7, v5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x2

    aget v9, v7, v5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x3

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v8, v5

    invoke-static {v6, v3, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    const-string v3, "lensShadingMap is null %d/%d"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getCurrentCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getMaxInputCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v6, v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    const/4 v5, 0x0

    aput v5, v3, v8

    goto :goto_5

    :cond_d
    const-string v3, "lensShadingMapMode= %d"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v5, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    const/4 v8, 0x0

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v3, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v4, Lcom/samsung/android/app/galaxyraw/core2/container/ExtraCaptureInfo;->lensShadingMapInfo:[I

    const/4 v5, 0x1

    aput v8, v3, v5

    :cond_e
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPicture: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_INPUT_DATA:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v7, 0x1

    aput-object v4, v5, v7

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLastPictureImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v5, v7

    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "processPicture X: failed to set input data"

    invoke-static {v6, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

    invoke-interface {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;->onError(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :cond_f
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    move-object v3, v0

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPicture X: fail - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;->onError(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    const/4 v1, 0x0

    return v1
.end method

.method private setAiModel()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAiModelFileBuffer:[B

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->loadModel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load the MFRP model file"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_AI_MODEL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAiModelFileBuffer:[B

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abortProcessPicture()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string v0, "abortProcessPicture - ignored"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public deinitialize()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAiModelFileBuffer:[B

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->deinitialize()V

    return-void
.end method

.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.app.galaxyraw.core2.node.MpiMfrpNode"

    return-object p0
.end method

.method public getEVList()[B
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_OVER_HEAT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "getEVList: overHeatLevel = 0x%X"

    invoke-static {v4, v7, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_OVER_HEAT_LEVEL:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "getEVList: memoryInfo = {available %d, total %d}"

    invoke-static {v4, v8, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_MEMORY_INFO:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v7, v6, [Ljava/lang/Object;

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_BRIGHTNESS_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_WDR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_GET_EV_LIST:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v1, v7, v5

    aget v0, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :array_0
    .array-data 4
        0x63
        0x63
    .end array-data
.end method

.method protected onInitialized(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "*>;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpProgressNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpDebugInfoNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpResultInfoNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpMergedRawFrameNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpToneMapNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpSemanticMapNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMpiMfrpDngExtraMetadataNativeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mIsFirstInputFrame:Z

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLensFacing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->onInitialized(Ljava/util/Map;)V

    return-void
.end method

.method public processPicture(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "picture",
            "bundle"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processPicture skip - not RAW format : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "processPicture X"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPicture E: currentCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getCurrentCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->PROCESS_FAIL_INFO:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p2, v5}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p1, "processPicture: processPictureInternal skip"

    invoke-static {v4, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->isMaxInputCount()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v4, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->processPictureInternal(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v3

    :cond_2
    move p1, v2

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->getCurrentCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "processPicture E: currentCount = %d and now Stop capture"

    invoke-static {p1, v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->isMaxInputCount()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v3

    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mIsFirstInputFrame:Z

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_PROCESS_MFRP:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    if-nez p1, :cond_6

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "processPicture X: failed to make mfrp output"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;->onError(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    return-object v3

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLastPictureImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    if-nez v1, :cond_7

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "processPicture X: failed because picture image info is null."

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mNodeCallback:Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;->onError(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    return-object v3

    :cond_7
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLastPictureImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mResultCaptureSize:Landroid/util/Size;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setStrideInfo(Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mResultCaptureSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setSize(Landroid/util/Size;)V

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setFormat(I)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mDebugInfo:[B

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->setExtraDebugInfoApp4([B)V

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_CAPTURE_TYPE:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->put(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mMergedRawFrame:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$WxIiJ-qB8eE-kfNhgbpziN7j-Fs;

    invoke-direct {v2, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$WxIiJ-qB8eE-kfNhgbpziN7j-Fs;-><init>(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mToneMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$vTIY7xoSJioN89jzLeQrGkKqrjk;

    invoke-direct {v2, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$vTIY7xoSJioN89jzLeQrGkKqrjk;-><init>(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mSemanticMap:Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$vXA6E5U78EDkSV3rCYAeeikWmAs;

    invoke-direct {v2, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$vXA6E5U78EDkSV3rCYAeeikWmAs;-><init>(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mDngExtraMetadata:[B

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$H9ZE95GLu1MAFSn3NAcCtOqqN6Q;

    invoke-direct {v2, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$MpiMfrpNode$H9ZE95GLu1MAFSn3NAcCtOqqN6Q;-><init>(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_CAMCAPABILITY:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->INFO_CAMCAPABILITY:Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p2, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;->put(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    :cond_8
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method public reconfigure(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initParam"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/MultiFrameNodeBase;->reconfigure(Ljava/lang/Object;)V

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "reconfigure - %s"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerFlipAvailableModes()[I

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAvailableFlipMode:Z

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$MfrpInitParam;->camCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensFacing()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLensFacing:I

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mIsFirstInputFrame:Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_INIT:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFaceInfo(Landroid/hardware/camera2/TotalCaptureResult;Landroid/graphics/Rect;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "captureResult",
            "activeArraySize"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "setFaceInfo: faces is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mAvailableFlipMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    array-length v1, v0

    new-array v3, v1, [Landroid/graphics/Rect;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->MPI_MFRP_TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFaceInfo: face num="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    aput-object v4, v3, v2

    if-eqz p1, :cond_2

    aget-object v4, v3, v2

    new-instance v5, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CalculationUtils;->convertRectToHorizontalFlippedRect(Landroid/graphics/Rect;Landroid/util/Size;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->NATIVE_COMMAND_SET_FACE_INFO:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLatestRepeatingCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;->mLatestCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method
