.class Lcom/samsung/android/app/galaxyraw/engine/request/WaitLastSettingsAppliedRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "WaitLastSettingsAppliedRequest.java"


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
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - WaitLastSettingsAppliedRequest : Start["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalaxyRaw/CameraPerformance"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getBlockingRequestTimeOut()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method getInitialCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitLastSettingsAppliedRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/Request;->getInitialCaptureState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    return-object p0
.end method

.method isBlockingRequest()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitLastSettingsAppliedRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->isLastSettingsApplied()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - WaitLastSettingsAppliedRequest : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalaxyRaw/CameraPerformance"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
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

.method public synthetic lambda$onTimeout$0$WaitLastSettingsAppliedRequest()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitLastSettingsAppliedRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->clearApplySettingsSequenceId()V

    return-void
.end method

.method onInterrupt()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitLastSettingsAppliedRequest;->setNextCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->SHUTDOWN:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitLastSettingsAppliedRequest;->setNextState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)V

    return-void
.end method

.method onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitLastSettingsAppliedRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$WaitLastSettingsAppliedRequest$kftD3JM6MAvIpsUYey72JjYkMO0;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$WaitLastSettingsAppliedRequest$kftD3JM6MAvIpsUYey72JjYkMO0;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/WaitLastSettingsAppliedRequest;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
