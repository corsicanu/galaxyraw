.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;
.super Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;
.source "CamDeviceRepeatingStatePicture.java"


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

    const-string v1, "RepeatingPicture"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public stopBurstPictureRepeating()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "stopBurstPictureRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->restartPreviewRepeatingInternal()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v1, "sessionMode is not default"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public stopRepeating()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v1, "stopRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePicture;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getRepeatingStateStopped()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setRepeatingState(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "REPEATING_PICTURE"

    return-object p0
.end method
