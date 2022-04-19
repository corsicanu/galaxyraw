.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;
.super Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;
.source "CamDeviceRepeatingStatePreview.java"


# static fields
.field private static final WAITING_ON_READY_TIMEOUT:I = 0x64


# instance fields
.field private final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private final mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "RepeatingPreview"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    return-void
.end method

.method public static synthetic lambda$J2uISxxDLf4mjIJ423WGFLJpzrA(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic lambda$MRM4Te3UmsjwZqZZxLCiDtnFKDE(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic lambda$setTrigger$0(Ljava/util/Map;Ljava/lang/Object;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 0

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTriggerInternal(Ljava/util/Map;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "metaMap",
            "isHighSpeedRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getLatestPreviewStateCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v3, "can\'t find previewStateCallback on current session"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->createPreviewCaptureRequestList(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->DEBUG:Z

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CaptureRequest;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->dumpCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_0
    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-direct {p2, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevSingleCaptureCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->registerCamDeviceCaptureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;)V

    return p1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1
.end method


# virtual methods
.method public applySettings()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "applySettings"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->restartPreviewRepeatingInternal()I

    move-result p0

    return p0
.end method

.method public final getId()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public restartPreviewRepeating()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "restartPreviewRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "AbortCapture"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCamDeviceReadyLatchEnable()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "restartPreviewRepeating - Interrupted while waiting latch."

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->restartPreviewRepeatingInternal()I

    move-result p0

    return p0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v0
.end method

.method public setAePreCaptureTrigger(I)I
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
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setAePreCaptureTrigger(%d)"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->setTriggerInternal(Ljava/util/Map;Z)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v0, "sessionMode is highSpeed"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public setAfAndAePreCaptureTrigger(II)I
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
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "setAfAndAePreCaptureTrigger(%d)(%d)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v0

    if-eq v4, v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->setTriggerInternal(Ljava/util/Map;Z)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string p2, "sessionMode is highSpeed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public setAfTrigger(I)I
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
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setAfTrigger(%d)"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->setTriggerInternal(Ljava/util/Map;Z)I

    move-result p0

    return p0
.end method

.method public setParameters(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDevice",
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "setParameters(%s)"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;->applyToCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1
.end method

.method public setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)I
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
            "TT;>;TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "setTrigger - %s : %s"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v3, "setTrigger - empty"

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$PXmuIfWL8LePpbI34o3PyHz-V34;

    invoke-direct {v3, v2, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$PXmuIfWL8LePpbI34o3PyHz-V34;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result p1

    if-ne v1, p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->setTriggerInternal(Ljava/util/Map;Z)I

    move-result p0

    return p0
.end method

.method public startBurstPicRecordRepeating(Ljava/util/List;)I
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestOptionsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getRecordRequestBuilderMap()Ljava/util/Map;

    move-result-object v12

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v12, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getFirstRecordSurface()Landroid/view/Surface;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSecondRecordSurface()Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v3, "recordSurface doesn\'t exist"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getBurstPictureCbMappingTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v5, "can\'t find burst picture callback on current session"

    invoke-static {v13, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureState()I

    move-result v4

    const/4 v14, 0x1

    if-eq v14, v4, :cond_a

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v4

    if-nez v4, :cond_9

    :try_start_0
    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_REQUEST_BUILD_NUMBER:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getAndIncreaseRequestBuildNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v12, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move v8, v14

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    if-gt v8, v9, :cond_6

    add-int/lit8 v5, v8, -0x1

    move-object/from16 v6, p1

    :try_start_1
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v16

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getOutputConfigurationList()Ljava/util/List;

    move-result-object v17

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v18

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v19

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v20
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v5

    move-object v15, v5

    move-object v5, v12

    move-object/from16 v6, v16

    move-object v14, v7

    move-object/from16 v7, v17

    move/from16 v17, v8

    move-object v8, v3

    move/from16 v22, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v12

    move-object v12, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v14

    move-object v14, v11

    move-object/from16 v11, v20

    :try_start_3
    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->addTarget(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v10
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getFirstRecordSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iget-object v5, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$J2uISxxDLf4mjIJ423WGFLJpzrA;

    invoke-direct {v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$J2uISxxDLf4mjIJ423WGFLJpzrA;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSecondRecordSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iget-object v5, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$J2uISxxDLf4mjIJ423WGFLJpzrA;

    invoke-direct {v6, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$J2uISxxDLf4mjIJ423WGFLJpzrA;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v15, v10}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->submitOptions(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore oldOption key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v6, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->getRequestedTargetCnt()I

    move-result v5

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isThumbnailRequested()Z

    move-result v6

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isThumbnailRequested()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailCbMappingTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v15}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isPicDepthRequested()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthCbMappingTable()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    invoke-direct {v7, v13, v4, v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V

    move-object v4, v9

    move/from16 v8, v17

    move-object/from16 v20, v2

    move-object v2, v9

    move/from16 v9, v22

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;II)V

    invoke-interface {v12, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->DEBUG:Z

    if-eqz v2, :cond_5

    invoke-static {v11}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->dumpCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_5
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    move-object v4, v15

    move-object v6, v3

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getFirstRecordSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iget-object v4, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;

    invoke-direct {v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSecondRecordSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iget-object v4, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;

    invoke-direct {v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v8, v17, 0x1

    move-object v7, v10

    move-object v10, v12

    move-object v11, v14

    move-object v4, v15

    move-object/from16 v12, v18

    move-object/from16 v2, v20

    move/from16 v9, v22

    const/4 v14, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v4, v15

    move-object v15, v10

    goto/16 :goto_10

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v15

    move-object v15, v10

    goto/16 :goto_d

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v15

    move-object v15, v10

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v21, v15

    move-object v15, v10

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v15, v5

    move-object/from16 v19, v7

    :goto_5
    move-object v2, v0

    move-object v4, v15

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v15, v5

    move-object/from16 v19, v7

    :goto_6
    move-object v2, v0

    move-object/from16 v21, v15

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v15, v5

    move-object/from16 v19, v7

    :goto_7
    move-object v2, v0

    move-object/from16 v21, v15

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v15, v5

    move-object/from16 v19, v7

    :goto_8
    move-object v2, v0

    move-object/from16 v21, v15

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v19, v7

    move-object v2, v0

    :goto_9
    move-object/from16 v15, v19

    goto/16 :goto_10

    :catch_9
    move-exception v0

    move-object/from16 v19, v7

    move-object v2, v0

    move-object/from16 v21, v4

    :goto_a
    move-object/from16 v15, v19

    goto/16 :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v19, v7

    move-object v2, v0

    move-object/from16 v21, v4

    :goto_b
    move-object/from16 v15, v19

    goto/16 :goto_e

    :catch_b
    move-exception v0

    move-object/from16 v19, v7

    move-object v2, v0

    move-object/from16 v21, v4

    :goto_c
    move-object/from16 v15, v19

    goto/16 :goto_f

    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v19, v7

    move-object v14, v11

    :try_start_5
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-direct {v2, v5, v13, v14}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicRecordCaptureCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;Ljava/util/List;)V

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v6, v20

    invoke-virtual {v6, v14, v2, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v19, :cond_7

    if-eqz v4, :cond_7

    move-object/from16 v15, v19

    iget-object v5, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v7

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    move-object v6, v3

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getFirstRecordSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iget-object v4, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;

    invoke-direct {v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSecondRecordSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iget-object v4, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;

    invoke-direct {v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getRepeatingBurstPicRecord()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setRepeatingState(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;)V

    return v2

    :catchall_4
    move-exception v0

    move-object/from16 v15, v19

    move-object v2, v0

    goto :goto_10

    :catch_c
    move-exception v0

    move-object/from16 v15, v19

    move-object v2, v0

    move-object/from16 v21, v4

    goto :goto_d

    :catch_d
    move-exception v0

    move-object/from16 v15, v19

    move-object v2, v0

    move-object/from16 v21, v4

    goto :goto_e

    :catch_e
    move-exception v0

    move-object/from16 v15, v19

    move-object v2, v0

    move-object/from16 v21, v4

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x0

    const/4 v15, 0x0

    goto :goto_10

    :catch_f
    move-exception v0

    move-object v2, v0

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_d
    :try_start_6
    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v4, v5, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v4

    :catch_10
    move-exception v0

    move-object v2, v0

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_e
    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v4

    :catch_11
    move-exception v0

    move-object v2, v0

    const/4 v15, 0x0

    const/16 v21, 0x0

    :goto_f
    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v21

    :goto_10
    if-eqz v15, :cond_8

    if-eqz v4, :cond_8

    iget-object v5, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v7

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    move-object v6, v3

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getFirstRecordSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iget-object v4, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;

    invoke-direct {v5, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSecondRecordSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v3, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;

    invoke-direct {v4, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$MRM4Te3UmsjwZqZZxLCiDtnFKDE;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_8
    throw v2

    :cond_9
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v3, "sessionMode is not default"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v3, "pending capture request exist"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v1
.end method

.method public startBurstPictureRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)I
    .locals 22
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
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const-string v3, "startBurstPictureRepeating requestOptions : %s"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v12

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v12, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestBuilderMap()Ljava/util/Map;

    move-result-object v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getBurstPictureCbMappingTable()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v4, "can\'t find burst picture callback on current session"

    invoke-static {v13, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureState()I

    move-result v2

    if-eq v11, v2, :cond_6

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isThumbnailRequested()Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailCbMappingTable()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v5, "can\'t find thumbnail callback on current session"

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object v15, v14

    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_REQUEST_BUILD_NUMBER:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getAndIncreaseRequestBuildNumber()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getOutputConfigurationList()Ljava/util/List;

    move-result-object v5

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v2, p1

    move-object v6, v12

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->addTarget(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v10, v2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->submitOptions(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore oldOption key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v7, v8, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->getRequestedTargetCnt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isThumbnailRequested()Z

    move-result v18

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    invoke-direct {v6, v13, v15, v14}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;II)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->DEBUG:Z

    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->dumpCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_2
    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-direct {v3, v5, v13, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;Landroid/hardware/camera2/CaptureRequest;)V

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v5

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v6

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v7

    move-object/from16 v2, p1

    move-object v4, v12

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    :cond_3
    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2, v11}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getRepeatingStatePicture()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setRepeatingState(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;)V

    return v0

    :catchall_0
    move-exception v0

    move-object v14, v2

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v14, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v14, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v14, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_2
    :try_start_2
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    :goto_3
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v2

    :catch_5
    move-exception v0

    :goto_4
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    if-eqz v14, :cond_4

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v4

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v5

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v6

    move-object/from16 v1, p1

    move-object v3, v12

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    :cond_4
    throw v0

    :cond_5
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v2, "sessionMode is not default"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v2, "pending capture request exist"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0
.end method

.method public stopRepeating()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "stopRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getRepeatingStateStopped()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setRepeatingState(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;)V

    :try_start_0
    const-string v1, "AbortCapture"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v0
.end method

.method public takeMultiPicture(Ljava/util/List;)I
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestOptionsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestBuilderMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMultiPictureCbMappingTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v5, "can\'t find multi picture callback on current session"

    invoke-static {v12, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureState()I

    move-result v4

    const/4 v13, 0x1

    if-eq v13, v4, :cond_9

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewRequestCnt()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v4

    :goto_0
    move-object v15, v4

    goto :goto_1

    :cond_0
    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewCbRequestCnt()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_1
    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getLatestPreviewTimestamp()J

    move-result-wide v4

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takeMultiPicture - latestPreviewTimestamp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :try_start_0
    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_REQUEST_BUILD_NUMBER:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v8, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getAndIncreaseRequestBuildNumber()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v3, v6, v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_LATEST_PREVIEW_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v6, v7, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object v10
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move v9, v13

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_2
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-gt v9, v4, :cond_6

    add-int/lit8 v4, v9, -0x1

    move-object/from16 v7, p1

    :try_start_2
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v16

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getOutputConfigurationList()Ljava/util/List;

    move-result-object v17

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v18

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v19

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v20
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, v6

    move-object v5, v3

    move-object v14, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object v13, v8

    move-object v8, v15

    move/from16 v23, v9

    move-object/from16 v9, v18

    move-object/from16 v16, v13

    move-object v13, v10

    move-object/from16 v10, v19

    move-object/from16 v24, v3

    move-object v3, v11

    move-object/from16 v11, v20

    :try_start_4
    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->addTarget(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v4
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v14, v4}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->submitOptions(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-boolean v7, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->DEBUG:Z

    if-eqz v7, :cond_2

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->dumpCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    invoke-virtual {v14}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->getRequestedTargetCnt()I

    move-result v17

    const/16 v18, 0x0

    new-instance v8, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    invoke-virtual {v14}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isThumbnailRequested()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v9}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailCbMappingTable()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v14}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isPicDepthRequested()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v10}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthCbMappingTable()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    invoke-direct {v8, v12, v9, v10}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    move-object/from16 v16, v7

    move-object/from16 v19, v8

    move/from16 v20, v23

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;II)V

    invoke-interface {v13, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restore oldOption key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v8, v9, v6}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v8

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v10

    move-object v5, v14

    move-object v7, v15

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v9, v23, 0x1

    move-object v11, v3

    move-object v8, v4

    move-object v10, v13

    move-object v5, v14

    move-object/from16 v3, v24

    const/4 v13, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v5, v14

    move-object v14, v4

    goto/16 :goto_15

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v14

    move-object v14, v4

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v14

    move-object v14, v4

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v22, v14

    move-object v14, v4

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v14, v6

    move-object/from16 v16, v8

    :goto_6
    move-object v2, v0

    move-object v5, v14

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v14, v6

    move-object/from16 v16, v8

    :goto_7
    move-object v2, v0

    move-object/from16 v22, v14

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v14, v6

    move-object/from16 v16, v8

    :goto_8
    move-object v2, v0

    move-object/from16 v22, v14

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v14, v6

    move-object/from16 v16, v8

    :goto_9
    move-object v2, v0

    move-object/from16 v22, v14

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v16, v8

    move-object v2, v0

    :goto_a
    move-object/from16 v14, v16

    goto/16 :goto_15

    :catch_9
    move-exception v0

    move-object/from16 v16, v8

    move-object v2, v0

    move-object/from16 v22, v5

    :goto_b
    move-object/from16 v14, v16

    goto/16 :goto_12

    :catch_a
    move-exception v0

    move-object/from16 v16, v8

    move-object v2, v0

    move-object/from16 v22, v5

    :goto_c
    move-object/from16 v14, v16

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object/from16 v16, v8

    move-object v2, v0

    move-object/from16 v22, v5

    :goto_d
    move-object/from16 v14, v16

    goto/16 :goto_14

    :cond_6
    move-object/from16 v24, v3

    move-object/from16 v16, v8

    move-object v3, v11

    :try_start_6
    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_LATEST_PREVIEW_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v8, v24

    invoke-static {v8, v4, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-direct {v4, v6, v12}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;)V

    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureCallbackHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v16, :cond_7

    if-eqz v5, :cond_7

    move-object/from16 v14, v16

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v8

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v10

    move-object v7, v15

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    :cond_7
    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    return v2

    :catchall_4
    move-exception v0

    move-object/from16 v14, v16

    goto :goto_e

    :catch_c
    move-exception v0

    move-object/from16 v14, v16

    goto :goto_f

    :catch_d
    move-exception v0

    move-object/from16 v14, v16

    goto :goto_10

    :catch_e
    move-exception v0

    move-object/from16 v14, v16

    goto :goto_11

    :catchall_5
    move-exception v0

    move-object v14, v8

    :goto_e
    move-object v2, v0

    goto :goto_15

    :catch_f
    move-exception v0

    move-object v14, v8

    :goto_f
    move-object v2, v0

    move-object/from16 v22, v5

    goto :goto_12

    :catch_10
    move-exception v0

    move-object v14, v8

    :goto_10
    move-object v2, v0

    move-object/from16 v22, v5

    goto :goto_13

    :catch_11
    move-exception v0

    move-object v14, v8

    :goto_11
    move-object v2, v0

    move-object/from16 v22, v5

    goto :goto_14

    :catchall_6
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    const/4 v14, 0x0

    goto :goto_15

    :catch_12
    move-exception v0

    move-object v2, v0

    const/4 v14, 0x0

    const/16 v22, 0x0

    :goto_12
    :try_start_7
    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v3

    :catch_13
    move-exception v0

    move-object v2, v0

    const/4 v14, 0x0

    const/16 v22, 0x0

    :goto_13
    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v3

    :catch_14
    move-exception v0

    move-object v2, v0

    const/4 v14, 0x0

    const/16 v22, 0x0

    :goto_14
    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    move-object/from16 v5, v22

    :goto_15
    if-eqz v14, :cond_8

    if-eqz v5, :cond_8

    iget-object v3, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v8

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v10

    move-object v7, v15

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    :cond_8
    throw v2

    :cond_9
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v3, "pending capture request exist"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v3, "sessionMode is not default"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v1
.end method

.method public takePicture(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)I
    .locals 22
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
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestBuilderMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureCbMappingTable()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v4, "can\'t find picture callback on current session"

    invoke-static {v11, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isThumbnailRequested()Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailCbMappingTable()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v5, "can\'t find thumbnail callback on current session"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    move-object v13, v3

    goto :goto_0

    :cond_0
    move-object v13, v12

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isPicDepthRequested()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthCbMappingTable()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v5, "can\'t find pictureDepth callback on current session"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    move-object v14, v3

    goto :goto_1

    :cond_1
    move-object v14, v12

    :goto_1
    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewRequestCnt()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object v3

    :goto_2
    move-object v15, v3

    goto :goto_3

    :cond_2
    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewCbRequestCnt()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getMainPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v15, v12

    :goto_3
    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getLatestPreviewTimestamp()J

    move-result-wide v3

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takePicture - latestPreviewTimestamp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_REQUEST_BUILD_NUMBER:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getAndIncreaseRequestBuildNumber()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_LATEST_PREVIEW_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v5, v6, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getOutputConfigurationList()Ljava/util/List;

    move-result-object v6

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v8

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v10

    move-object/from16 v3, p1

    move-object v4, v2

    move-object v7, v15

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->addTarget(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v12
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, v12}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->submitOptions(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v7, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restore oldOption key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v8, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v8, v9, v6}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_LATEST_PREVIEW_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v4, v6, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->getRequestedTargetCnt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isThumbnailRequested()Z

    move-result v18

    new-instance v6, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    invoke-direct {v6, v11, v13, v14}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v16, v4

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;II)V

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->DEBUG:Z

    if-eqz v2, :cond_5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->dumpCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_5
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-direct {v2, v4, v11}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;)V

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureCallbackHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v5, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v12, :cond_6

    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v4, p1

    move-object v6, v15

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    :cond_6
    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    return v0

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v3, p1

    :goto_5
    :try_start_2
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    move-object/from16 v3, p1

    :goto_6
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v2

    :catch_5
    move-exception v0

    move-object/from16 v3, p1

    :goto_7
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v12, :cond_7

    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v4, p1

    move-object v6, v15

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    :cond_7
    throw v0

    :cond_8
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v2, "sessionMode is not default"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "REPEATING_PREVIEW"

    return-object p0
.end method
