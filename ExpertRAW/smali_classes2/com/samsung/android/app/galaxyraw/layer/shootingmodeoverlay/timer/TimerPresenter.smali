.class public Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;
.super Ljava/lang/Object;
.source "TimerPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TimerPresenter"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mIsSoundAvailable:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mRemainTimeInSeconds:I

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;)V
    .locals 1
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

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    return-object p0
.end method

.method private stopTimerSound()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mRemainTimeInSeconds:I

    if-lez v0, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->TIMER_TICK_2SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->stopSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public onTimerTick(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remainTimeInSeconds"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimerTick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimerPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mRemainTimeInSeconds:I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;->hideTimer()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;->updateTimerNumber(I)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mIsSoundAvailable:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mRemainTimeInSeconds:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->TIMER_TICK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraAudioManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;->TIMER_TICK_2SEC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager;->playSound(Lcom/samsung/android/app/galaxyraw/interfaces/CameraAudioManager$SoundId;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEventRequested(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    :goto_0
    float-to-int p1, p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getViewVisibleRect(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public start()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;->setProgressWheelGuideLine(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->getTimerMode()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_ONESHOT:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;->showProgressPieTimer()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->getTimerMode()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->getDuration()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;->showProgressWheelTimer(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_OVERLAY_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->setShootingModeLayerVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->setBottomBackgroundPosition(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mIsSoundAvailable:Z

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerContract$View;->hideTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->stopTimerSound()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mRemainTimeInSeconds:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->setShootingModeLayerVisibility(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_OVERLAY_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->resetBottomBackground(Z)V

    return-void
.end method
