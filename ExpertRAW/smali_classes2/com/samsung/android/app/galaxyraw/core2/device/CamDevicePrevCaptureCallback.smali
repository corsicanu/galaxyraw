.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;
.super Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;
.source "CamDevicePrevCaptureCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback<",
        "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCaptureRequestApplied:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceImpl",
            "previewStateCallback"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCaptureCompleted$0(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;->onPreviewRequestApplied(I)V

    return-void
.end method

.method static synthetic lambda$onCaptureFailed$2(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;->onPreviewRequestError(Landroid/hardware/camera2/CaptureFailure;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onCaptureSequenceAborted$4(ILcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;->onPreviewRequestRemoved(I)V

    return-void
.end method

.method static synthetic lambda$onCaptureSequenceCompleted$5(ILcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;->onPreviewRequestRemoved(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCaptureCompleted$1$CamDevicePrevCaptureCallback(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;->onPreviewCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    return-void
.end method

.method public synthetic lambda$onCaptureProgressed$3$CamDevicePrevCaptureCallback(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/CamCapability;->getSamsungFeatureShutterNotificationAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;->onPreviewPartialCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_SHUTTER_NOTIFICATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;->onPreviewPartialCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4
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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setLatestPreviewTimestamp(J)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->getForwardCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->mIsCaptureRequestApplied:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "PreviewStateCallback onPreviewRequestApplied - sequenceId %d"

    invoke-static {p2, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->mIsCaptureRequestApplied:Z

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$ZZvgD0NeCIYm6DmUYNrpDnJ0JlI;

    invoke-direct {v0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$ZZvgD0NeCIYm6DmUYNrpDnJ0JlI;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$VFFx94QKwWh49npVFpr9L4GS2_U;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$VFFx94QKwWh49npVFpr9L4GS2_U;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "failure"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

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

    const-string p1, "PrevCaptureCallback onCaptureFailed - session %s, request %s, sequenceId %d, frameNumber %d, reason %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->getForwardCallback()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$kaZSHA5RKqMgMdB9qqORY_Nn5Js;

    invoke-direct {p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$kaZSHA5RKqMgMdB9qqORY_Nn5Js;-><init>(Landroid/hardware/camera2/CaptureFailure;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->getForwardCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$AUAEZAdrI9KPEHr8P_kWNuKAihw;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$AUAEZAdrI9KPEHr8P_kWNuKAihw;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

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

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "PrevCaptureCallback onCaptureSequenceAborted - session %s, sequenceId %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->getForwardCallback()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$G6ghPxE7Ahr5LTQKF0QRQJlFJic;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$G6ghPxE7Ahr5LTQKF0QRQJlFJic;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

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

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v1, p3

    const-string p1, "PrevCaptureCallback onCaptureSequenceCompleted - session %s, sequenceId %d, frameNumber %d"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->getForwardCallback()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$ZnYsuT-k_ehpjak5ZAu9U2D8unk;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$ZnYsuT-k_ehpjak5ZAu9U2D8unk;-><init>(I)V

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
