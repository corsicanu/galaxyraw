.class public Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;
.super Ljava/lang/Object;
.source "ShootingModeOverlayLayerPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mFloatingShutterButtonPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonPresenter;

.field private final mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

.field private mTimerPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine",
            "view",
            "shootingActionProvider"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p3, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;->setBackButtonEnabled(Z)V

    return-void
.end method

.method private isDisplayCutoutAnimationAvailable()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DISPLAY_CUTOUT_ANIMATION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "selfie_tone_camera"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isOneHandMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isMultiCameraEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mTimerPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->clear()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mTimerPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;

    return-void
.end method

.method public createDisplayCutoutPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutContract$View;->setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V

    return-void
.end method

.method public createFloatShutterButtonPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonContract$View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mFloatingShutterButtonPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonContract$View;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mFloatingShutterButtonPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonPresenter;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mFloatingShutterButtonPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonPresenter;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonContract$View;->setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V

    return-void
.end method

.method public createTimerPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mTimerPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mTimerPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mTimerPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;->setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V

    return-void
.end method

.method public onBackButtonClick()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getDefaultShootingModeCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;->translateList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public onFloatingShutterButtonClick()Z
    .locals 1

    const-string v0, "0122"

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->FLOATING_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onHideScreenFlashRequested()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;->performHideScreenFlash()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_OVERLAY_SCREEN_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    return-void
.end method

.method public onStartDisplayCutoutAnimationRequested()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->isDisplayCutoutAnimationAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->onStartDisplayCutoutAnimationRequested()V

    :cond_0
    return-void
.end method

.method public onStartScreenFlashRequested()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_OVERLAY_SCREEN_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;->performStartScreenFlash()V

    return-void
.end method

.method public onTimerHideRequested()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mTimerPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->stop()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->isDisplayCutoutAnimationAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->onTimerHideRequested()V

    :cond_0
    return-void
.end method

.method public onTimerShowRequested()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mTimerPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->start()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->isDisplayCutoutAnimationAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->onTimerShowRequested()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->start()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mFloatingShutterButtonPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonPresenter;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mDisplayCutoutPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutPresenter;->stop()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;->mFloatingShutterButtonPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonPresenter;->stop()V

    return-void
.end method
