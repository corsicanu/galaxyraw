.class public Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;
.super Ljava/lang/Object;
.source "RecordingSnapShotCallbackManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecSnapShotCallbackMgr"


# instance fields
.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method


# virtual methods
.method isSnapshotAvailable(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recordingState",
            "shootingModeFeature"
        }
    .end annotation

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingSnapshotSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_3

    return v1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSnapshotAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoFilter()I

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getColorTuneType()I

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_8

    return v1

    :cond_8
    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;->VIDEO_BOKEH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne p1, p2, :cond_9

    return v1

    :cond_9
    if-ne v0, v2, :cond_a

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackVideoBodyBeautyType()I

    move-result p0

    if-ne p0, v2, :cond_a

    return v1

    :cond_a
    return v2
.end method

.method public synthetic lambda$onShutter$0$RecordingSnapShotCallbackManager()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->startShutterAnimation()V

    return-void
.end method

.method public onDraftPostProcessingPictureTaken(Landroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resultUri",
            "resultFile",
            "camDevice"
        }
    .end annotation

    return-void
.end method

.method public onError(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reason",
            "camDevice"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RecSnapShotCallbackMgr"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCameraDeviceOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->interruptCaptureRequest()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    const/16 p1, -0xa

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->handleCameraError(I)V

    :cond_0
    return-void
.end method

.method public onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "info",
            "camDevice"
        }
    .end annotation

    const-string p2, "RecSnapShotCallbackMgr"

    const-string p3, "onPictureTaken"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p3, v0, :cond_0

    const-string p1, "onPictureTaken : Current capture state is not RECORDING. return."

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v0

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p2, p1, v0, v1, p3}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;JLcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-void
.end method

.method public onPostProcessingError(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation

    const-string p0, "RecSnapShotCallbackMgr"

    const-string p1, "onPostProcessingError"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPostProcessingFrameCollectionCompleted(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation

    return-void
.end method

.method public onPostProcessingFrameCollectionStopped(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation

    return-void
.end method

.method public onPostProcessingPictureTaken(Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultFile",
            "camDevice"
        }
    .end annotation

    return-void
.end method

.method public onProcessingFrameCollected(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "camDevice"
        }
    .end annotation

    return-void
.end method

.method public onProcessingPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "info",
            "camDevice"
        }
    .end annotation

    return-void
.end method

.method public onProgress(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "camDevice"
        }
    .end annotation

    return-void
.end method

.method public onShutter(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "camDevice"
        }
    .end annotation

    const-string p1, "RecSnapShotCallbackMgr"

    const-string p2, "onShutter"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSnapShotCallbackManager$zG4mR6wSRr8XV6hV1YnVeMaY1k0;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$RecordingSnapShotCallbackManager$zG4mR6wSRr8XV6hV1YnVeMaY1k0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/RecordingSnapShotCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
