.class Lcom/samsung/android/app/galaxyraw/engine/request/StartZoomLockRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "StartZoomLockRequest.java"


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

    const-string v0, "Request"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartZoomLockRequest;->mMakerHolder:Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;

    move-result-object v1

    :try_start_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_TRIGGER_REQUEST_CONTROL_ZOOM_LOCK_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;->setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/StartZoomLockRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/StartZoomLockRequest;->discard()V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CamAccessException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartZoomLockRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;->getReason()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/StartZoomLockRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/StartZoomLockRequest;->discard()V

    :goto_0
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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

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