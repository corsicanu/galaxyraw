.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;
.super Ljava/lang/Object;
.source "ZoomConditionChecker.java"


# instance fields
.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private final mPreviewAnimationLayerManager:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

.field private final mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

.field private mZoomAvailabilityChecker:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "engine",
            "shootingModeFeature",
            "cameraSettings",
            "previewAnimationLayerManager"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mPreviewAnimationLayerManager:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    return-void
.end method

.method private isZoomAvailableCaptureState()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method isAngleAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->isZoomAvailableCaptureState()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mPreviewAnimationLayerManager:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method isSmoothZoomSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isSmoothZoomSupported()Z

    move-result p0

    return p0
.end method

.method isZoomAvailable()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->isZoomSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mZoomAvailabilityChecker:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;->isZoomAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->isZoomAvailableCaptureState()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mPreviewAnimationLayerManager:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method isZoomSupported()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isZoomSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAngleChangeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isMultiCameraEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method setZoomAvailabilityChecker(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomAvailabilityChecker"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->mZoomAvailabilityChecker:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;

    return-void
.end method
