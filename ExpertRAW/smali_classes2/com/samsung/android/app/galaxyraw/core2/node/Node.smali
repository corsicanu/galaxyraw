.class public abstract Lcom/samsung/android/app/galaxyraw/core2/node/Node;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/node/Node$Port;,
        Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;,
        Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;,
        Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;,
        Lcom/samsung/android/app/galaxyraw/core2/node/Node$NodeId;,
        Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;,
        Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field private static final MAX_WAITING_TIME_FOR_NODE_INIT:J = 0x7L

.field public static final NODE_AGIF:I = 0xfa

.field public static final NODE_ARC_V1_ALL_IN_FOCUS:I = 0x33e1a4

.field public static final NODE_ARC_V1_DUAL_BOKEH:I = 0x2318c4

.field public static final NODE_ARC_V1_FACE_ALIGNMENT:I = 0x30da4

.field public static final NODE_ARC_V1_FACE_LANDMARK:I = 0x334b4

.field public static final NODE_ARC_V1_FACE_RECOGNITION:I = 0x35bc4

.field public static final NODE_ARC_V1_FACE_RESTORATION:I = 0x39fc24

.field public static final NODE_ARC_V1_HIGH_RES:I = 0x2dc724

.field public static final NODE_ARC_V1_LLHDR:I = 0x10c944

.field public static final NODE_ARC_V1_MFHDR:I = 0x92824

.field public static final NODE_ARC_V1_SIE:I = 0x36eee4

.field public static final NODE_ARC_V1_SSHDR:I = 0x387584

.field public static final NODE_ARC_V1_SUPER_RESOLUTION_RAW:I = 0x3d0964

.field public static final NODE_ARC_V1_UW_SUPER_RESOLUTION:I = 0x3b82c4

.field public static final NODE_ARC_V2_1_HUMAN_TRACKING:I = 0xaaf29

.field public static final NODE_ARC_V2_1_SUPER_RESOLUTION:I = 0x2c40e9

.field public static final NODE_ARC_V2_FACE_LANDMARK:I = 0x33518

.field public static final NODE_ARC_V2_HIGH_RES:I = 0x2dc788

.field public static final NODE_ARC_V2_HUMAN_TRACKING:I = 0xaaf28

.field public static final NODE_ARC_V2_LLHDR:I = 0x10c9a8

.field public static final NODE_ARC_V2_MFHDR:I = 0x92888

.field public static final NODE_ARC_V2_SUPER_RESOLUTION:I = 0x2c40e8

.field public static final NODE_ARC_V3_HUMAN_TRACKING:I = 0xaaf8c

.field public static final NODE_ARC_V3_LLHDR:I = 0x10ca0c

.field public static final NODE_ARC_V3_MFHDR:I = 0x928ec

.field public static final NODE_ARC_V3_SUPER_NIGHT:I = 0x29340c

.field public static final NODE_ARC_V4_LLHDR:I = 0x10ca70

.field public static final NODE_ARC_V4_MFHDR:I = 0x92950

.field public static final NODE_BASIC_JPEG:I = 0xf42a4

.field public static final NODE_CONVERTER:I = 0x118

.field public static final NODE_DMC_PALM:I = 0x78

.field public static final NODE_DNG:I = 0xb4

.field public static final NODE_DUMMY:I = -0x1

.field public static final NODE_EXIF:I = 0xf0

.field public static final NODE_EXTERNAL_JPEG:I = 0xdbc04

.field public static final NODE_MPI_MFRP:I = 0x154

.field public static final NODE_MPI_V1_HIFILLS:I = 0x19f104

.field public static final NODE_MPI_V1_LLHDR:I = 0x10f054

.field public static final NODE_MPI_V1_MFHDR:I = 0x94f34

.field public static final NODE_MPI_V2_SUPER_NIGHT:I = 0x295ab8

.field public static final NODE_PANORAMA:I = 0x13af74

.field public static final NODE_POLARR_COMPOSITION_GUIDE_NODE:I = 0x140

.field public static final NODE_SAIV_QRCODE:I = 0x6e

.field public static final NODE_SEC_EFFECT_PROCESSOR:I = 0x136

.field public static final NODE_SEC_HEIF:I = 0x12c

.field public static final NODE_SEC_V1_1_LOCAL_TM:I = 0x249f65

.field public static final NODE_SEC_V1_CONTENTS_DETECTOR:I = 0x325b04

.field public static final NODE_SEC_V1_DEPTH_FOOD:I = 0x1e84e4

.field public static final NODE_SEC_V1_EVENT_DETECTION:I = 0x1b77a4

.field public static final NODE_SEC_V1_FACIAL_ATTRIBUTE:I = 0x61ae4

.field public static final NODE_SEC_V1_HUMAN_SEGMENTATION:I = 0x30d464

.field public static final NODE_SEC_V1_INTELLIGENT_GUIDE:I = 0x200b84

.field public static final NODE_SEC_V1_LOCAL_TM:I = 0x249f64

.field public static final NODE_SEC_V1_SALIENCY_FOOD:I = 0x1cfe44

.field public static final NODE_SEC_V1_SINGLE_BOKEH:I = 0x16e3c4

.field public static final NODE_SEC_V1_SR_DEBLUR:I = 0x2f4dc4

.field public static final NODE_SEC_V1_UDC:I = 0x3e9004

.field public static final NODE_SEC_V1_ULTRA_LENS_DISTORTION:I = 0x27aca4

.field public static final NODE_SEC_V2_EVENT_DETECTION:I = 0x1b7808

.field public static final NODE_SEC_V2_HUMAN_SEGMENTATION:I = 0x30d4c8

.field public static final NODE_SEC_V2_SINGLE_BOKEH:I = 0x16e428

.field public static final NODE_SEC_V4_BEAUTY:I = 0x18830

.field public static final NODE_SEF:I = 0xaa

.field public static final NODE_SRCB_EVENT_FINDER:I = 0x14a

.field public static final NODE_SRCB_V2_SMART_SCAN:I = 0x262668

.field public static final NODE_SRIB_SCENE_DETECTION:I = 0x122

.field public static final NODE_SRIB_V1_STAR_EFFECT:I = 0x219224

.field public static final NODE_SR_V1_SINGLE_IN_FOCUS:I = 0x356844

.field public static final NODE_WATERMARK:I = 0x96

.field public static final NODE_XMP_INJECTOR:I = 0x10e

.field protected static final PICTURE_PROCESSING_TIME_MILLIS:J = 0x1f4L

.field public static final PORT_TYPE_BACKGROUND_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_TYPE_DEPTH_MAP:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_TYPE_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_TYPE_PICTURE_FILE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_TYPE_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PREVIEW_PROCESSING_TIME_MILLIS:J = 0x3cL


# instance fields
.field public final INPUTPORT_BACKGROUND_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final INPUTPORT_DEPTHMAP:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final INPUTPORT_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final INPUTPORT_PICTURE_FILE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;",
            ">;"
        }
    .end annotation
.end field

.field public final INPUTPORT_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field public final OUTPUTPORT_BACKGROUND_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final OUTPUTPORT_DEPTHMAP:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final OUTPUTPORT_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final OUTPUTPORT_PICTURE_FILE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;",
            ">;"
        }
    .end annotation
.end field

.field public final OUTPUTPORT_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoreInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHasNativeNode:Z

.field protected final mInitParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "*>;[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mInitTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

.field protected final mInitializedCond:Ljava/util/concurrent/locks/Condition;

.field protected mInitializingThreadId:J

.field private final mInputPortMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;",
            ">;"
        }
    .end annotation
.end field

.field protected mNativeNode:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

.field protected final mNodeId:I

.field private final mOutputPortMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;",
            ">;"
        }
    .end annotation
.end field

.field protected mPictureProcessTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

.field protected final mPropertyTypeCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

.field protected final mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final mTag:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$1;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$2;

    const-string v1, "BACKGROUND_PREVIEW"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_BACKGROUND_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$3;

    const-string v1, "PICTURE"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$4;

    const-string v1, "PICTURE_FILE"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_PICTURE_FILE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$5;

    const-string v1, "DEPTH_MAP"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_DEPTH_MAP:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->isShipMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(ILcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "nodeTag",
            "hasNativeNode"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->OUTPUTPORT_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_BACKGROUND_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    iput-object v3, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->OUTPUTPORT_BACKGROUND_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    invoke-direct {v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    iput-object v5, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->OUTPUTPORT_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    sget-object v8, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_PICTURE_FILE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    invoke-direct {v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    iput-object v7, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->OUTPUTPORT_PICTURE_FILE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    sget-object v10, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->PORT_TYPE_DEPTH_MAP:Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    invoke-direct {v9, v10}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)V

    iput-object v9, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->OUTPUTPORT_DEPTHMAP:Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    new-instance v11, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v11}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v11, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v11

    iput-object v11, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializedCond:Ljava/util/concurrent/locks/Condition;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mPropertyTypeCommands:Ljava/util/List;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitParams:Ljava/util/Map;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInputPortMap:Ljava/util/Map;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mOutputPortMap:Ljava/util/Map;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mCoreInterfaceMap:Ljava/util/Map;

    sget-object v11, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    iput-object v11, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    new-instance v12, Lcom/samsung/android/app/galaxyraw/core2/node/Node$6;

    invoke-direct {v12, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$6;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;)V

    invoke-direct {v11, v2, v12, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;)V

    iput-object v11, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->INPUTPORT_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    new-instance v12, Lcom/samsung/android/app/galaxyraw/core2/node/Node$7;

    invoke-direct {v12, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$7;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;)V

    invoke-direct {v2, v4, v12, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;)V

    iput-object v2, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->INPUTPORT_BACKGROUND_PREVIEW:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    new-instance v12, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;

    invoke-direct {v12, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$8;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;)V

    invoke-direct {v4, v6, v12, v5}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;)V

    iput-object v4, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->INPUTPORT_PICTURE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    new-instance v12, Lcom/samsung/android/app/galaxyraw/core2/node/Node$9;

    invoke-direct {v12, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$9;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;)V

    invoke-direct {v6, v8, v12, v7}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;)V

    iput-object v6, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->INPUTPORT_PICTURE_FILE:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    new-instance v8, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    new-instance v12, Lcom/samsung/android/app/galaxyraw/core2/node/Node$10;

    invoke-direct {v12, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$10;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;)V

    invoke-direct {v8, v10, v12, v9}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;)V

    iput-object v8, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->INPUTPORT_DEPTHMAP:Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    move-object/from16 v10, p2

    iput-object v10, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mTag:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v10

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x1

    aput-object v14, v13, v16

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v17, 0x2

    aput-object v14, v13, v17

    const-string v14, "%s - id %d, hasNativeNode %b"

    invoke-static {v10, v14, v13}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->getNodeVersionInfo(Ljava/lang/Class;)Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    iget v10, v10, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature$NodeVersionInfo;->minorVersion:I

    goto :goto_0

    :cond_0
    move v10, v15

    :goto_0
    add-int v10, p1, v10

    iput v10, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNodeId:I

    move/from16 v10, p3

    iput-boolean v10, v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mHasNativeNode:Z

    const/4 v10, 0x5

    new-array v13, v10, [Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    aput-object v1, v13, v15

    aput-object v3, v13, v16

    aput-object v5, v13, v17

    aput-object v7, v13, v12

    const/4 v1, 0x4

    aput-object v9, v13, v1

    invoke-virtual {v0, v13}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->registerOutputPort([Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;)V

    new-array v3, v10, [Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    aput-object v11, v3, v15

    aput-object v2, v3, v16

    aput-object v4, v3, v17

    aput-object v6, v3, v12

    aput-object v8, v3, v1

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->registerInputPort([Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V

    return-void
.end method

.method public static connectPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputPort",
            "inputPort"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "TT;>;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->connectInputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V

    return-void
.end method

.method public static set(Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputPort",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "TT;>;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->set(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static set(Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputPort",
            "data",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "TT;>;TT;",
            "Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->set(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static set(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputPort",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "TT;>;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->set(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static set(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputPort",
            "data",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "TT;>;TT;",
            "Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->set(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setOutputPortDataCallback(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputPort",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "TT;>;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->setDataCallback(Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort$PortDataCallback;)V

    return-void
.end method


# virtual methods
.method protected cancelPictureProcessTimeout()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mPictureProcessTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;->cancelTimeout()V

    :cond_0
    return-void
.end method

.method protected checkPictureProcessTimeout()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mPictureProcessTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;->checkTimeout()V

    :cond_0
    return-void
.end method

.method public deinitialize()V
    .locals 9

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNodeId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->dummyDeinitialize()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    const-string v4, "deinitialize"

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->isDeInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    const-string v4, "deinitialize - already node is deInitialized, ignore"

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializedCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v5, "%s: deinitialize fail - waiting time for node initializing is expired"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v3

    :try_start_3
    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "%s: deinitialize fail - get interrupt during waiting for node initializing, %s"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object v3, v7, v1

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->checkTransitState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->DEBUG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;->shutdown()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mPictureProcessTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;->shutdown()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mPictureProcessTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-onDeinitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->onDeinitialized()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->releaseNativeNode()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    new-instance v4, Ljava/lang/IllegalStateException;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "%s: deinitialize fail - state transition error, %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v7

    aput-object v7, v0, v2

    aput-object v3, v0, v1

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected dummyDeinitialize()V
    .locals 2

    const-string v0, "deinitialize"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->printDummyMethodCallingMessage(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " can\'t deinitialize"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dummyInitialize()V
    .locals 2

    const-string v0, "initialize"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->printDummyMethodCallingMessage(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " can\'t initialize"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCoreInterface(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TT;>;)",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mCoreInterfaceMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;

    return-object p0
.end method

.method public getInputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TT;>;)",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInputPortMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;

    return-object p0
.end method

.method protected getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mTag:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object p0
.end method

.method public getOutputPort(Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;)Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType<",
            "TT;>;)",
            "Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mOutputPortMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;

    return-object p0
.end method

.method protected initNativeNode()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mHasNativeNode:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNodeId:I

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNativeNode:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

    :cond_0
    return-void
.end method

.method public initialize(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activate"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->initialize(ZZ)V

    return-void
.end method

.method public initialize(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "activate",
            "asyncInit"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->initialize(ZZJ)V

    return-void
.end method

.method public initialize(ZZJ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "activate",
            "asyncInit",
            "delay"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNodeId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->dummyInitialize()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    const-string v4, "initialize - activate %b, asyncInit %b(delay %dms)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->isInitializing()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "initialize - already node is initializing, ignore"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->isActivated()Z

    move-result p2

    if-eq p2, p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->setActivate(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    const-string p2, "initialize - already node is initialized, ignore"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->checkTransitState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)V

    if-eqz p2, :cond_4

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializingThreadId:J

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;

    invoke-direct {v3, p0, p1, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$11;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;ZJ)V

    invoke-virtual {p2, v3, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-initializingThread"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializingThreadId:J

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->initializeInternal(Z)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->setActivate(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializedCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p2, Ljava/lang/IllegalStateException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p4, "%s: initialize fail - state transition error, %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object p1, v1, v0

    invoke-static {p3, p4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected final initializeInternal(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activate"
        }
    .end annotation

    sget-boolean p1, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$BUgZqYe9XPdCvhtJJpASm9ODvvE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$BUgZqYe9XPdCvhtJJpASm9ODvvE;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;-><init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$kh7UWRbeqn9TPm6N27wU7FuDWBM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/node/-$$Lambda$Node$kh7UWRbeqn9TPm6N27wU7FuDWBM;-><init>(Lcom/samsung/android/app/galaxyraw/core2/node/Node;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;-><init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mPictureProcessTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;->checkTimeout()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-initNativeNode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->initNativeNode()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-onInitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitParams:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->onInitialized(Ljava/util/Map;)V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitTimeoutExecutor:Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/TimeoutExecutor;->cancelTimeout()V

    :cond_2
    return-void
.end method

.method public initializeNode(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "asyncInit"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->initialize(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->deinitialize()V

    :goto_0
    return-void
.end method

.method public isActivated()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->ACTIVATED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result p0

    return p0
.end method

.method public isDeInitialized()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result p0

    return p0
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->ACTIVATED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

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

.method public isInitializing()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result p0

    return p0
.end method

.method public isSupportIncompleteMerge()Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getBaseClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NodeFeature;->isSupportIncompleteMerge(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportIncompleteMerge : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportIncompleteMerge("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getBaseClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ") = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public synthetic lambda$initializeInternal$0$Node()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const-string p0, "%s initialization time(%d sec) has expired"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$initializeInternal$1$Node()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const-string p0, "%s picture processing time(%d sec) has expired"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected varargs nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RET:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "TRET;>;[",
            "Ljava/lang/Object;",
            ")TRET;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializedCond:Ljava/util/concurrent/locks/Condition;

    const-string v1, "nativeCall"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->nativeCallInternal(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected final varargs nativeCallInternal(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "lock",
            "condition",
            "command",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RET:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            "Ljava/util/concurrent/locks/Condition;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "TRET;>;[",
            "Ljava/lang/Object;",
            ")TRET;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializingThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x7

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v4, v5, v0}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    :try_start_2
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNativeNode:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const-string p3, "%s(%s) fail - node is deinitialized after waiting for activating, discard this call"

    new-array p5, v3, [Ljava/lang/Object;

    aput-object p1, p5, v2

    aput-object p4, p5, v1

    invoke-static {p0, p3, p5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p0, 0x0

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_1
    :try_start_4
    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v0, "%s: %s(%s) fail - waiting time for node initializing is expired"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    aput-object p1, v4, v1

    aput-object p4, v4, v3

    invoke-static {p5, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :try_start_5
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p5, "%s: nativeCall(%s) fail - get interrupt during waiting for node initializing"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    aput-object p0, v0, v2

    aput-object p4, v0, v1

    invoke-static {p3, p5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNativeNode:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_3
    :try_start_6
    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string p5, "%s: nativeCall(%s) fail - node is not initialized"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    aput-object p0, v0, v2

    aput-object p4, v0, v1

    invoke-static {p3, p5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public needProcessBackgroundPreview()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->isActivated()Z

    move-result p0

    return p0
.end method

.method public needProcessCustom()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->isActivated()Z

    move-result p0

    return p0
.end method

.method public needProcessDepthMap()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->isActivated()Z

    move-result p0

    return p0
.end method

.method public needProcessPicture()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializedCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s: needProcessPicture fail - waiting time for node initializing is expired"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "%s: needProcessPicture fail - get interrupt during waiting for node initializing"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->ACTIVATED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public needProcessPreview()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->isActivated()Z

    move-result p0

    return p0
.end method

.method protected onDeinitialized()V
    .locals 0

    return-void
.end method

.method protected onInitialized(Ljava/util/Map;)V
    .locals 5
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

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mHasNativeNode:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mPropertyTypeCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected printDummyMethodCallingMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodName"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is called in dummy node"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected processBackgroundPreview(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backgroundPreview",
            "bundle"
        }
    .end annotation

    return-object p1
.end method

.method protected processCustom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preview",
            "bundle"
        }
    .end annotation

    return-object p1
.end method

.method protected processDepthMap(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "depthMap",
            "bundle"
        }
    .end annotation

    return-object p1
.end method

.method protected processPicture(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;
    .locals 0
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

    return-object p1
.end method

.method protected processPicture(Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;
    .locals 0
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

    return-object p1
.end method

.method protected processPreview(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)Landroid/media/Image;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preview",
            "bundle"
        }
    .end annotation

    return-object p1
.end method

.method public varargs registerInputPort([Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ports"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInputPortMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mCoreInterfaceMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$InputPort;->getCoreInterface()Lcom/samsung/android/app/galaxyraw/core2/node/Node$CoreInterface;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs registerOutputPort([Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ports"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mOutputPortMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$OutputPort;->getPortType()Lcom/samsung/android/app/galaxyraw/core2/node/Node$PortType;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->deinitialize()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected releaseNativeNode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNativeNode:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->releaseNode()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNativeNode:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

    :cond_0
    return-void
.end method

.method public setActivate(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activate"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "setActivate - activate %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->ACTIVATED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->checkTransitState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catch_0
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method protected setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCallback"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNativeNode:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->setNativeCallback(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$NativeCallback;)V

    return-void
.end method

.method protected varargs tryNativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RET:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "TRET;>;[",
            "Ljava/lang/Object;",
            ")TRET;"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializedCond:Ljava/util/concurrent/locks/Condition;

    const-string v1, "tryNativeCall"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->tryNativeCallInternal(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected final varargs tryNativeCallInternal(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "lock",
            "condition",
            "command",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RET:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            "Ljava/util/concurrent/locks/Condition;",
            "Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command<",
            "TRET;>;[",
            "Ljava/lang/Object;",
            ")TRET;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->INITIALIZING:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitializingThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x7

    const/4 v0, 0x2

    const/4 v5, 0x3

    :try_start_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "%s: %s(%s) fail - waiting time for node initializing is expired"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v6

    aput-object v6, v4, v1

    aput-object p4, v4, v0

    invoke-static {p5, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p5}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :try_start_2
    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    sget-object p5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "%s: %s(%s) fail - get interrupt during waiting for node initializing"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->getNodeTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    aput-object p0, v4, v1

    aput-object p4, v4, v0

    invoke-static {p5, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mState:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->DEINITIALIZED:Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;->compareState(Lcom/samsung/android/app/galaxyraw/core2/node/Node$State;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNativeNode:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->nativeCall(Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode$Command;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitParams:Ljava/util/Map;

    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mPropertyTypeCommands:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    array-length p3, p5

    if-lez p3, :cond_4

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitParams:Ljava/util/Map;

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    aget-object v0, p5, v2

    invoke-interface {p3, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitParams:Ljava/util/Map;

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    aget-object p3, p3, v2

    check-cast p3, Ljava/util/Map;

    :goto_1
    aget-object v0, p5, v2

    invoke-interface {p3, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p5, v1, [Ljava/lang/Object;

    aput-object p3, p5, v2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mInitParams:Ljava/util/Map;

    invoke-interface {p0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p0, 0x0

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public updateSequenceId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/node/Node;->mNativeNode:Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->updateSequenceId(I)V

    :cond_0
    return-void
.end method
