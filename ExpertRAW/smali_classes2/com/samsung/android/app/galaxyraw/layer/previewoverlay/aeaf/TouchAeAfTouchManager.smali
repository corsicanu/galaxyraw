.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;
.super Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;
.source "TouchAeAfTouchManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchAeAfManager"


# instance fields
.field private mIsLongPressed:Z

.field private mLastTouchAeAfPoint:Landroid/graphics/Point;

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

    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mLastTouchAeAfPoint:Landroid/graphics/Point;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mIsLongPressed:Z

    return-void
.end method

.method private resetAeAfLock()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeLock()V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAfLock()V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeAfLock()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setTouchAe(Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    const-string v0, "TouchAeAfManager"

    const-string v1, "setTouchAe"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getFocusSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mLastTouchAeAfPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->setTouchAe(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->startTouchAeAfResetTimer()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onTouchAePositionChanged(II)V

    const-string p0, "0025"

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setTouchAeAf(Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    const-string v0, "TouchAeAfManager"

    const-string v1, "setTouchAeAf"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getFocusSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mLastTouchAeAfPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->setTouchAeAf(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->startTouchAeAfResetTimer()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onAeAfPositionChanged(II)V

    const-string p0, "0025"

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setTouchAf(Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    const-string v0, "TouchAeAfManager"

    const-string v1, "setTouchAf"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getFocusSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mLastTouchAeAfPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->setTouchAf(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->startTouchAeAfResetTimer()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onTouchAfPositionChanged(II)V

    const-string p0, "0025"

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLastTouchAeAfPoint()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mLastTouchAeAfPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isTrackingAfAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isMultiCameraEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onLongPressed(Landroid/graphics/Point;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mIsLongPressed:Z

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mIsLongPressed:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mIsLongPressed:Z

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->resetAeAfLock()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchAeAf()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchEv()V

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setTouch(Landroid/graphics/Point;)V

    return v2

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mIsLongPressed:Z

    :goto_0
    return v1
.end method

.method public onZoomVisibilityChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isTouchAeAfStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchAeAf()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchEv()V

    :cond_2
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    return-void
.end method

.method setTouch(Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    const-string v0, "TouchAeAfManager"

    const-string v1, "setTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    if-nez v1, :cond_0

    const-string p0, "PositionChangeListener is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isAeRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isAfRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isAeRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setTouchAf(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->isAfRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setTouchAe(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;->setTouchAeAf(Landroid/graphics/Point;)V

    :goto_0
    return-void
.end method
