.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;
.super Ljava/lang/Object;
.source "LeftButtonPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "LeftButtonPresenter"


# instance fields
.field private final mAssistantMenuReceiver:Landroid/content/BroadcastReceiver;

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mNoImageToast:Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

.field private final mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "view",
            "shootingActionProvider",
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mAssistantMenuReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$View;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    return-void
.end method

.method private showNoImageToast()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120365

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mNoImageToast:Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/lang/String;I)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mNoImageToast:Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public getQuickViewThumbnailLoader()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/QuickViewThumbnailLoader;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    return-object v0
.end method

.method public synthetic lambda$onRegisterAssistantMenu$0$LeftButtonPresenter()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mAssistantMenuReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/AssistantMenuManager;->registerItem(ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPauseButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordPauseButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onQuickViewButtonClick()V
    .locals 2

    const-string v0, "LeftButtonPresenter"

    const-string v1, "onQuickViewButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->isShutterProgressWheelVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isPictureSaving()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "onQuickViewButtonClick : Picture saving is now in progress."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLatestMedia()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "onQuickViewButtonClick : Latest media is not ready."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLatestMedia()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "onQuickViewButtonClick : No images in gallery."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->showNoImageToast()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v1

    if-nez v1, :cond_4

    const-string p0, "onQuickViewButtonClick : ShootingMode is not activated yet."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "onQuickViewButtonClick : Preview animation is running."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v0, "0014"

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->startViewerFragment()V

    return-void

    :cond_6
    :goto_0
    const-string p0, "onQuickViewButtonClick : Capture is now in progress."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRegisterAssistantMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonPresenter$Zr25mDTie86j9lHKX_UL8zbhwUo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonPresenter$Zr25mDTie86j9lHKX_UL8zbhwUo;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResumeButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordResumeButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onSnapShotButtonClick()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->performRecordSnapShotButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$View;->cancelAllAnimator()V

    return-void
.end method
