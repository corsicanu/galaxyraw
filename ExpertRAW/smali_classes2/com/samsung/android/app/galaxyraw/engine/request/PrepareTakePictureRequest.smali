.class Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "PrepareTakePictureRequest.java"


# instance fields
.field private final mIsPrecaptureRequired:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "makerHolder",
            "engine",
            "id",
            "isPrecaptureRequired"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iput-boolean p4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mIsPrecaptureRequired:Z

    return-void
.end method

.method private isTorchFlashSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getLightConditionForCapture()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private startTorchFlash(Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "makerSettings"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->setTorchFlashEnabled(Z)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 6

    const-string v0, "Request"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getMakerPublicSettings()Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capture - PrepareTakePictureRequest : Point["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mIsPrecaptureRequired:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->isTorchFlashSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->startTorchFlash(Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;)V

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->applySettings()I

    :cond_0
    invoke-interface {v1, v4, v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setAfAndAePreCaptureTrigger(II)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isAutoFocusTriggerRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setAfTrigger(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->discard()V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CamAccessException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getReason()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->discard()V

    :cond_2
    :goto_0
    return-void
.end method

.method getInitialCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    return-object p0
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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-ne p1, p0, :cond_0

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

.method public synthetic lambda$onInterrupt$0$PrepareTakePictureRequest()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$juP_S9QjgOULVI5fRCwMl_CoKV0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$juP_S9QjgOULVI5fRCwMl_CoKV0;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method onInterrupt()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$PrepareTakePictureRequest$LDAiMIxyo16_m6M-mLeuPgOiolE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$PrepareTakePictureRequest$LDAiMIxyo16_m6M-mLeuPgOiolE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    return-void
.end method
