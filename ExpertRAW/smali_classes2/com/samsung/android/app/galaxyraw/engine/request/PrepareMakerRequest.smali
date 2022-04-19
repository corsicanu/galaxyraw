.class Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "PrepareMakerRequest.java"


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

.method private initializeMakerConnectionInfo(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;

    invoke-direct {v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result v3

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isSecondPictureConfigSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackWideCameraMaxResolution()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_WIDE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isDynamicFovSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v3, :cond_1

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getNormalAngleResolutionBySensorCropAngle(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSensorCropResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isSensorCropSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorStreamType;->CROP:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorStreamType;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorStreamType;->FULL:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorStreamType;

    :goto_1
    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setSensorStreamType(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorStreamType;)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getMakerEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;->onConnectMakerPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Capability;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;)V

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSnapshotWidthFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I

    move-result v4

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSnapshotHeightFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I

    move-result v5

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    :cond_5
    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SAVE_AS_FLIPPED_IN_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorFlipMode;->FLIP_MODE_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setSensorFlipMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorFlipMode;)V

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_FLIP_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_6
    invoke-interface {v1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getAvailableJpegPictureSizes(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getPictureSize()Landroid/util/Size;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->createEffectProcessor(ILandroid/os/Handler;)V

    :cond_7
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCurrentPreviewSurface(I)Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;-><init>(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, p1, :cond_8

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCurrentPreviewSurface(I)Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;-><init>(Landroid/view/Surface;I)V

    :cond_8
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DISPLAY_FRAME_RATE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_9

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->getSurface()Landroid/view/Surface;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DISPLAY_FRAME_RATE_IN_HZ:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4, v3}, Landroid/view/Surface;->setFrameRate(FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Request"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->discard()V

    return-void

    :cond_9
    :goto_2
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setPreviewSurfaceData(Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->addConnectionInfo(ILcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "picture size is not supported - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", cameraId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", backCameraResolution="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", frontCameraResolution="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFrontCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method execute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;->initializeMakerConnectionInfo(I)V

    goto :goto_0

    :cond_0
    return-void
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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->CONNECTING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
