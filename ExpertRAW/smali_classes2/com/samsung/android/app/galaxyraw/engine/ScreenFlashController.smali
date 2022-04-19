.class Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;
.super Ljava/lang/Object;
.source "ScreenFlashController.java"


# instance fields
.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mIsNightScreenFlashStarted:Z

.field private mIsScreenFlashStarted:Z

.field private mNightScreenFlashEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;

.field private mScreenFlashEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mScreenFlashEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mNightScreenFlashEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mIsScreenFlashStarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mIsNightScreenFlashStarted:Z

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method


# virtual methods
.method isNightScreenFlashAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isNightScreenFlashSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_NIGHT_SCREEN_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ShootingModeFeature$SupportedNightType:[I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedNightType()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedNightType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedNightType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isBokehNightSupported()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isFrontPhotoNightModeSupported()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFrontNightMode()I

    move-result p0

    if-ne p0, v2, :cond_8

    move v1, v2

    :cond_8
    return v1
.end method

.method isNightScreenFlashRequired()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isNightScreenFlashAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result p0

    return p0
.end method

.method isNightScreenFlashStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mIsNightScreenFlashStarted:Z

    return p0
.end method

.method isScreenFlashAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_SCREEN_FLASH_VI:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method isScreenFlashRequired()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->isScreenFlashAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method isScreenFlashStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mIsScreenFlashStarted:Z

    return p0
.end method

.method public synthetic lambda$startNightScreenFlash$0$ScreenFlashController()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mNightScreenFlashEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;->onNightScreenFlashStarted()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$startScreenFlash$1$ScreenFlashController()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mScreenFlashEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;->onScreenFlashStarted()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$stopNightScreenFlash$2$ScreenFlashController()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mNightScreenFlashEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;->onNightScreenFlashStopped()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$stopScreenFlash$3$ScreenFlashController()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mScreenFlashEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;->onScreenFlashStopped()V

    :cond_0
    return-void
.end method

.method setNightScreenFlashEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mNightScreenFlashEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;

    return-void
.end method

.method setScreenFlashEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mScreenFlashEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;

    return-void
.end method

.method startNightScreenFlash()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mIsNightScreenFlashStarted:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ScreenFlashController$JvbJVluipRykCsgPLkZtgcLrD-8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ScreenFlashController$JvbJVluipRykCsgPLkZtgcLrD-8;-><init>(Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method startScreenFlash()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mIsScreenFlashStarted:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->setLcdFlashMode(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ScreenFlashController$5Obpy2UcMgFe3JiutUxnS8IyITg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ScreenFlashController$5Obpy2UcMgFe3JiutUxnS8IyITg;-><init>(Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mIsScreenFlashStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->stopScreenFlash()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mIsNightScreenFlashStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->stopNightScreenFlash()V

    :cond_1
    return-void
.end method

.method stopNightScreenFlash()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mIsNightScreenFlashStarted:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ScreenFlashController$FNNEY0dDCB8WVtIm9V7DNGmy190;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ScreenFlashController$FNNEY0dDCB8WVtIm9V7DNGmy190;-><init>(Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method stopScreenFlash()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mIsScreenFlashStarted:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->setLcdFlashMode(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ScreenFlashController$pBkd8ttvMaRWvNoTnmSNJ1vB1zI;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$ScreenFlashController$pBkd8ttvMaRWvNoTnmSNJ1vB1zI;-><init>(Lcom/samsung/android/app/galaxyraw/engine/ScreenFlashController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
