.class public Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;
.super Ljava/lang/Object;
.source "PreviewAnimationLayerPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewLayerPresenter"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mPausedPreviewSnapShotBitmap:Landroid/graphics/Bitmap;

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine",
            "view"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;

    invoke-interface {p2, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->registerPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic lambda$onPreviewSnapShotTaken$0$PreviewAnimationLayerPresenter(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v0, p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;->startPreviewAnimation(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)V

    return-void
.end method

.method public onPreparePausedPreviewSnapshotRequested()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SHOW_PAUSED_PREVIEW_TO_RESUME_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->RESUME_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->requestPreviewAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onPreviewAnimationRequested(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewAnimationType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->takePreviewSnapshot(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;->cancelPreviewAnimation()V

    :goto_0
    return-void
.end method

.method public onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "previewAnimationType"
        }
    .end annotation

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;->RESUME_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mPausedPreviewSnapShotBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mPausedPreviewSnapShotBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mPausedPreviewSnapShotBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerPresenter$TAeQoUXt7TGgb44hhdshnb8FfD0;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/-$$Lambda$PreviewAnimationLayerPresenter$TAeQoUXt7TGgb44hhdshnb8FfD0;-><init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->onShowResumeCameraAnimationRequested()V

    return-void
.end method

.method public onShowResumeCameraAnimationRequested()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mPausedPreviewSnapShotBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mPausedPreviewSnapShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mPausedPreviewSnapShotBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    invoke-static {v4, v0, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;->startPreviewAnimation(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mPausedPreviewSnapShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mPausedPreviewSnapShotBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;->hidePreviewAnimation(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;->setPendingArea(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;->cancelAllAnimator()V

    return-void
.end method
