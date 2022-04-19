.class Lcom/samsung/android/app/galaxyraw/engine/request/SwitchMultiCameraFacingRequest;
.super Lcom/samsung/android/app/galaxyraw/engine/request/Request;
.source "SwitchMultiCameraFacingRequest.java"


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

.method private updateZoomValue()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchMultiCameraFacingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchMultiCameraFacingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getZoomValueByMultiRecordingLensType(I)I

    move-result v2

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchMultiCameraFacingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchMultiCameraFacingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getFrontCropAngleZoomValue()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiRecordingLensType()I

    move-result v3

    if-eq v3, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchMultiCameraFacingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiRecordingLensType()I

    move-result v1

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getZoomValueByMultiRecordingLensType(I)I

    move-result v2

    :cond_1
    :goto_0
    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchMultiCameraFacingRequest;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;->switchMultiCameraFacingInternal()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchMultiCameraFacingRequest;->updateZoomValue()V

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
