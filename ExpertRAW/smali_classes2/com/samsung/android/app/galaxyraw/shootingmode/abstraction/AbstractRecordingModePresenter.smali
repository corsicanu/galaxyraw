.class public abstract Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;
.super Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;
.source "AbstractRecordingModePresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;",
        ">",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter<",
        "TV;>;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$Presenter;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractRecordingModePresenter"


# instance fields
.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "view",
            "shootingModeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;",
            "TV;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getRecordingRestrictionString(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "facing",
            "resolutionId"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    const/4 v1, 0x0

    const v2, 0x7f1204d6

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296_24FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7680X3296:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getVideoSizeShortString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1203ee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private isFrontCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSnapShotAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isSnapshotAvailable()Z

    move-result p0

    return p0
.end method

.method private registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private showAeAfLockedIndicator()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->showAeAfLockedIndicator()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected cancelRecording()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->setCenterButtonStateForRecording(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->cancelVideoRecording()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "AbstractRecordingModePresenter"

    const-string v0, "cancelRecording : Returned because recording is already stopping"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected getCenterButtonProperty()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->PAUSE_STOP:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const v1, 0x7f08069b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method protected handleStopRecording()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->isStopShootingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->stopRecording()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->cancelRecording()Z

    move-result p0

    return p0
.end method

.method protected isStopShootingAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p0

    return p0
.end method

.method public onActivate(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->register(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->registerReceiver()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onActivate(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    return-void
.end method

.method public onBackKey()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->onRecordStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->cancelRecording()Z

    return-void
.end method

.method public onInactivate()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onInactivate()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->handleStopRecording()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->unregister()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SEAMLESS_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->disableRecordingSeamlessZoom(Z)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->setRecordingOverheatLevel(I)V

    return-void
.end method

.method public onRecordButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    const-string v0, "AbstractRecordingModePresenter"

    const-string v1, "onRecordButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isSmartViewConnected(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSmartViewSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->SMART_VIEW_NOT_SUPPORTED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->isCameraDialogVisible(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->SMART_VIEW_NOT_SUPPORTED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecordingAvailable(Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "onRecordButtonClick : Returned because recording is not available"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v1, v4, :cond_3

    const-string p0, "onRecordButtonClick : Returned because recording state is not IDLE"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-eq v1, v4, :cond_4

    const-string p0, "onRecordButtonClick : Returned because center button state is not IDLE"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->handleShutterTimer(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->getRecordingRestrictionString(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-static {v0, p1, v3}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/lang/String;I)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->startRecording()Z

    move-result p0

    return p0
.end method

.method public onRecordPauseButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    const-string p1, "AbstractRecordingModePresenter"

    const-string v0, "onPauseButtonClick"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isPauseRecordingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onRecordPauseButtonClick : Returned because pause recording not available"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->pauseRecording()Z

    move-result p0

    return p0
.end method

.method public onRecordResumeButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    const-string p1, "AbstractRecordingModePresenter"

    const-string v0, "onResumeButtonClick"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    const-string p0, "onResumeButtonClick : Returned because wrong recording state"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->resumeRecording()Z

    move-result p0

    return p0
.end method

.method public onRecordSnapShotButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    const-string p1, "AbstractRecordingModePresenter"

    const-string v0, "onSnapShotButtonClick"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->isSnapShotAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "onSnapShotButtonClick : Returned because snap shot is not available"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRemainRecordingTimeInMsByStorage()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v0, 0x7f1202c5

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    const-string p0, "onSnapShotButtonClick : Returned because internal storage full"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    const-string p0, "onSnapShotButtonClick : Returned because storage status"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->handleShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onRecordStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    const-string p1, "AbstractRecordingModePresenter"

    const-string v0, "onRecordStopButtonClick"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->isStopShootingAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->stopRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onRecordingEvent(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractRecordingModePresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$RecordingManager$RecordingEvent:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->getQuickSettingItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->refreshQuickSetting(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->resetBottomBackground(Z)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->setCenterButtonStateForRecording(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;->updateStopRecordingLayout()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mShootingModeId:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mShootingModeId:I

    invoke-static {p1, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mShootingModeId:I

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->showBackButton()V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->prepareVideoRecording()V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->sendSALogRecordingStopped()V

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isUsbMicPlugged(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isAudioRecordingDisabled()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v0, 0x7f1203e5

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isWiredMicPlugged(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isAudioRecordingDisabled()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v0, 0x7f1203e4

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->getQuickSettingItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->refreshQuickSetting(Ljava/util/List;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->setCenterButtonStateForRecording(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->setBottomBackgroundPosition(II)V

    :goto_3
    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v1, 0x7f1204d5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->handleStopRecording()Z

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->handleStopRecording()Z

    return-void
.end method

.method public onRecordingRestricted(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRestricted"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->handleStopRecording()Z

    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elapsedTime",
            "fileSize"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isRecordingTimeLimited()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p3, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p0

    invoke-interface {p3, p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;->updateRecordingTime(JI)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;->updateRecordingTime(JI)V

    :goto_0
    return-void
.end method

.method public onShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->onRecordSnapShotButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterTimerCaptureTriggered()V
    .locals 2

    const-string v0, "AbstractRecordingModePresenter"

    const-string v1, "onShutterTimerCaptureTriggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->startRecording()Z

    return-void
.end method

.method public onStopRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->handleStopRecording()Z

    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onVideoSaved()V
    .locals 0

    return-void
.end method

.method public onWatchEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;->CANCEL_SHOOTING:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->handleStopRecording()Z

    :cond_0
    return-void
.end method

.method protected pauseRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;->updatePauseRecordingLayout()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->pauseVideoRecording()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->PAUSING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->setCenterButtonStateForRecording(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected resumeRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;->updateResumeRecordingLayout()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->resumeVideoRecording()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->setCenterButtonStateForRecording(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected sendSALogRecordingStopped()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0242"

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object p0

    const-string v1, "0203"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_0
    return-void
.end method

.method protected setCenterButtonStateForCapture(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method protected setCenterButtonStateForRecording(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    return-void
.end method

.method protected startRecording()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mShootingModeId:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->hideBackButton()V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->setCenterButtonStateForRecording(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->reduceArea()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->setZoomPositionType(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModeContract$View;->updateStartRecordingLayout()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->startVideoRecording()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->showAeAfLockedIndicator()V

    const/4 p0, 0x1

    return p0
.end method

.method protected stopRecording()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->setCenterButtonStateForRecording(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->reduceArea()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->resetZoomPositionType()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;->mRecordingManager:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->stopVideoRecording(Z)V

    const/4 p0, 0x1

    return p0
.end method
