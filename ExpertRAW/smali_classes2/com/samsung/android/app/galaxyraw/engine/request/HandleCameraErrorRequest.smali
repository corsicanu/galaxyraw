.class Lcom/samsung/android/app/galaxyraw/engine/request/HandleCameraErrorRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "HandleCameraErrorRequest.java"


# instance fields
.field private mErrorCode:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V
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
            "errorCode"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iput p4, p0, Lcom/samsung/android/app/galaxyraw/engine/request/HandleCameraErrorRequest;->mErrorCode:I

    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/HandleCameraErrorRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/HandleCameraErrorRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/HandleCameraErrorRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$HandleCameraErrorRequest$gx9HIKKJpqcqmlhLkXBZx_gbDjs;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$HandleCameraErrorRequest$gx9HIKKJpqcqmlhLkXBZx_gbDjs;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/HandleCameraErrorRequest;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

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

    const/4 p0, 0x1

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

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$execute$0$HandleCameraErrorRequest()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/HandleCameraErrorRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/HandleCameraErrorRequest;->mErrorCode:I

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->finishOnError(I)V

    return-void
.end method
