.class Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "TakePictureRequest.java"


# instance fields
.field private mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
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
            "dynamicShotInfo"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    return-void
.end method

.method private isLongExposureShot()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_EXPAND_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method execute()V
    .locals 6

    const-string v0, "Request"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getMakerPublicSettings()Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getThumbnailCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setThumbnailCallback(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Landroid/os/Handler;)V

    :try_start_0
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getOrientationForCapture()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string v2, "TakePictureRequest"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    const-string v2, "GalaxyRaw/CameraPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capture - TakePictureRequest : Start["

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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRawCaptureEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->takeRawPicture()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mDynamicShotInfo:Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->takePicture(Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakePictureRequest$u3m2dvc9A2iwk8eU8Jbp3wclruA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakePictureRequest$u3m2dvc9A2iwk8eU8Jbp3wclruA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void

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

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->discard()V

    return-void

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getReason()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->discard()V

    return-void
.end method

.method getBlockingRequestTimeOut()I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->isLongExposureShot()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x88b8

    goto :goto_0

    :cond_0
    const/16 p0, 0x7530

    :goto_0
    return p0
.end method

.method getInitialCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    return-object p0
.end method

.method isBlockingRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

.method public synthetic lambda$execute$0$TakePictureRequest()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$s3JQwIVP-OMZEtdFg6WySsNlYSE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$s3JQwIVP-OMZEtdFg6WySsNlYSE;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isLongTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isMotionPhotoAudioRecordingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->LONG_EXPOSURE_SHUTTER_START:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onInterrupt$1$TakePictureRequest()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$juP_S9QjgOULVI5fRCwMl_CoKV0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$juP_S9QjgOULVI5fRCwMl_CoKV0;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$onTimeout$2$TakePictureRequest()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    const/16 v0, -0xa

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->handleCameraError(I)V

    return-void
.end method

.method onInterrupt()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakePictureRequest$fxNh53CvSTZo7KyEz_H4UCIifIM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakePictureRequest$fxNh53CvSTZo7KyEz_H4UCIifIM;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    return-void
.end method

.method onTimeout()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakePictureRequest$6mhx6Iweb4FaX19NHFywtPbGC3w;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$TakePictureRequest$6mhx6Iweb4FaX19NHFywtPbGC3w;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
