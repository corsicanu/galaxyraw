.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;
.super Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;
.source "TrackingAfTouchManager.java"


# static fields
.field private static final OBJECT_TRACKING_AREA_OFFSET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrackingAfManager"


# instance fields
.field private final mFocusSize:Landroid/util/Size;

.field private mIsLongPressed:Z


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

    new-instance p1, Landroid/util/Size;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mFocusSize:Landroid/util/Size;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mIsLongPressed:Z

    return-void
.end method

.method private setTrackingAf(Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    const-string v0, "TrackingAfManager"

    const-string v1, "setTrackingAf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->setTrackingAf(Landroid/graphics/Point;Landroid/util/Size;)V

    :cond_0
    return-void
.end method


# virtual methods
.method isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isTrackingAfAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
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

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mIsLongPressed:Z

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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mIsLongPressed:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mIsLongPressed:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mIsLongPressed:Z

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->isLockState()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeAfLock()V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTrackingAf()V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TrackingAfTouchManager;->setTrackingAf(Landroid/graphics/Point;)V

    :goto_0
    return v1
.end method

.method public onZoomVisibilityChanged()V
    .locals 0

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

    return-void
.end method
