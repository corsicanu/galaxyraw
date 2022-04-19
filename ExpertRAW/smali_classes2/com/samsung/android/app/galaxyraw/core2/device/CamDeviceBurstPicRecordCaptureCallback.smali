.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CamDeviceBurstPicRecordCaptureCallback.java"


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private final mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

.field private final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private final mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

.field private final mCaptureRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCaptureRequestApplied:Z

.field private final mRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;Ljava/util/List;)V
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
            "captureRequestList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const-string v0, "camDeviceImpl"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "burstPictureCallback"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "captureRequestList"

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTAG()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getLatestRecordStateCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCaptureRequestList:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$onCaptureCompleted$1(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;->onRecordRequestApplied(I)V

    return-void
.end method

.method static synthetic lambda$onCaptureFailed$5(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;->onRecordRequestError(Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method static synthetic lambda$onCaptureSequenceAborted$10(ILcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;->onRecordRequestRemoved(I)V

    return-void
.end method

.method static synthetic lambda$onCaptureSequenceCompleted$13(ILcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;->onRecordRequestRemoved(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCaptureCompleted$0$CamDeviceBurstPicRecordCaptureCallback(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;->onBurstRequestApplied(I)V

    return-void
.end method

.method public synthetic lambda$onCaptureCompleted$2$CamDeviceBurstPicRecordCaptureCallback(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V
    .locals 0

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->setPictureMetaData(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->sendPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method

.method public synthetic lambda$onCaptureCompleted$3$CamDeviceBurstPicRecordCaptureCallback(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;->onRecordCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method

.method public synthetic lambda$onCaptureFailed$4$CamDeviceBurstPicRecordCaptureCallback(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;->onBurstRequestError(Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public synthetic lambda$onCaptureProgressed$6$CamDeviceBurstPicRecordCaptureCallback(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;->onRecordPartialCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method

.method public synthetic lambda$onCaptureProgressed$7$CamDeviceBurstPicRecordCaptureCallback(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;->onRecordPartialCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method

.method public synthetic lambda$onCaptureSequenceAborted$8$CamDeviceBurstPicRecordCaptureCallback(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$onCaptureSequenceAborted$9$CamDeviceBurstPicRecordCaptureCallback(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;->onBurstRequestRemoved(I)V

    return-void
.end method

.method public synthetic lambda$onCaptureSequenceCompleted$11$CamDeviceBurstPicRecordCaptureCallback(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic lambda$onCaptureSequenceCompleted$12$CamDeviceBurstPicRecordCaptureCallback(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mBurstPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

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

    const-string p1, "BurstPicRecordCaptureCallback onCaptureCompleted - session %s, request %s, timestamp %s, sequenceId %d, frameNumber %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mIsCaptureRequestApplied:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$qFocDuiXF6v3NL_O9m9RQFTrT9M;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$qFocDuiXF6v3NL_O9m9RQFTrT9M;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "BurstPicRecordCaptureCallback onCaptureCompleted - can\'t post BurstPictureCallback onBurstRequestApplied"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$jQmvjQd3rv_xwgRyb3ZcKywg6tQ;

    invoke-direct {v0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$jQmvjQd3rv_xwgRyb3ZcKywg6tQ;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mIsCaptureRequestApplied:Z

    :cond_2
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "BurstPicRecordCaptureCallback onCaptureCompleted - requestInfo is null for timeStamp %d"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTimestampToPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    invoke-direct {v1, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;-><init>(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$YrCWd99ShqLFhYTqVsPmOWO0oj0;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$YrCWd99ShqLFhYTqVsPmOWO0oj0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p2, "BurstPicRecordCaptureCallback onCaptureCompleted - timestamp is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$qZWGvmt1ehDI9UCd5u6_41vWrXA;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$qZWGvmt1ehDI9UCd5u6_41vWrXA;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;Landroid/hardware/camera2/TotalCaptureResult;)V

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

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

    const-string p1, "BurstPicRecordCaptureCallback onCaptureFailed - session %s, request %s, sequenceId %d, frameNumber %d, reason %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$Wrf-nAwLJLqWzZUbv21H-eExxjo;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$Wrf-nAwLJLqWzZUbv21H-eExxjo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p2, "BurstPicRecordCaptureCallback onCaptureFailed - can\'t post BurstPictureCallback onBurstRequestError"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$X509j5WL1XAy2tbyLqsMhhYS7R0;

    invoke-direct {p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$X509j5WL1XAy2tbyLqsMhhYS7R0;-><init>(Landroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureShutterNotificationAvailable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$wPhOnw0ujxStjigDbIWxfv7ygE0;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$wPhOnw0ujxStjigDbIWxfv7ygE0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V

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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$Hexq8k6OQCxxGj49QJ6se2ASMOs;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$Hexq8k6OQCxxGj49QJ6se2ASMOs;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

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

    const-string p1, "BurstPicRecordCaptureCallback onCaptureSequenceAborted - session %s, sequenceId %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCaptureRequestList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$SjDDKNf-5XvGxaNmQX3ntz0Sbro;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$SjDDKNf-5XvGxaNmQX3ntz0Sbro;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$-hXF4AYXhMsCDKRtHqrsy0UkKBw;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$-hXF4AYXhMsCDKRtHqrsy0UkKBw;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "BurstPicRecordCaptureCallback onCaptureSequenceAborted - can\'t post BurstPictureCallback onBurstRequestRemoved"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$ctyDtVCuMXAErNU2oizXktBirqs;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$ctyDtVCuMXAErNU2oizXktBirqs;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

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

    const-string p1, "BurstPicRecordCaptureCallback onCaptureSequenceCompleted - session %s, sequenceId %d, frameNumber %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCaptureRequestList:Ljava/util/List;

    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$C42BjoPIexj5a2LYbOAkA09rPuA;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$C42BjoPIexj5a2LYbOAkA09rPuA;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;)V

    invoke-interface {p1, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$3ARKOQvrHrPmV-itpmlZgrzOnjo;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$3ARKOQvrHrPmV-itpmlZgrzOnjo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p3, "BurstPicRecordCaptureCallback onCaptureSequenceCompleted - can\'t post BurstPictureCallback onBurstRequestRemoved"

    invoke-static {p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;->mRecordStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$E0IAu_tinXzardeafOfmd50l9SQ;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicRecordCaptureCallback$E0IAu_tinXzardeafOfmd50l9SQ;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

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
