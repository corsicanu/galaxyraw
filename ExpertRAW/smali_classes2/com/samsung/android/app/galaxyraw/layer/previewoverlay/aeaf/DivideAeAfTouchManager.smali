.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;
.super Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager;
.source "DivideAeAfTouchManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DivideAeAfTouchManager"


# instance fields
.field private mFocusSize:Landroid/util/Size;

.field private mIsDivideAeMoving:Z

.field private mIsDivideAfMoving:Z

.field private mIsDivided:Z

.field private final mLastDivideAePoint:Landroid/graphics/Point;

.field private final mLastDivideAfPoint:Landroid/graphics/Point;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAePoint:Landroid/graphics/Point;

    const p1, 0x7f07001f

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->getFocusSizeFromResource(II)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivided:Z

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivideAfMoving:Z

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivideAeMoving:Z

    return-void
.end method

.method private checkDivideAeBoundary(Landroid/graphics/Point;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-gt p1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private checkDivideAfBoundary(Landroid/graphics/Point;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-gt p1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private handleDivideAfTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "touchPoint"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    if-nez v0, :cond_0

    const-string p0, "DivideAeAfTouchManager"

    const-string p1, "handleDivideAfTouchEvent return - PositionChangeListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->translateTouchPoint(II)Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onDivideAfLockPositionChanged(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->checkDivideAeBoundary(Landroid/graphics/Point;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeAfLock()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setDivideAeAfLock(Landroid/graphics/Point;)V

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivided:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setDivideAfLock(Landroid/graphics/Point;)V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivided:Z

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivideAfMoving:Z

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivideAfMoving:Z

    :goto_1
    return-void
.end method

.method private setDivideAeLock(Landroid/graphics/Point;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    const-string v0, "DivideAeAfTouchManager"

    const-string v1, "setDivideAeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->setAeLock(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onDivideAeLockPositionChanged(II)V

    :cond_0
    return-void
.end method

.method private setDivideAfLock(Landroid/graphics/Point;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    const-string v0, "DivideAeAfTouchManager"

    const-string v1, "setDivideAfLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->setAfLock(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onDivideAfLockPositionChanged(II)V

    :cond_0
    return-void
.end method

.method private translateTouchPoint(II)Landroid/graphics/Point;
    .locals 5
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getDisplayRotation()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p1, v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->getFocusSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    move p1, p2

    move p2, p0

    goto :goto_0

    :cond_1
    sub-int p0, v1, p2

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    move p1, p0

    :goto_0
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public handleDivideAeAfTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "touchPoint"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeAfLockState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivided:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->handleDivideAeTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->handleDivideAfTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)V

    :goto_0
    return-void
.end method

.method public handleDivideAeTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "touchPoint"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    if-nez v0, :cond_0

    const-string p0, "DivideAeAfTouchManager"

    const-string p1, "handleDivideAeTouchEvent return - PositionChangeListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->translateTouchPoint(II)Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onDivideAeLockPositionChanged(II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->checkDivideAfBoundary(Landroid/graphics/Point;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivided:Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeAfLock()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setDivideAeAfLock(Landroid/graphics/Point;)V

    const-string p1, "0024"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivided:Z

    if-nez p1, :cond_4

    const-string p1, "0023"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_4
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivided:Z

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setDivideAeLock(Landroid/graphics/Point;)V

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivideAeMoving:Z

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivided:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Point;->set(II)V

    :cond_6
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivideAeMoving:Z

    :goto_1
    return-void
.end method

.method isAeAfDivided()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivided:Z

    return p0
.end method

.method isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mShootingModeFeature:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onLongPressed(Landroid/graphics/Point;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivideAfMoving:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivideAeMoving:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isTouchAeAfStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchAeAf()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTouchEv()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetTrackingAf()V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setDivideLock(Landroid/graphics/Point;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
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

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeAfLockState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeAfLockState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->unlockAwb()V

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    return-void
.end method

.method setDivideAeAfLock(Landroid/graphics/Point;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    const-string v0, "DivideAeAfTouchManager"

    const-string v1, "setDivideAeAfLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->getFocusSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivideAfMoving:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivideAeMoving:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mIsDivided:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAePoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mLastDivideAfPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mFocusSize:Landroid/util/Size;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->setAeAfLock(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;->onDivideAeAfLockPositionChanged(II)V

    :cond_0
    return-void
.end method

.method setDivideLock(Landroid/graphics/Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPoint"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->mPositionChangeListener:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AbstractAeAfTouchManager$AeAfPositionChangeListener;

    if-nez v0, :cond_0

    const-string p0, "DivideAeAfTouchManager"

    const-string p1, "setDivideLock return - PositionChangeListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAfRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAeRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setDivideAfLock(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->isAfRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setDivideAeLock(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/DivideAeAfTouchManager;->setDivideAeAfLock(Landroid/graphics/Point;)V

    :goto_0
    return-void
.end method
