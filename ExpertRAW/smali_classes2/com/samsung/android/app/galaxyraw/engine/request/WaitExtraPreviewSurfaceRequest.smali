.class Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "WaitExtraPreviewSurfaceRequest.java"


# instance fields
.field private mIsExtraPreviewSurfaceCreated:Z


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

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->mIsExtraPreviewSurfaceCreated:Z

    return-void
.end method


# virtual methods
.method execute()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    const-string v1, "Request"

    if-nez v0, :cond_0

    const-string v0, "WaitExtraPreviewSurfaceRequest : Camera is not running, return."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->discard()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isExtraPreviewSurfaceCreated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->mIsExtraPreviewSurfaceCreated:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaitExtraPreviewSurfaceRequest : mIsExtraPreviewSurfaceCreated = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->mIsExtraPreviewSurfaceCreated:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getBlockingRequestTimeOut()I
    .locals 0

    const/16 p0, 0x7530

    return p0
.end method

.method isBlockingRequest()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->mIsExtraPreviewSurfaceCreated:Z

    xor-int/lit8 p0, p0, 0x1

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

.method public synthetic lambda$onTimeout$0$WaitExtraPreviewSurfaceRequest()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    const/16 v0, -0x16

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->handleCameraError(I)V

    return-void
.end method

.method onInterrupt()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    return-void
.end method

.method onTimeout()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$WaitExtraPreviewSurfaceRequest$rrSlq46ySBTgpJVUX1bpXPLoJ6o;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$WaitExtraPreviewSurfaceRequest$rrSlq46ySBTgpJVUX1bpXPLoJ6o;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
