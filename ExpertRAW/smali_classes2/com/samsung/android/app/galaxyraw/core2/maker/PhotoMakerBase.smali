.class abstract Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;
.super Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;
.source "PhotoMakerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;
    }
.end annotation


# static fields
.field protected static final BURST_PICTURE_BUFFER_FORWARDER_MAX_CONCURRENT:I = 0x2

.field protected static final BURST_PICTURE_BUFFER_FORWARDER_MODE:I = 0x1

.field protected static final PREVIEW_BUFFER_FORWARDER_MAX_CONCURRENT:I = 0x2

.field protected static final PREVIEW_BUFFER_FORWARDER_MODE:I


# instance fields
.field protected final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field protected final mBurstPictureBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference<",
            "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;",
            ">;"
        }
    .end annotation
.end field

.field protected mCamDeviceBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

.field protected mCamDeviceMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

.field protected mCamDevicePictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;

.field protected mCamDevicePictureDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

.field protected mCamDevicePreviewDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;

.field private final mCamDevicePreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

.field protected mCamDeviceSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

.field protected mCamDeviceThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

.field private mEnableProducePreviewFrame:Z

.field private mIsFirstExtraProduceFrame:Z

.field private mIsFirstPreviewProduceFrame:Z

.field protected final mLatestRepeatingCaptureResult:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMainPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference<",
            "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;",
            ">;"
        }
    .end annotation
.end field

.field protected mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

.field protected mPictureDepthCbImageFormat:I

.field protected mPictureDepthCbImageSize:Landroid/util/Size;

.field protected mPreviewDepthCbImageFormat:I

.field protected mPreviewDepthCbImageSize:Landroid/util/Size;

.field protected mPrivateExtraSurface:Landroid/view/Surface;

.field protected mPrivatePreviewSurface:Landroid/view/Surface;

.field protected mRawPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;

.field protected final mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

.field protected final mSubPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference<",
            "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferForwarder;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubPreviewCbFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

.field protected mThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;

.field protected mThumbnailCbImageFormat:I

.field protected mThumbnailCbImageSize:Landroid/util/Size;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
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

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;

    invoke-direct {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mLatestRepeatingCaptureResult:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMakerTag()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThumbnailCbImageFormat:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewDepthCbImageFormat:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureDepthCbImageFormat:I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_MAX_PREVIEW_FPS:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCbFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mEnableProducePreviewFrame:Z

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$1;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$2;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$3;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevicePictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$4;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevicePictureDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$5;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevicePreviewDepthCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$6;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$6;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevicePreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$8;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    const-string p0, "context"

    invoke-static {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->checkIfBokehAvailable(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mIsFirstPreviewProduceFrame:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mIsFirstExtraProduceFrame:Z

    return p1
.end method

.method private checkIfBokehAvailable(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureBokehAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureBokehSpecialEffectAvailable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMakerShootingMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 p1, 0x19

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method private declared-synchronized getPublicSettingInternal(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureRequestBuilderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_2
    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic lambda$checkAvailableDeviceConfiguration$11(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$checkAvailableDeviceConfiguration$2(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;Landroid/view/Surface;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object p2
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "previewSize(%s) is not available"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSurfaceSize for previewSurface fail - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$checkAvailableDeviceConfiguration$3(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;Landroid/util/Size;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "previewSize(%s) is not available"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$checkAvailableDeviceConfiguration$4(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;Landroid/view/Surface;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object p2
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "previewExtraSurfaceSize(%s) is not available"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSurfaceSize for previewExtraSurfaceSize fail - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$checkAvailableDeviceConfiguration$5(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "mainPreviewCbImgSize(%s) is not available"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$checkAvailableDeviceConfiguration$6(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "subPreviewCbImgSize(%s) is not available"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$checkAvailableDeviceConfiguration$7(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$checkAvailableDeviceConfiguration$9(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$checkValidConnection$0(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p0

    const-string v0, "SecondPicCbImgSizeConfig-Size"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$checkValidConnection$1(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p0

    const-string v0, "ThirdPicCbImgSizeConfig-Size"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$prepareThirdPicCbConfig$14(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized addMainPreviewSurface(Landroid/view/Surface;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainPreviewSurface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "addMainPreviewSurface - %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "mainPreviewSurface"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils$BufferQueueAbandonedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->addMainPreviewSurface(Landroid/view/Surface;)V
    :try_end_3
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SENSOR_SENSOR_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getPublicSettingInternal(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createPrivatePreviewSurface(Landroid/view/Surface;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;I)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPrivatePreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setMainPreviewSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_5
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;->getType()Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainPreviewSurface is invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "addMainPreviewSurface fail"

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v3, "previewSurfaceSize %s is not equal with previous size %s getting in connectCamDevice"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "getSurfaceSize for mainPreviewSurface fail"

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final varargs applyMultiRepeatingKey([Landroid/util/Pair;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatingKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "applyMultiRepeatingKey"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_0

    aget-object v5, p1, v2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v8, v7, v1

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v8, v7, v4

    const-string v4, "applyMultiRepeatingKey - %s, enable %b"

    invoke-static {v6, v4, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getRepeatingState()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->getId()I

    move-result p1

    if-eq p1, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->startPreviewRepeating()I

    move-result p0

    return p0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method protected final applyRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "repeatingKey",
            "frameRate",
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const-string v3, "applyRepeatingKey - %s, frameRate %s, enable %b"

    invoke-static {v0, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->backUpCurMaxRepeatingFrameRate(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getRepeatingState()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->getId()I

    move-result p1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->startPreviewRepeating()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected final applyRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "repeatingKey",
            "enable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "applyRepeatingKey - %s, enable %b"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->backUpCurMaxRepeatingFrameRate(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getRepeatingState()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;->getId()I

    move-result p1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->startPreviewRepeating()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method protected final checkAvailableDeviceConfiguration(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "deviceConfiguration"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "checkAvailableDeviceConfiguration"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getParameters()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->getStreamType()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters$StreamType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$JHZcsxpAZ1WUFr3ZXgEOR36dWbY;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$JHZcsxpAZ1WUFr3ZXgEOR36dWbY;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$H3d6G85p4NrmUuK3gHyB8bck8rs;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$H3d6G85p4NrmUuK3gHyB8bck8rs;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getPreviewExtraSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$JZYIN01uevZmFaTjLVhJiKUAG84;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$JZYIN01uevZmFaTjLVhJiKUAG84;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$8wz4_bGJKkPQM2EjbZMExlDfh5M;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$8wz4_bGJKkPQM2EjbZMExlDfh5M;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getSubPreviewCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$txT0tPeX0kHUYz_2OJhOmFzwVEI;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$txT0tPeX0kHUYz_2OJhOmFzwVEI;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getFirstPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$rH-4pFxtzGNVGXtwlC117Mo7iDw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$rH-4pFxtzGNVGXtwlC117Mo7iDw;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$SBqO5ccov41uEj-x5VS7U6ip96Y;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$SBqO5ccov41uEj-x5VS7U6ip96Y;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getSecondPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$QOPHseQp3SEJdAHjHo1_TRKP4rA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$QOPHseQp3SEJdAHjHo1_TRKP4rA;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$BQTmhDpmMHFZJ5Wpq-Bk_9JbnDE;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$BQTmhDpmMHFZJ5Wpq-Bk_9JbnDE;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getThirdPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$FEUD3lkak6Vz3MXGuPySCRNV0PE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$FEUD3lkak6Vz3MXGuPySCRNV0PE;

    invoke-virtual {p2, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$gcceEvysfVFhtnl3rnagq1yb2fo;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$gcceEvysfVFhtnl3rnagq1yb2fo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected checkValidConnection(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "deviceConfiguration"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "checkValidConnection"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const-string p0, "camDevice"

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "deviceConfiguration"

    invoke-static {p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getParameters()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    move-result-object p0

    const-string p1, "parameters in deviceConfiguration"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getFirstPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object p0

    const-string p1, "FirstPicCbImgSizeConfig"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getFirstPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p0

    const-string p1, "FirstPicCbImgSizeConfig-Size"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getSecondPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$eUf1VgfW5jI1XS2vCiyAEqlhkTI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$eUf1VgfW5jI1XS2vCiyAEqlhkTI;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getThirdPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$KBVQ_w5Rgrzcmcef0anx42eftFE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$KBVQ_w5Rgrzcmcef0anx42eftFE;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public declared-synchronized connectCamDevice(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "deviceConfiguration",
            "callback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "[CAMFWKPI] connectCamDevice E - %s, %s, %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->checkValidConnection(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->checkAvailableDeviceConfiguration(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->RECONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkTransitState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Z

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Handler;

    invoke-static {p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StateCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$StateCallbackForwarder;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMakerStateCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object p3

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareSurfaceConfig(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->preparePreviewCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareFirstPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareSecondPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareThirdPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareRawPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareThumbnailCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareDepthCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getDeviceUsageType()I

    move-result p4

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mDeviceUsageType:I

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getPictureEncodeFormat()I

    move-result p4

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureEncodeFormat:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createMakerRequestBuilder()V

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getAvailableSamsungSessionKeyNames()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getParameters()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;->getSessionKeys()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setSessionKeys(Ljava/util/List;Ljava/util/Map;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->enableProcesses(Z)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, "-releaseMaker"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseMaker()V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->startInitializeMakerThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "[CAMFWKPI] createCaptureSession E"

    invoke-static {p4, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance p4, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createSurfaceConfig(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createBuilderConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getParameters()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->buildCameraParameter(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;)Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

    move-result-object p2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-direct {p4, v1, v2, p2, v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createPreviewCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->setPreviewCbConfigs(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createFirstPicCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->setFirstPicCbConfigs(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createSecondPicCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->setSecondPicCbConfigs(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createThirdPicCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->setThirdPicCbConfigs(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createThumbnailCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->setThumbnailCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->setDepthCbConfigs(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->createCaptureSession(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p2, "[CAMFWKPI] createCaptureSession X"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    if-eqz v0, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->RECONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setCamDeviceSessionState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p2, "[CAMFWKPI] connectCamDevice X"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->joinInitializeMakerThread()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseMaker()V

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->joinInitializeMakerThread()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseMaker()V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string p3, "createCaptureSession fail"

    invoke-direct {p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createBuilderConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewRequestBuilderMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureRequestBuilderMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method protected createDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;
    .locals 5

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewDepthCbImageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewDepthCbImageSize:Landroid/util/Size;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewDepthCbOption:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureDepthCbImageFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureDepthCbImageSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureDepthCbOption:Ljava/lang/Integer;

    invoke-direct {v2, v3, v4, p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    return-object v0
.end method

.method protected createFirstPicCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 6

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbOption:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstUnCompPicCbImageFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstUnCompPicCbOption:Ljava/lang/Integer;

    invoke-direct {v2, v3, v5, p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    return-object v0
.end method

.method protected declared-synchronized createMakerRequestBuilder()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "createMakerRequestBuilder fail - mCamDevice is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewRequestBuilderMap:Ljava/util/Map;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createRequestBuilder(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureRequestBuilderMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createRequestBuilder(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Ljava/util/Map;ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createPreviewCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCbImageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCbSize:Landroid/util/Size;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCbOption:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSubPreviewCbAvailable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCbImageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCbSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCbOption:Ljava/lang/Integer;

    invoke-direct {p1, v2, v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    return-object v0
.end method

.method protected createPrivatePreviewSurface(Landroid/view/Surface;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;I)Landroid/view/Surface;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewSurface",
            "camCapability",
            "flipMode"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensFacing()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorOrientation()Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "createPrivatePreviewSurface - %s, lensFacing %d, sensorOrientation %d, flipMode %d"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->createPrivateSurface(Landroid/view/Surface;)Landroid/view/Surface;

    move-result-object p0

    const/16 p1, 0x11

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->setSurfaceFormat(Landroid/view/Surface;IZ)V

    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->setScalingMode(Landroid/view/Surface;I)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getLensFacing()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSensorOrientation()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->setSurfaceOrientation(Landroid/view/Surface;III)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "set attribute for privatePreviewSurface fail - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected createSecondPicCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 6

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbOption:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondUnCompPicCbImageFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondUnCompPicCbOption:Ljava/lang/Integer;

    invoke-direct {v2, v3, v5, p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    return-object v0
.end method

.method protected createSurfaceConfig(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceConfiguration"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewSurfaceOption:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewSurfaceSource()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;-><init>(Landroid/view/Surface;Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Class;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getPreviewExtraSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewExtraSurfaceOption:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewUpdateByHal:Ljava/lang/Boolean;

    invoke-direct {p1, v2, v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;-><init>(Landroid/view/Surface;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;)V

    return-object v0
.end method

.method protected createThirdPicCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 6

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbImageFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbOption:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdUnCompPicCbImageFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdUnCompPicCbOption:Ljava/lang/Integer;

    invoke-direct {v2, v3, v5, p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    return-object v0
.end method

.method protected createThumbnailCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThumbnailCbImageFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThumbnailCbImageSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThumbnailCbOption:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;-><init>(Ljava/lang/Integer;Landroid/util/Size;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public declared-synchronized disconnectCamDevice()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "disconnectCamDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkTransitState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->closeCaptureSession()V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setCamDeviceSessionState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "closeCaptureSession fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dumpLatestRepeatingCaptureResult()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mLatestRepeatingCaptureResult:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;->getNow()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CaptureResult;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->dumpCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method protected final enableProducePreviewFrame(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mEnableProducePreviewFrame:Z

    return-void
.end method

.method protected getCamDevicePreviewStateCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevicePreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    return-object p0
.end method

.method protected getCamDeviceSessionStateCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDeviceSessionStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    return-object p0
.end method

.method public getFirstPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    return-object p0
.end method

.method public getLatestRepeatingCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mLatestRepeatingCaptureResult:Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingReference;->getNow()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public getMakerType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized getPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getPublicSettingInternal(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

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

.method public getSecondPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    return-object p0
.end method

.method protected initializeMaker()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "initializeMaker"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected final isProducePreviewFrameEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mEnableProducePreviewFrame:Z

    return p0
.end method

.method public synthetic lambda$checkAvailableDeviceConfiguration$10$PhotoMakerBase(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImageFormat:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondUnCompPicCbImageFormat:I

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "secondPicCbImgSize(%s) is not available"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic lambda$checkAvailableDeviceConfiguration$12$PhotoMakerBase(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbImageFormat:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdUnCompPicCbImageFormat:I

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "thirdPicCbImgSize(%s) is not available"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic lambda$checkAvailableDeviceConfiguration$8$PhotoMakerBase(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImageFormat:I

    if-nez v0, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstUnCompPicCbImageFormat:I

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "firstPicCbImgSize(%s) is not available"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic lambda$prepareSecondPicCbConfig$13$PhotoMakerBase(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbOption:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/lit16 p1, p1, 0x200

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbOption:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbOption:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbOption:Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$prepareThirdPicCbConfig$15$PhotoMakerBase(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbOption:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbOption:Ljava/lang/Integer;

    return-void
.end method

.method protected onCamDeviceClosed()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "onCamDeviceClosed"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onCamDeviceConnectFailed()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "onCamDeviceConnectFailed"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onCamDeviceConnected()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "onCamDeviceConnected"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onCamDeviceDisconnected()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "onCamDeviceDisconnected"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected prepareDepthCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewDepthCbImageFormat:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewDepthCbImageFormat:I

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungDepthAvailableDepthSizes(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNearestSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewDepthCbImageSize:Landroid/util/Size;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewDepthCbImageSize:Landroid/util/Size;

    :goto_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureDepthCbImageFormat:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureDepthCbImageFormat:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungDepthAvailableDepthSizes(I)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getNearestSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureDepthCbImageSize:Landroid/util/Size;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureDepthCbImageSize:Landroid/util/Size;

    :goto_1
    return-void
.end method

.method protected prepareFirstPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camCapability",
            "deviceConfiguration"
        }
    .end annotation

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImageFormat:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstUnCompPicCbImageFormat:I

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getFirstPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    :cond_1
    return-void
.end method

.method protected declared-synchronized preparePreviewBufferCallbackForwarder()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCbSize:Landroid/util/Size;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getPaddedNV21BufferSize(Landroid/util/Size;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;III)V

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCbSize:Landroid/util/Size;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getPaddedNV21BufferSize(Landroid/util/Size;)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "prepareBufferCallbackForwarder fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method protected preparePreviewCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceConfiguration"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewUpdateByHal:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCbSize:Landroid/util/Size;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCbSize:Landroid/util/Size;

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getSubPreviewCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCbSize:Landroid/util/Size;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCbSize:Landroid/util/Size;

    :goto_1
    return-void
.end method

.method protected preparePrivateSurfaces(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    const-string v0, "createPrivatePreviewSurface fail"

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v2, "preparePrivateSurfaces"

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_SENSOR_SENSOR_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getPublicSettingInternal(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createPrivatePreviewSurface(Landroid/view/Surface;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;I)Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPrivatePreviewSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getPreviewExtraSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getPreviewExtraSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->createPrivatePreviewSurface(Landroid/view/Surface;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;I)Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPrivateExtraSurface:Landroid/view/Surface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->joinInitializeMakerThread()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseMaker()V

    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPrivateExtraSurface:Landroid/view/Surface;

    :goto_0
    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->joinInitializeMakerThread()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->releaseMaker()V

    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method protected prepareRawPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camCapability",
            "deviceConfiguration"
        }
    .end annotation

    return-void
.end method

.method protected prepareSecondPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camCapability",
            "deviceConfiguration"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImageFormat:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondUnCompPicCbImageFormat:I

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getSecondPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbOption:Ljava/lang/Integer;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$2XRGsEA9VNC1QeyE-3X6AsBah9M;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$2XRGsEA9VNC1QeyE-3X6AsBah9M;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbOption:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondUnCompPicCbOption:Ljava/lang/Integer;

    return-void
.end method

.method protected prepareSurfaceConfig(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceConfiguration"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewSurfaceSize()Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "getSurfaceSize for previewSurface fail"

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setMainPreviewSurface(Landroid/view/Surface;)V

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getMainPreviewSurfaceUsageType()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewSurfaceOption:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewSurfaceOption:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewSurfaceOption:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit16 v1, v1, -0x401

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewSurfaceOption:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setMainPreviewSurfaceSize(Landroid/util/Size;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getPreviewExtraSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setPreviewExtraSurface(Landroid/view/Surface;)V

    return-void
.end method

.method protected prepareThirdPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceConfiguration"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbImageFormat:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdUnCompPicCbImageFormat:I

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->getThirdPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbOption:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$YwAHRUGIu5xdqm8-JbdLhNBG3VU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$YwAHRUGIu5xdqm8-JbdLhNBG3VU;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$AwOrvx8faLpll-c3CUMPJ7Rpqrw;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$AwOrvx8faLpll-c3CUMPJ7Rpqrw;-><init>(Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbOption:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdUnCompPicCbOption:Ljava/lang/Integer;

    return-void
.end method

.method protected prepareThumbnailCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungScalerAvailableThumbnailSizes()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getMinimumSizeInRatio(Landroid/util/Size;Ljava/util/Collection;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThumbnailCbImageSize:Landroid/util/Size;

    return-void
.end method

.method protected produceExtraPreviewFrame(Landroid/media/Image;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewData"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPrivateExtraSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewUpdateByHal:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mIsFirstExtraProduceFrame:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first produceExtraPreviewFrame : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->toString(Landroid/media/Image;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mIsFirstExtraProduceFrame:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPrivateExtraSurface:Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->produceFrameWithYuv420(Landroid/view/Surface;Landroid/media/Image;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "produceFrameWithNV21 for privateExtraSurface fail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected producePreviewFrame(Landroid/media/Image;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewData"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mIsFirstPreviewProduceFrame:Z

    if-eqz v1, :cond_0

    const-string v1, " first "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-producePreviewFrame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->isProducePreviewFrameEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->isRepeatingModeEnabled(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mIsFirstPreviewProduceFrame:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CAMFWKPI] first producePreviewFrame E - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->toString(Landroid/media/Image;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPrivatePreviewSurface:Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->produceFrameWithYuv420(Landroid/view/Surface;Landroid/media/Image;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "[CAMFWKPI] first producePreviewFrame X"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mIsFirstPreviewProduceFrame:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPrivatePreviewSurface:Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->produceFrameWithYuv420(Landroid/view/Surface;Landroid/media/Image;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "produceFrameWithNV21 for privatePreviewSurface fail - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    throw p0

    :cond_3
    :goto_4
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method protected releaseMaker()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "releaseMaker"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPrivatePreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "Deleting Private Surface"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPrivatePreviewSurface:Landroid/view/Surface;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->enableProducePreviewFrame(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->reset()V

    return-void
.end method

.method public declared-synchronized restartPreviewRepeating()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "restartPreviewRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->restartPreviewRepeating()I

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

    const-string v2, "restartPreviewRepeating fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final sendJpegThumbnail(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureData"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getCaptureResult()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/Size;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendJpegThumbnail - pictureData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Thumbnail size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->extractThumbnailFromJpeg(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    const/16 v4, 0x100

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$ThumbnailCallbackHelper;->onThumbnailTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Ljava/nio/ByteBuffer;ILandroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public declared-synchronized setAePreCaptureTrigger(I)V
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
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "setAePreCaptureTrigger(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setAePreCaptureTrigger(I)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "setAePreCaptureTrigger fail"

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAfAndAePreCaptureTrigger(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "afTrigger",
            "aePreCaptureTrigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "setAfAndAePreCaptureTrigger(%d)(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setAfAndAePreCaptureTrigger(II)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "setAfAndAePreCaptureTrigger fail"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I
    .locals 12
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "setMainPreviewCallback(%s)"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewCallbackForwarder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->compareState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCbSize:Landroid/util/Size;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getPaddedNV21BufferSize(Landroid/util/Size;)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;III)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->applyRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMainPreviewCallback - IllegalArgumentException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "prepareBufferCallbackForwarder fail"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Landroid/os/Handler;)V
    .locals 4
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setPictureCallback(%s)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PictureCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    return-void
.end method

.method public declared-synchronized setPrivateCommand(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateCommand"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "setPrivateCommand - %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "privateCommand"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->setPrivateCommandInternal(Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setRawPicCbConfig(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camCapability",
            "rawStreamConfigList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapability;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSingleCamSupportMultiRawStream()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0x20

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/StreamConfigUtils;->getFirstOverFitRawStreamConfig(Ljava/util/List;Landroid/util/Size;)Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstRawPicCbImageFormat:I

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;-><init>(Landroid/util/Size;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapabilityContainer$RawStreamConfig;->getDeviceId()I

    move-result p2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    if-nez v2, :cond_3

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstRawPicCbImageFormat:I

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;-><init>(Landroid/util/Size;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    const/4 v3, 0x2

    if-nez v2, :cond_4

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondRawPicCbImageFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondRawPicCbOption:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondRawPicCbOption:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondRawPicCbOption:Ljava/lang/Integer;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;-><init>(Landroid/util/Size;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    if-nez v2, :cond_2

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdRawPicCbImageFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdRawPicCbOption:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdRawPicCbOption:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdRawPicCbOption:Ljava/lang/Integer;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;-><init>(Landroid/util/Size;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdRawPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public setRawPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;Landroid/os/Handler;)V
    .locals 4
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setRawPictureCallback(%s)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RawPictureCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$RawPictureCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRawPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$RawPictureCallback;

    return-void
.end method

.method protected setRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camCapability"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mMainPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_SUB_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureSubPreviewCbUseRequestSampling()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCbFrameRate:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;->RATIO_MAX_PREVIEW_FPS:Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Lcom/samsung/android/app/galaxyraw/core2/PublicMetadata$FrameRate;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mPreviewUpdateByHal:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_PREVIEW_EXTRA_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getPreviewExtraSurface()Landroid/view/Surface;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z

    goto :goto_6

    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->preparePrivateSurfaces(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getPreviewExtraSurface()Landroid/view/Surface;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z

    :goto_6
    return-void
.end method

.method public declared-synchronized setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I
    .locals 12
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "setSubPreviewCallback(%s)"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewCallbackForwarder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->compareState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSubPreviewCbSize:Landroid/util/Size;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->getPaddedNV21BufferSize(Landroid/util/Size;)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;III)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_SUB_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->applyRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubPreviewCallback - IllegalArgumentException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "prepareBufferCallbackForwarder fail"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->REPEATING_KEY_SUB_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->enableRepeatingKey(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setThumbnailCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Landroid/os/Handler;)V
    .locals 4
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setThumbnailCallback(%s)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ThumbnailCallbackForwarder;->newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$ThumbnailCallbackForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;

    return-void
.end method

.method public declared-synchronized setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CaptureRequest key"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "setTrigger - %s : %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "setTrigger fail"

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final startBurstPictureRepeatingInternal(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "startBurstPictureRepeatingInternal - requestOptions %s"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungControlMaxBurstShotFps()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->MID:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->isGreaterThan(Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->FIRST_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isPicTypeRequested(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)Z

    move-result v0

    const/16 v1, 0x64

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->FIRST_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isPicTypeRequested(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->SECOND_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isPicTypeRequested(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->SECOND_UN_COMP:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isPicTypeRequested(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mThirdCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->estimateJpegBufferSize(Landroid/util/Size;I)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;III)V

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mSecondCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->estimateJpegBufferSize(Landroid/util/Size;I)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;III)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$BurstPictureBufferCallbackForwarder;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mBurstPictureBufferForwarderRef:Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mFirstCompPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageUtils;->estimateJpegBufferSize(Landroid/util/Size;I)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->prepareBufferCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/util/MutableReference;III)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "startBurstPictureRepeatingInternal - don\'t use BurstPictureBufferForwarder"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->startBurstPictureRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)I

    move-result p0
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "startBurstPictureRepeating fail"

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v0, "prepareBufferCallbackForwarder fail"

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public declared-synchronized startPreviewRepeating()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "[CAMFWKPI] startPreviewRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->preparePreviewBufferCallbackForwarder()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Landroid/util/Range;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->calculateRepeatingCount(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;->create()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->getRepeatingCount(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setMainPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->SUB_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->getRepeatingCount(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setSubPreviewCbRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->getRepeatingCount(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setMainPreviewRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_DEPTH:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->getRepeatingCount(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setPreviewDepthRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_AR_CORE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->getRepeatingCount(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setArCoreRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mRepeatingModeManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_EXTRA_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;->getRepeatingCount(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->setPreviewExtraRequestCnt(I)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt$Builder;->build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevicePreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->startPreviewRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)I

    move-result v0
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviewRepeating fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "startPreviewRepeating fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final stopBurstPictureRepeatingInternal()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "stopBurstPictureRepeatingInternal"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->stopBurstPictureRepeating()I

    move-result p0
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v1, "stopBurstPictureRepeating fail"

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public declared-synchronized stopRepeating()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "stopRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->getCamDeviceSessionState()Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->checkState(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;)Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->stopRepeating()V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;

    const-string v2, "stopRepeating fail"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
