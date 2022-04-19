.class Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "PrepareVideoMakerRequest.java"


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

.method private getRecordingSurface(ILcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;)Landroid/view/Surface;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "connectionInfo"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isDualMediaRecorderRequired()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result p2

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getPersistentInputSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getPersistentInputSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getMultiCameraEffectProcessorMode()I

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result p2

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getPersistentInputSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getDummyRecordingSurface(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method private getVdisMode()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoFilter()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getColorTuneType()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_CENTER_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VDIS mode : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Request"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v2

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v3

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v4

    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSnapshotWidthFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I

    move-result v5

    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSnapshotHeightFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)I

    move-result v6

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isSecondPictureConfigSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackWideCameraMaxResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_WIDE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMinFps()I

    move-result v5

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getMaxFps()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setVideoFpsRange(II)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->getVdisMode()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setVdisMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;)V

    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v5

    if-ne v5, v7, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->enableSuperVdis(Z)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isVideoBeautyFaceSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isBeautyFaceSupported(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v7}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->enableVideoBeautyFace(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v6}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->enableVideoBeautyFace(Z)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isHdr10RecordingEnabled()Z

    move-result v3

    const-string v4, "Request"

    if-eqz v3, :cond_3

    const-string v3, "onConnectMakerPrepared HDR10"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;->HDR10:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setRecordingDrMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;)V

    goto :goto_2

    :cond_3
    const-string v3, "onConnectMakerPrepared SDR"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;->SDR:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setRecordingDrMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getMakerEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;->onConnectMakerPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Capability;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;)V

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result v2

    if-ne v2, p1, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->createEffectProcessor(ILandroid/os/Handler;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getMultiCameraEffectProcessorMode()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getMultiCameraEffectProcessorMode()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->createMultiCameraEffectProcessor(ILandroid/os/Handler;)V

    :cond_5
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->getRecordingSurface(ILcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setRecorderSurface(Landroid/view/Surface;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v3, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCurrentPreviewSurface(I)Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getMainCameraId(I)I

    move-result v0

    if-eq v0, p1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCurrentPreviewSurface(I)Landroid/view/Surface;

    move-result-object v0

    invoke-direct {v2, v0, v7}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;-><init>(Landroid/view/Surface;I)V

    :cond_6
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DISPLAY_FRAME_RATE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->getSurface()Landroid/view/Surface;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DISPLAY_FRAME_RATE_IN_HZ:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3, v7}, Landroid/view/Surface;->setFrameRate(FI)V

    :cond_7
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->setPreviewSurfaceData(Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->addConnectionInfo(ILcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->createRecordingSessionController()V

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

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;->initializeMakerConnectionInfo(I)V

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

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->CONNECTING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
