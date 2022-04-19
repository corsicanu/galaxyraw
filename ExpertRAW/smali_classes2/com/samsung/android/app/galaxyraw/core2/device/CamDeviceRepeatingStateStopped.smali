.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;
.super Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;
.source "CamDeviceRepeatingStateStopped.java"


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

    const-string v1, "RepeatingStopped"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public takePicture(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)I
    .locals 16
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

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const-string v3, "takePicture requestOptions : %s"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_CAPTURE_SESSION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestBuilderMap()Ljava/util/Map;

    move-result-object v3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureCbMappingTable()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v4, "can\'t find picture callback on current session"

    invoke-static {v12, v2, v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getSessionMode()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isThumbnailRequested()Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailCbMappingTable()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v5, "can\'t find thumbnail callback on current session"

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    move-object v14, v2

    goto :goto_0

    :cond_0
    move-object v14, v13

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isPicDepthRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthCbMappingTable()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v5, "can\'t find pictureDepth callback on current session"

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceChecker;->checkNotNull(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v2

    goto :goto_1

    :cond_1
    move-object v15, v13

    :goto_1
    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->CONTROL_REQUEST_BUILD_NUMBER:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getAndIncreaseRequestBuildNumber()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getOutputConfigurationList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->addTarget(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->submitOptions(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore oldOption key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    iget-object v5, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureRequestInfoMappingTable()Ljava/util/Map;

    move-result-object v2

    new-instance v9, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->getRequestedTargetCnt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->isThumbnailRequested()Z

    move-result v6

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;

    invoke-direct {v7, v12, v14, v15}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V

    const/4 v8, 0x1

    const/4 v14, 0x1

    move-object v4, v9

    move-object v15, v9

    move v9, v14

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$CallbackHolder;II)V

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->DEBUG:Z

    if-eqz v2, :cond_3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/core2/util/DebugUtils;->dumpCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_3
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-direct {v2, v4, v12}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePicCaptureCallback;-><init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;)V

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCaptureCallbackHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_4

    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v4, 0x0

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v5

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v6

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v7

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    :cond_4
    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1, v11}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->setCaptureState(I)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v13, :cond_5

    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPicImageReaderMap()Ljava/util/Map;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getThumbnailImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v5

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStateStopped;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getPictureDepthImageReader()Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    :cond_5
    throw v0

    :cond_6
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->INVALID_OPERATION:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    const-string v2, "sessionMode is not default"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "REPEATING_STOPPED"

    return-object p0
.end method
