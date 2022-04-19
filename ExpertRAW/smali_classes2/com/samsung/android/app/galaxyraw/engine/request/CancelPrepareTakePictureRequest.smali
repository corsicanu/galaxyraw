.class Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "CancelPrepareTakePictureRequest.java"


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "makerHolder",
            "engine",
            "id"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method private stopTorchFlash(Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "makerSettings"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->setTorchFlashEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isScreenFlashAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p0

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFrontFlashSetting(IZ)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isManualExposure()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFlashSetting(IZ)I

    move-result p0

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getMakerPublicSettings()Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTakingPictureSupported()Z

    move-result v2

    const-string v3, "Request"

    if-nez v2, :cond_0

    const-string p0, "CancelPrepareTakePictureRequest : Returned, taking picture is not supported in this mode."

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isTorchFlashEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CancelPrepareTakePictureRequest : Stop torch flash."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->stopTorchFlash(Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;)V

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->applySettings()I

    :cond_1
    const/4 v1, 0x2

    invoke-interface {v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setAfAndAePreCaptureTrigger(II)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->discard()V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CamAccessException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getReason()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->discard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    throw v0
.end method

.method isSupportedCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentCaptureState"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSupportedState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentState"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
