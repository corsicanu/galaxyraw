.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CamDeviceMultiPicCaptureCallback.java"


# static fields
.field private static final SHUTTER_CALLBACK_LATCH_WAIT_TIMEOUT_S:I = 0x5


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private final mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

.field private mIsShutterCallbackForwarded:Z

.field private final mMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

.field private mPendingLastCaptureCompletedArgs:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceImpl",
            "multiPictureCallback"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const-string v0, "camDeviceImpl"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "multiPictureCallback"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTAG()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCaptureCompleted$0$CamDeviceMultiPicCaptureCallback(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V
    .locals 0

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;->setPictureMetaData(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->sendPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;)V

    return-void
.end method

.method public synthetic lambda$onCaptureFailed$1$CamDeviceMultiPicCaptureCallback(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getRequestIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getTotalRequestCount()I

    move-result p2

    invoke-interface {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;->onError(Landroid/hardware/camera2/CaptureFailure;II)V

    return-void
.end method

.method public synthetic lambda$onCaptureProgressed$2$CamDeviceMultiPicCaptureCallback(Ljava/lang/Long;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;->onShutter(Ljava/lang/Long;)V

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public synthetic lambda$onCaptureProgressed$3$CamDeviceMultiPicCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession;Landroid/util/Pair;)V
    .locals 1

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public synthetic lambda$onCaptureStarted$4$CamDeviceMultiPicCaptureCallback(JLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;->onShutter(Ljava/lang/Long;)V

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public synthetic lambda$onCaptureStarted$5$CamDeviceMultiPicCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession;Landroid/util/Pair;)V
    .locals 1

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "MultiPicCaptureCallback onCaptureCompleted - session %s, request %s, timestamp %s, sequenceId %d, frameNumber %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "MultiPicCaptureCallback onCaptureCompleted - requestInfo is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getRequestIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getTotalRequestCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mIsShutterCallbackForwarded:Z

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v0, "MultiPicCaptureCallback onCaptureCompleted - forwarding shutter callback isn\'t done yet, defer this callback operation later"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->w(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mPendingLastCaptureCompletedArgs:Landroid/util/Pair;

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTimestampToPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    invoke-direct {v1, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;-><init>(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    invoke-interface {v0, p2, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureData;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$lSbrXCYub7S0Joxh-mmvS8K0T2E;

    invoke-direct {v0, p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$lSbrXCYub7S0Joxh-mmvS8K0T2E;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "MultiPicCaptureCallback onCaptureCompleted - timestamp is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

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

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x4

    aput-object p1, v1, v2

    const-string p1, "MultiPicCaptureCallback onCaptureFailed - session %s, request %s, sequenceId %d, frameNumber %d, reason %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "MultiPicCaptureCallback onCaptureFailed - requestInfo is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendPictureHandler()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$n9Yz4nn0G_4spcLmiODswOffFdc;

    invoke-direct {v0, p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$n9Yz4nn0G_4spcLmiODswOffFdc;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "MultiPicCaptureCallback onCaptureFailed - can\'t post PictureCallback onError"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 8
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "MultiPicCaptureCallback onCaptureProgressed - session %s, request %s, sequenceId %d, frameNumber %d, shutter %b"

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v6, 0x2

    aput-object p2, v3, v6

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v6, 0x3

    aput-object p2, v3, v6

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHUTTER_NOTIFICATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    const/4 v6, 0x4

    aput-object p2, v3, v6

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureShutterNotificationAvailable()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHUTTER_NOTIFICATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, p2}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendShutterHandler()Landroid/os/Handler;

    move-result-object p2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureShutterNotiTimestampAvailable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "MultiPicCaptureCallback onCaptureProgressed timestamp %d(ns)"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {p3, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    if-eqz p2, :cond_1

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ZicTr0aRAmYRLOS0GgL59oTif5U;

    invoke-direct {v1, p0, v0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ZicTr0aRAmYRLOS0GgL59oTif5U;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;Ljava/lang/Long;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x5

    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p3, "MultiPicCaptureCallback onCaptureProgressed - can\'t wait for shutter callback is done for %d sec"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p2, p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p3, "MultiPicCaptureCallback onCaptureProgressed - getting interrupt during wait for shutter callback is done"

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p3, "MultiPicCaptureCallback onCaptureProgressed - can\'t post PictureCallback onShutter"

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    monitor-enter p0

    :try_start_1
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mIsShutterCallbackForwarded:Z

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mPendingLastCaptureCompletedArgs:Landroid/util/Pair;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mPendingLastCaptureCompletedArgs:Landroid/util/Pair;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$AiHOOHljJVwb7QcH4QQFuqJD74A;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$AiHOOHljJVwb7QcH4QQFuqJD74A;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "session",
            "sequenceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

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

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "MultiPicCaptureCallback onCaptureSequenceAborted - session %s, sequenceId %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "sequenceId",
            "frameNumber"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

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

    const/4 v3, 0x2

    aput-object p1, v1, v3

    const-string p1, "MultiPicCaptureCallback onCaptureSequenceCompleted - session %s, sequenceId %d, frameNumber %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mMultiPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    invoke-interface {p0, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;->onPictureSequenceCompleted(IJ)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "session",
            "request",
            "timestamp",
            "frameNumber"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "MultiPicCaptureCallback onCaptureStarted - session %s, request %s, timestamp %d, frameNumber %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const/4 p6, 0x3

    aput-object p5, v2, p6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p5}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureShutterNotificationAvailable()Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_3

    iget-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object p5

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p1, "MultiPicCaptureCallback onCaptureStarted - requestInfo is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p6, "MultiPicCaptureCallback onCaptureStarted - requestIndex %d/%d"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getRequestIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getTotalRequestCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p5, p6, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getRequestIndex()I

    move-result p5

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;->getTotalRequestCount()I

    move-result p2

    if-ne p5, p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSendShutterHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p5, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    if-eqz p2, :cond_1

    new-instance p6, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$xB4fgI6ptF6wW68noc-TzoN8iqE;

    invoke-direct {p6, p0, p3, p4, p5}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$xB4fgI6ptF6wW68noc-TzoN8iqE;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p2, p6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/16 p2, 0x5

    :try_start_0
    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p5, p2, p3, p4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p3, "MultiPicCaptureCallback onCaptureStarted - can\'t wait for shutter callback is done for %d sec"

    new-array p4, v5, [Ljava/lang/Object;

    const/4 p5, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p4, v4

    invoke-static {p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p3, "MultiPicCaptureCallback onCaptureStarted - getting interrupt during wait for shutter callback is done"

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string p3, "MultiPicCaptureCallback onCaptureStarted - can\'t post PictureCallback onShutter"

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_0
    monitor-enter p0

    :try_start_1
    iput-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mIsShutterCallbackForwarded:Z

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mPendingLastCaptureCompletedArgs:Landroid/util/Pair;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->mPendingLastCaptureCompletedArgs:Landroid/util/Pair;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ty6vquUhQOp_ZTCol-bNKIMSfH0;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$ty6vquUhQOp_ZTCol-bNKIMSfH0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
