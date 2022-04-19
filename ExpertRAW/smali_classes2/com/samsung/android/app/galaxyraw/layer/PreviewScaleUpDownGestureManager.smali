.class Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;
.super Ljava/lang/Object;
.source "PreviewScaleUpDownGestureManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mDownSpan:F

.field private mIsConsumeTouchEvent:Z

.field private mIsStarted:Z

.field private mLayerScaleUpDownEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public getScaleUpDownGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mIsStarted:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mIsConsumeTouchEvent:Z

    return p0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mDownSpan:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mLayerScaleUpDownEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$Ix5G92L3WS05zbfX-YN-ugFQRNk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$Ix5G92L3WS05zbfX-YN-ugFQRNk;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mDownSpan:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    sub-float/2addr v2, v1

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mLayerScaleUpDownEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$rWJNn08X7ZKfIaf2o69xqSknGMg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$rWJNn08X7ZKfIaf2o69xqSknGMg;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mDownSpan:F

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mDownSpan:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mIsConsumeTouchEvent:Z

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mIsConsumeTouchEvent:Z

    return-void
.end method

.method public setScaleUpDownEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mLayerScaleUpDownEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mIsStarted:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->mIsStarted:Z

    return-void
.end method
