.class Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;
.super Ljava/lang/Object;
.source "PreviewScaleZoomGestureManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mCurrentCalculatedValue:I

.field private mDistancePerStep:F

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mIsConsumeTouchEvent:Z

.field private mIsStarted:Z

.field private mLayerScaleZoomEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;

.field private mPreviousCalculatedValue:I

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mStartedDistance:F


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .locals 1
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

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mPreviousCalculatedValue:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCurrentCalculatedValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mStartedDistance:F

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mDistancePerStep:F

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private getZoomValue(F)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "span"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mStartedDistance:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mPreviousCalculatedValue:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mDistancePerStep:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCurrentCalculatedValue:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getZoomType()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getScalerAvailableMaxDigitalZoom(I)F

    move-result p1

    float-to-double v0, p1

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCurrentCalculatedValue:I

    int-to-float p1, p1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getTotalZoomLevel()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMaxZoomLevel()I

    move-result v0

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMaxZoomLevel()I

    move-result p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    return p1
.end method

.method private handleStartZoom(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "span"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getZoomType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getScalerAvailableMaxDigitalZoom(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/Util;->logN(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getTotalZoomLevel()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCurrentCalculatedValue:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mPreviousCalculatedValue:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mStartedDistance:F

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    int-to-float p1, p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getTotalZoomLevel()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mDistancePerStep:F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->startTransientZooming()V

    return-void
.end method

.method private handleStopZoom()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->stopTransientZooming()V

    return-void
.end method

.method private showZoomNotSupportedToast()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackPhotoBodyBeautyType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackVideoBodyBeautyType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f12036e

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f12047e

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->showZoomNotSupportedToast(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mIsStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    return p0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomAvailable()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->getZoomValue(F)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mLayerScaleZoomEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;->onScale(I)V

    :cond_1
    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomSupported()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->showZoomNotSupportedToast()V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    return v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->handleStartZoom(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mLayerScaleZoomEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;->onScaleBegin()V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mIsConsumeTouchEvent:Z

    :cond_2
    return v0
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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->handleStopZoom()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mLayerScaleZoomEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;->onScaleEnd()V

    :cond_1
    return-void
.end method

.method public setLayerScaleZoomEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mLayerScaleZoomEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mIsStarted:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->mIsStarted:Z

    return-void
.end method
