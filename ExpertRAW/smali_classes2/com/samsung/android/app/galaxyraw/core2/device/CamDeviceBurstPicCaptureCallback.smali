.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CamDeviceBurstPicCaptureCallback.java"


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private final mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

.field private final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private final mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

.field private final mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mIsCaptureRequestApplied:Z

.field private final mPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camDeviceImpl",
            "burstPictureCallback",
            "captureRequest"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const-string v0, "camDeviceImpl"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "burstPictureCallback"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "captureRequest"

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTAG()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getLatestPreviewStateCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.method private discardFreeBuffers()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getLatestBurstRequestOptions()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "discardFreeBuffers - requestOptions is null"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isThumbnailRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getOriginImageReader()Landroid/media/ImageReader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/ImageReader;->discardFreeBuffers()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$pRUxLqJREXnRXUfHGzPTZAzLLMk;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$pRUxLqJREXnRXUfHGzPTZAzLLMk;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$discardFreeBuffers$8$CamDeviceBurstPicCaptureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isPicTypeRequested(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "discardFreeBuffers - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getOriginImageReader()Landroid/media/ImageReader;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/ImageReader;->discardFreeBuffers()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCaptureCompleted$0$CamDeviceBurstPicCaptureCallback(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;->onBurstRequestApplied(I)V

    return-void
.end method

.method public synthetic lambda$onCaptureCompleted$1$CamDeviceBurstPicCaptureCallback(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V
    .locals 0

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->setPictureMetaData(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->sendPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method

.method public synthetic lambda$onCaptureCompleted$2$CamDeviceBurstPicCaptureCallback(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;->onPreviewCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method

.method public synthetic lambda$onCaptureFailed$3$CamDeviceBurstPicCaptureCallback(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;->onBurstRequestError(Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public synthetic lambda$onCaptureProgressed$4$CamDeviceBurstPicCaptureCallback(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;->onPreviewPartialCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method

.method public synthetic lambda$onCaptureProgressed$5$CamDeviceBurstPicCaptureCallback(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;->onPreviewPartialCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method

.method public synthetic lambda$onCaptureSequenceAborted$6$CamDeviceBurstPicCaptureCallback(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;->onBurstRequestRemoved(I)V

    return-void
.end method

.method public synthetic lambda$onCaptureSequenceCompleted$7$CamDeviceBurstPicCaptureCallback(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;->onBurstRequestRemoved(I)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v1, v4

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v1, v4

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v4, 0x4

    aput-object p1, v1, v4

    const-string p1, "BurstPicCaptureCallback onCaptureCompleted - session %s, request %s, timestamp %s, sequenceId %d, frameNumber %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mIsCaptureRequestApplied:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$XDBcRQ0z3Dt2cwnew2NTANmByg8;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$XDBcRQ0z3Dt2cwnew2NTANmByg8;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "BurstPicCaptureCallback onCaptureCompleted - can\'t post BurstPictureCallback onBurstRequestApplied"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mIsCaptureRequestApplied:Z

    :cond_2
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "BurstPicCaptureCallback onCaptureCompleted - requestInfo is null for timeStamp %d"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTimestampToPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    invoke-direct {v1, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;-><init>(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$hNMu4GQUcW20j0DkmY9vQoBWBCo;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$hNMu4GQUcW20j0DkmY9vQoBWBCo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p2, "BurstPicCaptureCallback onCaptureCompleted - timestamp is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$sXKYKLXaG6pnMuK-J8g3S6HnhXI;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$sXKYKLXaG6pnMuK-J8g3S6HnhXI;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "session",
            "request",
            "failure"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    const-string p1, "BurstPicCaptureCallback onCaptureFailed - session %s, request %s, sequenceId %d, frameNumber %d, reason %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$dZ25iwxSJuQysL-SlNqFYJuksLQ;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$dZ25iwxSJuQysL-SlNqFYJuksLQ;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "BurstPicCaptureCallback onCaptureFailed - can\'t post BurstPictureCallback onBurstRequestError"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "partialResult"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureShutterNotificationAvailable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$vmpnjUR8N5XKK5MzOFTNetvqoT0;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$vmpnjUR8N5XKK5MzOFTNetvqoT0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHUTTER_NOTIFICATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mPreviewStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$JCvu9CZw6W5_JHuMG0yv_BqH-hg;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$JCvu9CZw6W5_JHuMG0yv_BqH-hg;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "session",
            "sequenceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string p1, "BurstPicCaptureCallback onCaptureSequenceAborted - session %s, sequenceId %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$lj-r93-pZomabYlMwIq5BAwKeFI;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$lj-r93-pZomabYlMwIq5BAwKeFI;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "BurstPicCaptureCallback onCaptureSequenceAborted - can\'t post BurstPictureCallback onBurstRequestRemoved"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "session",
            "sequenceId",
            "frameNumber"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v1, p3

    const-string p1, "BurstPicCaptureCallback onCaptureSequenceCompleted - session %s, sequenceId %d, frameNumber %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$N42d-GOSilQGoJCJW3dQz0Jh3eU;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$N42d-GOSilQGoJCJW3dQz0Jh3eU;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p2, "BurstPicCaptureCallback onCaptureSequenceCompleted - can\'t post BurstPictureCallback onBurstRequestRemoved"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;->HIGH:Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils;->isLessThan(Lcom/samsung/android/app/galaxyraw/core2/util/MemoryUtils$MemoryLevel;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->discardFreeBuffers()V

    :cond_2
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "timestamp",
            "frameNumber"
        }
    .end annotation

    return-void
.end method
