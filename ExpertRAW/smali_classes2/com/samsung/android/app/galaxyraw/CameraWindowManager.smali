.class Lcom/samsung/android/app/galaxyraw/CameraWindowManager;
.super Ljava/lang/Object;
.source "CameraWindowManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;


# static fields
.field private static final DELAY_TIME_TO_CHANGE_LAYOUT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "CameraWindowManager"


# instance fields
.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mIsMultiWindowModeChanged:Z

.field private mIsPreDrawListenerRegistered:Z

.field private final mLayoutChangedRunnable:Ljava/lang/Runnable;

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMainLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;Lcom/samsung/android/app/galaxyraw/MainLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "layout"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mIsPreDrawListenerRegistered:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mIsMultiWindowModeChanged:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/CameraWindowManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$CameraWindowManager$Dh0wk_b2XXHEHavVENT1u0ebgak;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$CameraWindowManager$Dh0wk_b2XXHEHavVENT1u0ebgak;-><init>(Lcom/samsung/android/app/galaxyraw/CameraWindowManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mLayoutChangedRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mMainLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/CameraWindowManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-object p0
.end method

.method private getAvailableDisplayMode()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private unregisterPreDrawListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mMainLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mIsPreDrawListenerRegistered:Z

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->unregisterPreDrawListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    const-string p0, "CameraWindowManager"

    const-string v0, "clear"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getMultiWindowMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {p0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const-string p0, "CameraWindowManager"

    const-string v1, "checkMultiWindowMode : current mode is multiWindowMode. but could not find mode type"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method initialize()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize : Camera will be recreated because densityDpi is changed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mMainLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/MainLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->recreate()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->registerListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    return-void
.end method

.method isNeedRecreate(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isInMultiWindowMode"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p0

    xor-int/2addr p0, p1

    if-eqz p0, :cond_0

    const-string p0, "CameraWindowManager"

    const-string p1, "isNeedRecreate : Camera should be recreated"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$CameraWindowManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->updatePreviewLayoutSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->getMultiWindowMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mMainLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method lockCurrentOrientation(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    const-string v0, "CameraWindowManager"

    const/4 v1, 0x4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isCapturing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;

    if-ne p1, v2, :cond_5

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getRequestedOrientation()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getDisplayRotation()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setRequestedOrientation(I)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestedOrientation : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getDisplayRotation()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getRequestedOrientation()I

    move-result p1

    if-eq p1, v1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setRequestedOrientation(I)V

    const-string p0, "setRequestedOrientation : SENSOR"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->registerPreDrawListener()V

    :cond_0
    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged : orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dp, w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dp, h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mIsMultiWindowModeChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged : Camera will be recreated because densityDpi is changed - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mMainLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->recreate()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->registerPreDrawListener()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->getMultiWindowMode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.CONFIGURATION_ORIENTATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "orientation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isInMultiWindowMode",
            "newConfig"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mIsMultiWindowModeChanged:Z

    if-nez p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->isNeedRecreate(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "camerafacing"

    const-string v0, "front"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result p1

    const-string p2, "previous_mode"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Video"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Photo"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->showPausingView()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onMultiWindowModeChanged : Camera will be recreated because multi window mode is changed - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraWindowManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->recreate()V

    :cond_6
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->getMultiWindowMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mMainLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/MainLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mLayoutChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mLayoutChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->unregisterPreDrawListener()V

    const/4 p0, 0x1

    return p0
.end method

.method registerPreDrawListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mIsPreDrawListenerRegistered:Z

    if-eqz v0, :cond_0

    const-string p0, "CameraWindowManager"

    const-string v0, "registerPreDrawListener - returned because PreDrawListener have already registered"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mMainLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/MainLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mIsPreDrawListenerRegistered:Z

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method requestSystemKeyEvents(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-virtual {v0, v2, v1, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    return-void
.end method

.method setupWindowAttributes()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mMainLayout:Lcom/samsung/android/app/galaxyraw/MainLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/MainLayout;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/MainLayout;->setSystemUiVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->disablePreviewScreenshots(Landroid/content/Context;Z)V

    return-void
.end method

.method unregister()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->unregisterListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    return-void
.end method

.method updatePreferredDisplayMode()V
    .locals 7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DISPLAY_FRAME_RATE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->getAvailableDisplayMode()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display$Mode;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    sget-object v5, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DISPLAY_FRAME_RATE_IN_HZ:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v5

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreferredDisplayMode: preferredDisplayMode id: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", RefreshRate: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CameraWindowManager"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method
