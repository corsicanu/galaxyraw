.class public abstract Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;
.super Ljava/lang/Object;
.source "MakerBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$ApplyRepeatingKeyExecutor;
    }
.end annotation


# instance fields
.field protected final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field protected mApplyRepeatingKeyExecutionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;",
            "Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$ApplyRepeatingKeyExecutor<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mAvailableMakerPrivateCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;",
            ">;"
        }
    .end annotation
.end field

.field protected mAvailableMakerPrivateKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

.field protected mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

.field protected mCamDeviceMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;

.field protected mCamDeviceSessionState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

.field protected mCamDeviceSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;

.field protected volatile mCapturePhysicalId:I

.field protected final mContext:Landroid/content/Context;

.field protected volatile mDFovStreamType:Ljava/lang/Integer;

.field protected mDeviceUsageType:I

.field protected mFirstCompPicCbImageFormat:I

.field protected mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

.field protected mFirstCompPicCbOption:Ljava/lang/Integer;

.field protected mFirstRawPicCbImageFormat:I

.field protected mFirstRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

.field protected mFirstRawPicCbOption:Ljava/lang/Integer;

.field protected mFirstRecordSurfaceOption:Ljava/lang/Integer;

.field private mFirstRecorderSurface:Landroid/view/Surface;

.field protected mFirstUnCompPicCbImageFormat:I

.field protected mFirstUnCompPicCbOption:Ljava/lang/Integer;

.field protected final mIgnoredPublicSettingList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected mMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

.field protected mMainPreviewCbImageFormat:I

.field protected mMainPreviewCbOption:Ljava/lang/Integer;

.field protected mMainPreviewCbSize:Landroid/util/Size;

.field private mMainPreviewSurface:Landroid/view/Surface;

.field protected mMainPreviewSurfaceOption:Ljava/lang/Integer;

.field private mMainPreviewSurfaceSize:Landroid/util/Size;

.field protected final mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

.field protected mMakerInitializingThread:Ljava/lang/Thread;

.field protected mMakerStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

.field protected mPausePppTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field protected final mPausePppThreadPool:Lcom/samsung/android/app/galaxyraw/core2/util/ExecutorServiceEx;

.field protected mPictureDepthCbOption:Ljava/lang/Integer;

.field protected mPictureEncodeFormat:I

.field protected final mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

.field protected final mPictureRequestBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviewDepthCbOption:Ljava/lang/Integer;

.field protected final mPreviewDepthProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

.field private mPreviewExtraSurface:Landroid/view/Surface;

.field protected mPreviewExtraSurfaceOption:Ljava/lang/Integer;

.field protected final mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

.field protected final mPreviewRequestBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviewUpdateByHal:Ljava/lang/Boolean;

.field protected mPrivateSettingExecutionMapToGet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPrivateSettingExecutionMapToSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mRecordRequestBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mRunningPhysicalId:Ljava/lang/String;

.field protected mSecondCompPicCbImageFormat:I

.field protected mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

.field protected mSecondCompPicCbOption:Ljava/lang/Integer;

.field protected mSecondRawPicCbImageFormat:I

.field protected mSecondRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

.field protected mSecondRawPicCbOption:Ljava/lang/Integer;

.field protected mSecondRecordSurfaceOption:Ljava/lang/Integer;

.field private mSecondRecorderSurface:Landroid/view/Surface;

.field protected mSecondUnCompPicCbImageFormat:I

.field protected mSecondUnCompPicCbOption:Ljava/lang/Integer;

.field protected mSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

.field protected mSubPreviewCbImageFormat:I

.field protected mSubPreviewCbOption:Ljava/lang/Integer;

.field protected mSubPreviewCbSize:Landroid/util/Size;

.field protected mThirdCompPicCbImageFormat:I

.field protected mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

.field protected mThirdCompPicCbOption:Ljava/lang/Integer;

.field protected mThirdRawPicCbImageFormat:I

.field protected mThirdRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

.field protected mThirdRawPicCbOption:Ljava/lang/Integer;

.field protected mThirdUnCompPicCbImageFormat:I

.field protected mThirdUnCompPicCbOption:Ljava/lang/Integer;

.field protected mThumbnailCbOption:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Load Core2 Library"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/node/NativeNode;->loadLibrary()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->loadLibrary()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;->loadLibrary()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewDepthProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mIgnoredPublicSettingList:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewRequestBuilderMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPictureRequestBuilderMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mRecordRequestBuilderMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/util/ExecutorServiceEx;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ExecutorServiceEx;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPausePppThreadPool:Lcom/samsung/android/app/galaxyraw/core2/util/ExecutorServiceEx;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDeviceSessionState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewUpdateByHal:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMainPreviewCbImageFormat:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSubPreviewCbImageFormat:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mFirstCompPicCbImageFormat:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mFirstUnCompPicCbImageFormat:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mFirstRawPicCbImageFormat:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondCompPicCbImageFormat:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondUnCompPicCbImageFormat:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondRawPicCbImageFormat:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdCompPicCbImageFormat:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdUnCompPicCbImageFormat:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdRawPicCbImageFormat:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMainPreviewSurfaceOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMainPreviewCbOption:Ljava/lang/Integer;

    const/16 v2, 0x101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSubPreviewCbOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mFirstRecordSurfaceOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondRecordSurfaceOption:Ljava/lang/Integer;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewExtraSurfaceOption:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mFirstCompPicCbOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mFirstUnCompPicCbOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mFirstRawPicCbOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondCompPicCbOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondUnCompPicCbOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondRawPicCbOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdCompPicCbOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdUnCompPicCbOption:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdRawPicCbOption:Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThumbnailCbOption:Ljava/lang/Integer;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewDepthCbOption:Ljava/lang/Integer;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPictureDepthCbOption:Ljava/lang/Integer;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDeviceMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$2;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDeviceSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-direct {v1, v0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->isDebugModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;->CAMERA_INJECT_DS_CONDITION:Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;->getDebugIntValue()I

    move-result p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;->CAMERA_INJECT_DS_EXTRA_INFO:Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils$DebugMode;->getDebugIntValue()I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setInjectedDSC(II)V

    :cond_0
    return-void
.end method

.method private isDynamicFovSecondPicTypeSelected(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "secondPicCbImgConfig",
            "picFormat",
            "camCapability"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mDFovStreamType:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->isSupportSecondPic(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPicCbImgSizeSelected(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "picCbImgSizeConfig",
            "sensorPixelMode",
            "isSupportedPicFormat"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCapturePhysicalId:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSensorPixelMode()Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportSecondPic(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picFormat"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$container$PictureDataInfo$PicFormat:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondRawPicCbImageFormat:I

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondUnCompPicCbImageFormat:I

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondCompPicCbImageFormat:I

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method private isSupportThirdPic(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picFormat"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$container$PictureDataInfo$PicFormat:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdRawPicCbImageFormat:I

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdUnCompPicCbImageFormat:I

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdCompPicCbImageFormat:I

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method private translatePrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$MakerPrivateKey$ID:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->getID()Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey$ID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey$ID;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SENSOR_SENSOR_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rsub-int v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, p1, v2

    aput-object v1, p1, v0

    const-string p2, "translatePrivateSetting - value(%d), translatedValue(%d)"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p2, v1

    :cond_1
    :goto_0
    return-object p2
.end method


# virtual methods
.method public declared-synchronized applySettings()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "applySettings"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->applySettings()I

    move-result v0
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "applySettings fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized applyUnabortableSettings()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "applyUnabortableSettings"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->applySettings()I

    move-result v0
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "applyUnabortableSettings fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final buildCameraParameter(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;)Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "buildCameraParameter - %s"

    invoke-static {v0, v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->createBuilder()Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getOperationMode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "arcore"

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->SAMSUNG_PACKAGES:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->INFO_SAMSUNG_CAMERA:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    :cond_0
    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SHOOTING_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMakerShootingMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_OPERATION_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_RECORDING_MAX_FPS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->getMaxFps()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SW_VDIS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->getSwVdis()Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-lez v2, :cond_1

    move v3, v1

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_VIDEO_BEAUTY_FACE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->getVideoBeautyFace()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SSM_SHOT_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->getSsmShotMode()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->getRecordingDrMode()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->getValue()I

    move-result p0

    if-eqz p0, :cond_4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_RECORDING_DR_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "3hdr"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_RECORDING_DR_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "hdr10"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_RECORDING_DR_MODE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    const-string v1, "sdr"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->CONTROL_SW_SUPER_VDIS:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->getSwSuperVdis()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->SENSOR_STREAM_TYPE:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->getStreamType()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->setParameter(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Key;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

    move-result-object p0

    return-object p0
.end method

.method protected checkOverHeatCondition(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseOverHeatLevel"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPictureRequestBuilderMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_OVER_HEAT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->get(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected abstract createMakerRequestBuilder()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method protected createRequestBuilder(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "requestBuilderMap",
            "template",
            "physicalCameraIdSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->createRequestBuilder(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMakerShootingMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p4, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p4, "camDevice createRequestBuilder fail(%d) by template(%s)"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;->getType()Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p3

    invoke-static {p0, p4, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    monitor-exit p2

    return-object p0

    :cond_0
    :goto_0
    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method protected enableProcesses(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->enableFlag(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPictureProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->enableFlag(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewDepthProcessLock:Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/FlagLock;->enableFlag(Z)V

    return-void
.end method

.method protected getApplyRepeatingKeyExecutionMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;",
            "Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$ApplyRepeatingKeyExecutor<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public getAvailableMakerPrivateCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mAvailableMakerPrivateCommands:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getAvailableMakerPrivateCommandsInternal()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mAvailableMakerPrivateCommands:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mAvailableMakerPrivateCommands:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getAvailableMakerPrivateCommandsInternal()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAvailableMakerPrivateKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mAvailableMakerPrivateKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getPrivateSettingExecutionMapToGet()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getPrivateSettingExecutionMapToSet()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getApplyRepeatingKeyExecutionMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mAvailableMakerPrivateKeys:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mAvailableMakerPrivateKeys:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected declared-synchronized getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDeviceSessionState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getDsExtraInfo(Landroid/hardware/camera2/CaptureResult;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->checkOverHeatCondition(I)Z

    move-result p0

    if-eqz p0, :cond_0

    and-int/lit8 v0, v0, -0x3

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_REPEATING_REQUEST_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    and-int/lit8 p0, v0, -0x3

    and-int/lit8 p0, p0, -0x5

    and-int/lit8 v0, p0, -0x9

    :cond_1
    const p0, 0xffff

    and-int/2addr p0, v0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_LENS_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x80000

    or-int/2addr p0, p1

    :cond_2
    return p0
.end method

.method public getEventHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->getEventHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method protected declared-synchronized getFirstRecorderSurface()Landroid/view/Surface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mFirstRecorderSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMainPreviewSurface()Landroid/view/Surface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMainPreviewSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getMainPreviewSurfaceSize()Landroid/util/Size;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMainPreviewSurfaceSize:Landroid/util/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
.end method

.method public getNumberOfPostProcessorSequenceStacked()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getOperationMode()Ljava/lang/String;
    .locals 0

    const-string p0, "none"

    return-object p0
.end method

.method protected final getPicType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "picFormat",
            "dynamicShotInfo"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;->getDsMode()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata;->getDsModeSensorPixelMode(I)Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->RAW:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    :goto_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;->RAW:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    :goto_2
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->isDynamicFovSecondPicTypeSelected(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mDFovStreamType:Ljava/lang/Integer;

    aput-object p0, v0, v5

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->SECOND:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    aput-object p0, v0, v4

    const-string p0, "getPicType(%s) - dFovStreamType %d picType %s"

    invoke-static {p2, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->SECOND:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-object p0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->isSupportThirdPic(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)Z

    move-result v0

    invoke-direct {p0, v2, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->isPicCbImgSizeSelected(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;Z)Z

    move-result v0

    const/4 v2, 0x4

    const-string v7, "getPicType(%s) - capturePhysicalId %d picType %s sensorPixelMode %s"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v6

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCapturePhysicalId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->THIRD:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    aput-object p0, v1, v4

    aput-object p2, v1, v3

    invoke-static {v0, v7, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->THIRD:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-object p0

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->isSupportSecondPic(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)Z

    move-result v0

    invoke-direct {p0, v1, p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->isPicCbImgSizeSelected(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$SensorPixelMode;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v6

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCapturePhysicalId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->SECOND:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    aput-object p0, v1, v4

    aput-object p2, v1, v3

    invoke-static {v0, v7, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->SECOND:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v6

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->FIRST:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    aput-object p1, p2, v5

    const-string p1, "getPicType(%s) - picType %s"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;->FIRST:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;

    return-object p0
.end method

.method protected declared-synchronized getPreviewExtraSurface()Landroid/view/Surface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewExtraSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "privateKey"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getPrivateSettingInternal(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getPrivateSettingExecutionMapToGet()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method protected getPrivateSettingExecutionMapToSet()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method protected getPrivateSettingInternal(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getPrivateSettingExecutionMapToGet()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, p1

    const-string p0, "privateKey: %s is not supported in %s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized getSecondRecorderSurface()Landroid/view/Surface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondRecorderSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract initializeMaker()V
.end method

.method protected isIntentionalRequestError()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected joinInitializeMakerThread()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerInitializingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerInitializingThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinInitializeMakerThread fail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$setCamDeviceSessionState$0$MakerBase(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;->onCamDeviceConnected(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public synthetic lambda$setCamDeviceSessionState$1$MakerBase(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;->onCamDeviceConnectFailed(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public synthetic lambda$setCamDeviceSessionState$2$MakerBase(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;->onCamDeviceDisconnected(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public synthetic lambda$setCamDeviceSessionState$3$MakerBase(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;->onCamDeviceDisconnected(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method protected abstract onCamDeviceClosed()V
.end method

.method protected abstract onCamDeviceConnectFailed()V
.end method

.method protected abstract onCamDeviceConnected()V
.end method

.method protected abstract onCamDeviceDisconnected()V
.end method

.method protected onPreviewResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "camCapability"
        }
    .end annotation

    return-void
.end method

.method protected onRecordResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "camCapability"
        }
    .end annotation

    return-void
.end method

.method protected final prepareBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bufferCallbackForwarder",
            "bufferForwarderRef",
            "bufferSize",
            "maxConcurrentThread",
            "forwardMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference<",
            "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;",
            ">;III)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "prepareBufferCallbackForwarder - %s, %s, bufferSize %d, maxConcurrentThread %d, forwardMode %d"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "bufferSize"

    invoke-static {p3, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkPositive(ILjava/lang/String;)I

    const-string p0, "maxConcurrentThread"

    invoke-static {p4, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkPositive(ILjava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3, p4, p5}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->isCompatibleWith(III)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->release()V

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    invoke-direct {p0, p3, p4, p5}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;-><init>(III)V

    invoke-virtual {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;->getBufferForwarder()Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;->setBufferForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;)V

    :cond_4
    return-void
.end method

.method protected final releaseBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferCallbackForwarder",
            "bufferForwarderRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference<",
            "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "releaseBufferCallbackForwarder - %s, %s"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;->getBufferForwarder()Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->release()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;->setBufferForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;->release()V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;->clear()V

    :cond_1
    return-void
.end method

.method protected abstract releaseMaker()V
.end method

.method public setAdaptiveLensModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setAdaptiveLensModeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setAeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setAeInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setAfInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setAfInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public declared-synchronized setAfTrigger(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "setAfTrigger(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setAfTrigger(I)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "setAfTrigger fail"

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAgifEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setAgifEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setAutoFramingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setAutoFramingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBeautyEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BeautyEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setBeautyEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BeautyEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBokehInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setBokehInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBrightnessValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setBrightnessValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BrightnessValueCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public declared-synchronized setBurstPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;Landroid/os/Handler;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "setBurstPictureCallback(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BurstPictureCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$BurstPictureCallbackForwarder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstPictureCallback;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBurstShotFpsCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setBurstShotFpsCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BurstShotFpsCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected declared-synchronized setCamDeviceSessionState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDeviceSessionState"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamDeviceSessionState E : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDeviceSessionState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkTransitState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$4;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerUtils$CamDeviceSessionState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$qk0LI_dDGiHWtZ6osd8SHbxecvg;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$qk0LI_dDGiHWtZ6osd8SHbxecvg;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->enableProcesses(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->onCamDeviceDisconnected()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->RECONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDeviceSessionState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_0

    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$wz8Mg9ppMgfk9O4oEVjaDf7kKc8;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$wz8Mg9ppMgfk9O4oEVjaDf7kKc8;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->enableProcesses(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->onCamDeviceClosed()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$oJGwa_J5MwmeeADNq6n_QjmeQn0;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$oJGwa_J5MwmeeADNq6n_QjmeQn0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->onCamDeviceConnectFailed()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$xyToBOd-z39j1OivVVcfdfIJOrs;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$MakerBase$xyToBOd-z39j1OivVVcfdfIJOrs;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "[CAMFWKPI] onCamDeviceConnected"

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->onCamDeviceConnected()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->enableProcesses(Z)V

    :cond_0
    :goto_0
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "CamDeviceSessionState is changed - %s -> %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDeviceSessionState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDeviceSessionState:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "setCamDeviceSessionState X"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "CamDeviceSessionState can\'t be changed state to %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCameraRunningDebugInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CameraRunningDebugInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setCameraRunningDebugInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CameraRunningDebugInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setColorTemperatureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setColorTemperatureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ColorTemperatureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setCompositionGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setCompositionGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDepthInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setDepthInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DepthInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDofMultiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setDofMultiInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDynamicShotCaptureDurationCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setDynamicShotCaptureDurationCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotCaptureDurationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDynamicShotInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setDynamicShotInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DynamicShotInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setEvCompensationValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setEvCompensationValueCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EvCompensationValueCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setEventFinderResultCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setEventFinderResultCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$EventFinderResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setExposureTimeCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setExposureTimeCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ExposureTimeCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFaceAlignmentEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceAlignmentEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setFaceAlignmentEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceAlignmentEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFaceDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setFaceDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFaceLandmarkEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceLandmarkEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setFaceLandmarkEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceLandmarkEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFaceRecognitionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setFaceRecognitionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceRecognitionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFacialAttributeEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setFacialAttributeEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected declared-synchronized setFirstRecorderSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mFirstRecorderSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFoodEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setFoodEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FoodEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setHandGestureDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setHandGestureDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HandGestureDetectionInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setHumanTrackingEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setHumanTrackingEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$HumanTrackingEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setIntelligentGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setIntelligentGuideEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$IntelligentGuideEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLensDirtyDetectCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setLensDirtyDetectCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensDirtyDetectCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setLensInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLensSuggestionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensSuggestionCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setLensSuggestionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensSuggestionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLightConditionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setLightConditionCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LightConditionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLiveHdrStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setLiveHdrStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected declared-synchronized setMainPreviewSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMainPreviewSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setMainPreviewSurfaceSize(Landroid/util/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMainPreviewSurfaceSize:Landroid/util/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMultiViewInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setMultiViewInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$MultiViewInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setObjectTrackingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setObjectTrackingInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ObjectTrackingInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPalmDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setPalmDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPanoramaEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setPanoramaEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPostProcessorStatusCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setPostProcessorStatusCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected declared-synchronized setPreviewExtraSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewExtraSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPreviewSnapShotCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setPreviewSnapShotCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPreviewStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setPreviewStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected setPrivateCommandInternal(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateCommand"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MakerBase variants cannot support setPrivateCommandInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized setPrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    const-string v1, "setPrivateSetting - %s : %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "privateKey"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->translatePrivateSetting(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->setPrivateSettingInternal(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setPrivateSettingInternal(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getPrivateSettingExecutionMapToSet()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "setPrivateSettingInternal fail - "

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getPrivateSettingExecutionMapToSet()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getAvailableMakerPrivateKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getApplyRepeatingKeyExecutionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getApplyRepeatingKeyExecutionMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$ApplyRepeatingKeyExecutor;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$ApplyRepeatingKeyExecutor;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "privateKey: %s is not supported in %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized setPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CaptureRequest key"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SECURE_MAKER_PUBLIC_REQUEST_KEY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v4, "setPublicSetting - %s : %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mIgnoredPublicSettingList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewRequestBuilderMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPictureRequestBuilderMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMakerType()I

    move-result v0

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mRecordRequestBuilderMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "setPublicSetting %s is ignored"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setQRCodeDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setQRCodeDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSTPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setSTPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$STPictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSceneDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setSceneDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSceneDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setSceneDetectionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected declared-synchronized setSecondRecorderSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSecondRecorderSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSensorSensitivityCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setSensorSensitivityCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SensorSensitivityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected setSessionKeys(Ljava/util/List;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "availableSessionKeyNames",
            "sessionKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getOperationMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arcore"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "setSessionKeys - unsupported operation mode"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "setSessionKeys - availableSessionKeyNames is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v4

    aput-object v0, v6, v3

    const-string v3, "setSessionKeys - %s : %s"

    invoke-static {v2, v3, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPreviewRequestBuilderMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mPictureRequestBuilderMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMakerType()I

    move-result v2

    if-ne v5, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mRecordRequestBuilderMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object v0, v5, v3

    const-string v0, "setSessionKeys - %s : %s is not available"

    invoke-static {v2, v0, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setSingleBokehEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setSingleBokehEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SingleBokehEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SlowMotionEventDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSmartScanEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setSmartScanEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SmartScanEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setStarEffectEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StarEffectEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setStarEffectEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StarEffectEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setStillCaptureProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setStillCaptureProgressCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StillCaptureProgressCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSuperSlowMotionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setSuperSlowMotionInfoCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SuperSlowMotionInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSwFaceDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setSwFaceDetectionEventCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setTouchAeStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setTouchAeStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setZoomLockStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "handler"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->setZoomLockStateCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ZoomLockStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected startInitializeMakerThread()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Initializing Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$3;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerInitializingThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerInitializingThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized takePreviewSnapShot()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "takePreviewSnapShot E"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMainPreviewSurface:Landroid/view/Surface;

    const-string v1, "previewSurface"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v0

    const-string v1, "previewSurfaceSize"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getRepeatingState()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getRepeatingState()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "RepeatingState is not REPEATING_PREVIEW or not REPEATING_RECORD"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->getPreviewSnapShotCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNV21BufferSize(Landroid/util/Size;)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mMainPreviewSurface:Landroid/view/Surface;

    invoke-static {v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->putByteBufferFromSurface(Landroid/view/Surface;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;->onPreviewSnapShotTaken(Ljava/nio/ByteBuffer;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;->onError(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "takePreviewSnapShot X"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected usePartialCaptureResult()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->getMakerShootingMode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getRequestPartialResultAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
