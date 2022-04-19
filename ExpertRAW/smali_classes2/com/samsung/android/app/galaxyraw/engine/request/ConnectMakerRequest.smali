.class Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "ConnectMakerRequest.java"


# instance fields
.field mImageReader:Landroid/media/ImageReader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraHolder",
            "makerHolder",
            "engine",
            "id"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method private connectCamDevice(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleCameraId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getConnectionInfo(I)Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCurrentMaker(I)Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mCameraHolder:Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;->getCameraDevice(I)Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;

    invoke-direct {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getPreviewSurfaceData()Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->setMainPreviewSurfaceData(Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;)V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getPictureSize()Landroid/util/Size;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;-><init>(Landroid/util/Size;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->setFirstPicCbImgSizeConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isExtraPreviewSurfaceCreated()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isWatchModeSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getExtraPreviewSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->setPreviewExtraSurface(Landroid/view/Surface;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getExtraPictureSize()Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getExtraPictureSize()Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getExtraPictureSize()Landroid/util/Pair;

    move-result-object v6

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;-><init>(Landroid/util/Size;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->setSecondPicCbImgSizeConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isHeifCaptureEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x48454946

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->setPictureEncodeFormat(I)V

    :cond_2
    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->getMakerType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getRecorderSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->setFirstRecorderSurface(Landroid/view/Surface;)V

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getMainPreviewCallbackSize()Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getMainPreviewCallbackSize()Landroid/util/Size;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;-><init>(Landroid/util/Size;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->setMainPreviewCbImgSizeConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;)V

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getSubPreviewCallbackSize()Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getSubPreviewCallbackSize()Landroid/util/Size;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;-><init>(Landroid/util/Size;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->setSubPreviewCbImgSizeConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;)V

    :cond_5
    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->setDeviceUsageType(I)V

    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerConnectionInfo;->getParameters()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->setParameters(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getMakerStateCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-interface {v1, p1, v2, v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->connectCamDevice(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;Landroid/os/Handler;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionInfo is null! : singleCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method execute()V
    .locals 4

    const-string v0, "ConnectMakerRequest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maker - ConnectMakerRequest : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v2

    const-string v3, "Request"

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isPreviewSurfaceCreated()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->connectCamDevice(I)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->clearConnectionInfo()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->CONNECTED:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

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

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->discard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->clearConnectionInfo()V

    return-void

    :catch_1
    move-exception v0

    :try_start_2
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

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getReason()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->discard()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->clearConnectionInfo()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->clearConnectionInfo()V

    throw v0

    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectMakerRequest : isRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPreviewSurfaceCreated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isPreviewSurfaceCreated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->discard()V

    return-void
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

.method onInterrupt()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    return-void
.end method

.method onTimeout()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    return-void
.end method
