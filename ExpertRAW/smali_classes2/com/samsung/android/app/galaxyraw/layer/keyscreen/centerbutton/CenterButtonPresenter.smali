.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;
.super Ljava/lang/Object;
.source "CenterButtonPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "CenterButtonPresenter"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private final mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    return-void
.end method

.method private isFloatingShutterButtonAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isFloatingCameraButtonSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "selfie_tone_camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "CREATE_MY_FILTER_SELECTED_IMAGE_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-eq p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public onFloatingShutterButtonMove(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->updateFloatingButtonPosition(II)V

    return-void
.end method

.method public onLongPress()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonLongPress(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onPauseButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordPauseButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onRecordButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onRecordStopButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onRefreshFloatingShutterButton(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCenterButtonVisible"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->isFloatingShutterButtonAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->showFloatingShutterButton()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->hideFloatingShutterButton(Z)V

    :goto_1
    return-void
.end method

.method public onResumeButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordResumeButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterButtonSwipeUp(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultX",
            "defaultY"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->showFloatingShutterButton()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->updateFloatingButtonPosition(II)V

    return v2
.end method

.method public onStopButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onSwipeDownEnd()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onSwipeDownReachMax()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performShutterButtonActionOnSwipeDown(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onSwipeDownStarted()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCaptureAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;->startCenterButtonSpringAnimation()V

    const/4 p0, 0x1

    return p0
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;->resetView()V

    return-void
.end method
