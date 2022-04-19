.class abstract Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;
.super Ljava/lang/Object;
.source "AbstractAeAfTouchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;
    }
.end annotation


# instance fields
.field protected mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

.field protected mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field protected mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field protected mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field protected mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

.field protected mTouchBoundary:Landroid/graphics/Rect;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    return-void
.end method


# virtual methods
.method getFocusSize()Landroid/util/Size;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isTouchEvSupported()Z

    move-result v0

    const v1, 0x7f07001f

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->getFocusSizeFromResource(II)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f070021

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->getFocusSizeFromResource(II)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method getFocusSizeFromResource(II)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getTouchBoundary()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mTouchBoundary:Landroid/graphics/Rect;

    return-object p0
.end method

.method getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchPoint",
            "focusSize"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mTouchBoundary:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mTouchBoundary:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mTouchBoundary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/Util;->clamp(III)I

    move-result v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mTouchBoundary:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mTouchBoundary:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    invoke-static {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->clamp(III)I

    move-result p0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method isAeAfLockState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method isAeLockState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method isAeRestricted()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isTouchAeSupported()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method isAfLockState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method isAfRestricted()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isTouchAfSupported()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method abstract isAvailable()Z
.end method

.method isLockState()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isAeAfLockState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isAeLockState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->isAfLockState()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method isTouchAeAfStarted()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

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

.method isTrackingAfStarted()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_FOCUSING:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_NOT_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne p0, v0, :cond_0

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

.method public abstract onLongPressed(Landroid/graphics/Point;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation
.end method

.method public abstract onZoomVisibilityChanged()V
.end method

.method public abstract setAeAfPositionChangeListener(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public updateTouchBoundary(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutRect"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;->mTouchBoundary:Landroid/graphics/Rect;

    return-void
.end method
