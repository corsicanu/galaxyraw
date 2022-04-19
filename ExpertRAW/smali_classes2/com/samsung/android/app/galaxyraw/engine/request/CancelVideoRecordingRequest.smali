.class Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "CancelVideoRecordingRequest.java"


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


# virtual methods
.method execute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$CancelVideoRecordingRequest$0Rb7qyuYQjpqpO1j8TkvjU_qhZE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$CancelVideoRecordingRequest$0Rb7qyuYQjpqpO1j8TkvjU_qhZE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;)V

    :goto_0
    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Request"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;->discard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$CancelVideoRecordingRequest$0Rb7qyuYQjpqpO1j8TkvjU_qhZE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$CancelVideoRecordingRequest$0Rb7qyuYQjpqpO1j8TkvjU_qhZE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;)V

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$RecordingEventListener;->onRecordingCancelled()V

    return-void

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$CancelVideoRecordingRequest$0Rb7qyuYQjpqpO1j8TkvjU_qhZE;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$CancelVideoRecordingRequest$0Rb7qyuYQjpqpO1j8TkvjU_qhZE;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    throw v0
.end method

.method getInitialCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

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

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

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

.method public synthetic lambda$execute$0$CancelVideoRecordingRequest()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onVideoRecordingFinished()V

    return-void
.end method
