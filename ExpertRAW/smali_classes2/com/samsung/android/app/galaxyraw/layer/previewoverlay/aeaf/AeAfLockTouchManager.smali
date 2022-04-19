.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;
.super Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;
.source "AeAfLockTouchManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AeAfLockManager"


# instance fields
.field private mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    return-void
.end method


# virtual methods
.method isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isTouchAfSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isTouchAeSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeAfLockSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isMultiCameraEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public onLongPressed(Landroid/graphics/Point;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTrackingAf()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->isTouchAeAfStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchAeAf()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchEv()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->setAeAfLock(Landroid/graphics/Point;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onZoomVisibilityChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->isAeAfLockState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->isAeAfLockState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->unlockAwb()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAfLock()V

    :cond_2
    return-void
.end method

.method setAeAfLock(Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    const-string v0, "AeAfLockManager"

    const-string v1, "setAeAfLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    if-nez v1, :cond_0

    const-string p0, "PositionChangeListener is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->getFocusSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->setAeAfLock(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onAeAfPositionChanged(II)V

    :cond_1
    return-void
.end method

.method public setAeAfPositionChangeListener(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfLockTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    return-void
.end method
