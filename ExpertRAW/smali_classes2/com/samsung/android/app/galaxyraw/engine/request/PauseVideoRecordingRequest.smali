.class Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "PauseVideoRecordingRequest.java"


# instance fields
.field private mIsFacingSwitch:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Boolean;)V
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
            "isFacingSwitch"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->mIsFacingSwitch:Z

    return-void
.end method

.method static synthetic lambda$execute$0(Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->pause()V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 6

    const-string v0, "Request"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getMediaRecorderList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$PauseVideoRecordingRequest$-GnKSpK471W4y7Gpx3A4y2lBQEQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$PauseVideoRecordingRequest$-GnKSpK471W4y7Gpx3A4y2lBQEQ;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->disableAlertSound(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$PauseVideoRecordingRequest$-I-iXPMf02yYg1xmB3Ed_YHAxCw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$PauseVideoRecordingRequest$-I-iXPMf02yYg1xmB3Ed_YHAxCw;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;->onRecordingPaused()V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->mIsFacingSwitch:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not pause media recorder. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;

    move-result-object v0

    const/16 v3, -0xb

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;->onRecordingFailed(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->discard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->disableAlertSound(Landroid/content/Context;Z)V

    return-void

    :catch_1
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidOperationException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->discard()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->disableAlertSound(Landroid/content/Context;Z)V

    throw p0
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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->BACKGROUND_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

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

.method public synthetic lambda$execute$1$PauseVideoRecordingRequest()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onVideoRecordingPaused()V

    return-void
.end method
