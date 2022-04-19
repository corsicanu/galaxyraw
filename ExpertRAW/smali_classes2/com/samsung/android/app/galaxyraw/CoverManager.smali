.class Lcom/samsung/android/app/galaxyraw/CoverManager;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "CoverManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;


# static fields
.field private static TAG:Ljava/lang/String; = "CoverManager"


# instance fields
.field private final mCaptureEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;

.field private mCoverType:I

.field private mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

.field private mIsCoverAttached:Z

.field private mLastOrientation:I

.field private final mLaunchDummyActivityRunnable:Ljava/lang/Runnable;

.field private mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "galaxyRawContext"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLastOrientation:I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$CoverManager$LWwR6GF_iwsn5gnaL6WNnLIz8jI;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$CoverManager$LWwR6GF_iwsn5gnaL6WNnLIz8jI;-><init>(Lcom/samsung/android/app/galaxyraw/CoverManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLaunchDummyActivityRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/CoverManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/CoverManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/CoverManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/CoverManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/CoverManager$2;-><init>(Lcom/samsung/android/app/galaxyraw/CoverManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCaptureEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    new-instance p1, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->isFakeCover()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    sget-object p1, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager init - mCoverType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsCoverAttached "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->initLedBackManager()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->registerScoverStateListener()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/CoverManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyStartCameraTimer(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/CoverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyCancelCameraTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/CoverManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isShutterLEDIconRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/CoverManager;)Lcom/sec/android/cover/ledback/sdk/LedBackManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    return-object p0
.end method

.method private clearLedBackManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "clearLedBackManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCaptureEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->unregisterCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->unregisterCameraLocalBroadcastReceiver()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    :cond_0
    return-void
.end method

.method private handleCoverClosed()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "finish secure mGalaxyRawContext when cover close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.galaxyraw"

    const-string v2, "com.samsung.android.app.galaxyraw.DummyActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v0, "DummyActivity was disabled!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLaunchDummyActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLaunchDummyActivityRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private initLedBackManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "initLedBackManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->start()Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->registerCameraLocalBroadcastReceiver()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCaptureEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->registerCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyCameraFacingInfo()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyRecordingModeInfo()V

    :cond_0
    return-void
.end method

.method private isLedBackCoverAvailable()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isShutterLEDIconRequired()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$LWwR6GF_iwsn5gnaL6WNnLIz8jI(Lcom/samsung/android/app/galaxyraw/CoverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->launchDummyActivity()V

    return-void
.end method

.method private launchDummyActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.galaxyraw"

    const-string v2, "com.samsung.android.app.galaxyraw.DummyActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v0, "DummyActivity was disabled!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyCameraOrientation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLastOrientation:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOrientation mLastOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLastOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLastOrientation:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->setCameraOrientation(I)Z

    :cond_0
    return-void
.end method

.method private notifyCancelCameraTimer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyCancelCameraTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {p0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->cancelCameraEvent()Z

    :cond_0
    return-void
.end method

.method private notifyStartCameraTimer(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countDownTime"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyStartCameraTimer countDownTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " beginTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->setCameraTimer(IJ)Z

    :cond_0
    return-void
.end method

.method private registerCameraLocalBroadcastReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.SHUTTER_TIMER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.SHUTTER_TIMER_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerScoverStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    return-void
.end method

.method private unregisterCameraLocalBroadcastReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private unregisterScoverStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->unregisterScoverStateListener()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->clearLedBackManager()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-void
.end method

.method getCoverType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    return p0
.end method

.method isCoverAttached()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    return p0
.end method

.method isSupportHrmShutterInCurrentCoverType(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coverType"
        }
    .end annotation

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/16 p0, 0xc

    if-eq p1, p0, :cond_0

    const/16 p0, 0xe

    if-eq p1, p0, :cond_0

    const/16 p0, 0x9

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method notifyCameraFacingInfo()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCameraFacingInfo facing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->setRearPreview(Z)Z

    :cond_1
    return-void
.end method

.method notifyRecordingModeInfo()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyRecordingModeInfo isRecordingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->setCameraRecordingMode(Z)Z

    :cond_0
    return-void
.end method

.method notifyStartVideoRecording()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyStartVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {p0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->startLEDVideoRecording()Z

    :cond_0
    return-void
.end method

.method notifyStopVideoRecording()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyStopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {p0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->stopLEDVideoRecording()Z

    :cond_0
    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->roundOrientation(I)I

    move-result p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOrientationChanged newOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyCameraOrientation(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyCameraOrientation(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyCameraOrientation(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->isFakeCover()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result v1

    const-string v2, " mIsCoverAttached "

    if-eqz v1, :cond_7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isSupportHrmShutterInCurrentCoverType(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "camera.action.COVER_ATTACHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "camera.action.COVER_DETACHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCoverStateChanged mCoverType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    const/16 v2, 0xe

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->initLedBackManager()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->registerScoverForegroundLifetimeListeners()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->unregisterScoverForegroundLifetimeListeners()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->clearLedBackManager()V

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v0, "State Cover Close"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->handleCoverClosed()V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    if-nez p1, :cond_8

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    :cond_8
    sget-object p1, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCoverStateChanged camera is not running, mCoverType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mIsCoverAttached:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    return-void

    :cond_a
    :goto_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "Cover state is null or fake."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mCoverType:I

    return-void

    :cond_b
    :goto_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string p1, "galaxyRawContext is null or SCoverManger is null return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShootingModeChanged(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shootingMode",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShootingModeChanged shootingMode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->notifyRecordingModeInfo()V

    :cond_0
    return-void
.end method

.method onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mLedBackManager:Lcom/sec/android/cover/ledback/sdk/LedBackManager;

    invoke-virtual {p0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->cancelCameraEvent()Z

    :cond_0
    return-void
.end method

.method registerScoverForegroundLifetimeListeners()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "registerScoverForegroundLifetimeListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->registerListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    :cond_0
    return-void
.end method

.method start()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CoverManager;->initLedBackManager()V

    :cond_0
    return-void
.end method

.method unregisterScoverForegroundLifetimeListeners()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->unregisterListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CoverManager;->mGalaxyRawContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    return-void
.end method
