.class Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;
.super Ljava/lang/Object;
.source "AgifCaptureController.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;


# static fields
.field private static final MAX_AGIF_BURST_CAPTURE_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "AgifCaptureController"


# instance fields
.field private final mAgifBurstCaptureEventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mIsCapturing:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mIsCapturing:Z

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method

.method private cancelAgifBurstPicture()V
    .locals 2

    const-string v0, "AgifCaptureController"

    const-string v1, "cancelAgifBurstPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$L-H-mY3IvCevYEkQGDRzQDrvXA0;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$L-H-mY3IvCevYEkQGDRzQDrvXA0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method handleAgifBurstShutterPressed(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result p1

    const-string v0, "AgifCaptureController"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAgifBurstShutterPressed : Return, wrong state for take picture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAgifBurstShutterPressed : Return, wrong capture state for take picture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "handleAgifBurstShutterPressed : Return, it is already requested."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p1, "handleAgifBurstShutterReleased"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const/16 v0, 0x2710

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->acquireDVFSLock(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setAeModeByFlashSetting(I)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->GIF:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->insertToDb(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    const/4 p0, 0x1

    return p0
.end method

.method handleAgifBurstShutterReleased()Z
    .locals 2

    const-string v0, "AgifCaptureController"

    const-string v1, "handleAgifBurstShutterReleased"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$cancelAgifBurstPicture$3$AgifCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureCompleted()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$onAgifBurstPictureCompleted$0$AgifCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureCompleted()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$onAgifBurstPictureStarted$1$AgifCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureStarted()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$onProgress$2$AgifCaptureController(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureProgress(I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAgifBurstPictureCompleted(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "camDevice"
        }
    .end annotation

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mIsCapturing:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAgifBurstPictureCompleted : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgifCaptureController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    const-string p0, "onAgifBurstPictureCompleted : returned because camera is not running!"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$RgFpLMl-0dfbqB5YldgZUoyJNBw;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$RgFpLMl-0dfbqB5YldgZUoyJNBw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->notifyCurrentLightCondition()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->setAeModeByFlashSetting(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->startMotionPhoto()V

    :cond_2
    return-void
.end method

.method public onAgifBurstPictureStarted(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "camDevice"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAgifBurstPictureStarted : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgifCaptureController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "onAgifBurstPictureStarted : Returned because camera is not running."

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mIsCapturing:Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->ANIMATED_GIF_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$1e2h3IPF_Y0cCthgenunVjLIqdY;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$1e2h3IPF_Y0cCthgenunVjLIqdY;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->stopMotionPhoto()V

    :cond_1
    return-void
.end method

.method public onCaptureResult(Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resultUri",
            "size",
            "camDevice"
        }
    .end annotation

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureResult - uri : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", size : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgifCaptureController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getPictureProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->GIF:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->processPicture(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    return-void
.end method

.method public onDraftThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "draftThumbnailData",
            "info",
            "camDevice"
        }
    .end annotation

    const-string p0, "AgifCaptureController"

    const-string p1, "onDraftThumbnailTaken"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "error",
            "camDevice"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onError : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AgifCaptureController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "progress",
            "camDevice"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgress : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AgifCaptureController"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$V6FTnvgHHNxvT460ERBJ28OHAII;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AgifCaptureController$V6FTnvgHHNxvT460ERBJ28OHAII;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;I)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_1

    const-string p1, "onProgress : stop animated gif burst capture and returned because MAX_AGIF_BURST_CAPTURE_COUNT(30) is reached"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :cond_1
    return-void
.end method

.method public onThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "thumbnailData",
            "info",
            "camDevice"
        }
    .end annotation

    const-string p3, "AgifCaptureController"

    const-string v0, "onThumbnailTaken"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getThumbnailProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;->getFormat()I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {p3, p1, v0, p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V

    return-void
.end method

.method prepareDbUpdate(Landroid/content/ContentValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const-string p0, "AgifCaptureController"

    const-string v0, "prepareDbUpdate"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x960

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "sef_file_type"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method registerAgifBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->isRequested(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->removeRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mIsCapturing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mIsCapturing:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->cancelAgifBurstPicture()V

    :cond_1
    return-void
.end method

.method unregisterAgifBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
