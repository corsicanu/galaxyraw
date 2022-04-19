.class public Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;
.super Ljava/lang/Object;
.source "LayerKeyEventManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LayerKeyEventManager"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mIsKeyDown:Z

.field private final mKeyEventListenerAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine",
            "shootingActionProvider"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mKeyEventListenerAdapter:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    return-void
.end method

.method private convertExternalKeyCode(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    const/16 v0, 0x65

    const/16 v1, 0x82

    const/16 v2, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x66

    if-eq p1, v0, :cond_2

    const/16 p0, 0x3f7

    if-eq p1, p0, :cond_0

    return p1

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_ACTIVE_KEY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return p1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-nez v0, :cond_5

    return p1

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    return v1
.end method

.method private convertKeyCode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    const/16 v0, 0x45

    if-eq p1, v0, :cond_1

    const/16 v0, 0x46

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9d

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->convertExternalKeyCode(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa8

    return p0

    :cond_1
    const/16 p0, 0xa9

    return p0
.end method

.method private getCaptureInputTypeByKeyCode(ILandroid/view/KeyEvent;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "originalKeyCode",
            "event"
        }
    .end annotation

    const/16 p0, 0x65

    if-eq p1, p0, :cond_1

    const/16 p0, 0x66

    if-eq p1, p0, :cond_1

    if-eqz p2, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->CAMERA_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    :goto_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    return-object p0
.end method

.method private handleCameraKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "originalKeyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->getCaptureInputTypeByKeyCode(ILandroid/view/KeyEvent;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    if-ne p1, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->isSpenBurstShotKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonLongPress(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    :cond_1
    return v0
.end method

.method private handleCameraKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "originalKeyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->getCaptureInputTypeByKeyCode(ILandroid/view/KeyEvent;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return v0
.end method

.method private handleVolumeKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p2, 0x18

    if-ne p1, p2, :cond_1

    const/16 p1, 0xa8

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->onExternalKeyDown(I)Z

    move-result p0

    return p0

    :cond_1
    const/16 p1, 0xa9

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->onExternalKeyDown(I)Z

    move-result p0

    return p0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonLongPress(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    :cond_4
    return v1
.end method

.method private handleVolumeKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    if-ne p2, v1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->handleKeyUpEvent(I)V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private isSpenBurstShotKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    const/high16 v0, 0x2000000

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private onDebuggingKeyDown(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    const/16 v0, 0x1f

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-boolean p1, Lcom/samsung/android/app/galaxyraw/util/Util;->DEBUG:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->dumpLastCaptureResult()V

    :cond_1
    return v1

    :cond_2
    sget-boolean p1, Lcom/samsung/android/app/galaxyraw/util/Util;->DEBUG:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->dumpCapability()V

    :cond_3
    return v1
.end method

.method private onExternalKeyDown(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    const/16 v0, 0xa8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->onDebuggingKeyDown(I)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordResumeButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordPauseButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    :cond_1
    :goto_0
    return v1

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    const/4 p1, 0x4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->handleGestureEvent(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return v1

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    const/4 p1, 0x3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->handleGestureEvent(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return v1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->handleKeyDownEvent(I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mKeyEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method isKeyDown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mIsKeyDown:Z

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mIsKeyDown:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "LayerKeyEventManager"

    const-string p1, "Shooting mode is not activated, ignore onKeyDown"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->convertKeyCode(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mKeyEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;

    invoke-virtual {v3, v1, p2}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_2
    const/16 v2, 0x18

    if-eq v1, v2, :cond_5

    const/16 v2, 0x19

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_4

    const/16 p1, 0x82

    if-eq v1, p1, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->onExternalKeyDown(I)Z

    move-result p0

    return p0

    :cond_3
    return v0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->handleCameraKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_5
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->handleVolumeKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mIsKeyDown:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string p0, "LayerKeyEventManager"

    const-string p1, "Shooting mode is not activated, ignore onKeyUp"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->convertKeyCode(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mKeyEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;

    invoke-virtual {v4, v1, p2}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_2
    const/16 v3, 0x18

    if-eq v1, v3, :cond_7

    const/16 v3, 0x19

    if-eq v1, v3, :cond_7

    const/16 v3, 0x1b

    if-eq v1, v3, :cond_6

    const/16 p1, 0x82

    if-eq v1, p1, :cond_4

    const/16 p0, 0xa8

    if-eq v1, p0, :cond_3

    const/16 p0, 0xa9

    if-eq v1, p0, :cond_3

    return v0

    :cond_3
    return v2

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    :goto_0
    return v2

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->handleCameraKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_7
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->handleVolumeKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public registerKeyEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "LayerKeyEventManager"

    const-string p1, "registerKeyEventListener parameter is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mKeyEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterAllKeyEventListeners()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->mKeyEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
