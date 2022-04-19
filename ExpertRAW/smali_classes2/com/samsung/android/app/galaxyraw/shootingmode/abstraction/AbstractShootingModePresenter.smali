.class public abstract Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;
.super Ljava/lang/Object;
.source "AbstractShootingModePresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$PictureSavingEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;,
        Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$Presenter;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$PictureSavingEventListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractShootingModePresenter"


# instance fields
.field protected final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field protected final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field protected mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private mInputType:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mSettingChangedListenerKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field protected final mShootingModeId:I

.field protected final mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "view",
            "shootingModeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;",
            "TV;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mShootingModeId:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setOverheatLevel()V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.OVERHEAT_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private sendSALogForPictureTaken()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const-string v2, "2002"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mInputType:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getCaptureInputType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "0011"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "0016"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "0012"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "0013"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getBrightnessValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "0014"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->getFaceCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "0015"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "0017"

    const/16 v6, 0x3e8

    if-ge v1, v6, :cond_2

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v8}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v8

    if-ne v7, v8, :cond_1

    const-string v7, "a"

    goto :goto_0

    :cond_1
    const-string v7, "b"

    :goto_0
    aput-object v7, v6, v4

    const-string v4, "%s"

    invoke-static {v1, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v8

    div-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result v4

    rem-int/2addr v4, v6

    if-nez v4, :cond_3

    const-string v4, ""

    goto :goto_1

    :cond_3
    const-string v4, "x"

    :goto_1
    aput-object v4, v7, v3

    const-string v4, "%d%s"

    invoke-static {v1, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getOrientation()I

    move-result v1

    add-int/lit16 v1, v1, 0x10e

    rem-int/lit16 v1, v1, 0x168

    div-int/lit8 v1, v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "0019"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "0029"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mInputType:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getCaptureInputType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "2005"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "2006"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getBrightnessValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "2007"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isMotionPhotoSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "2009"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "2014"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "2016"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->updateSALogForPictureTaken(Ljava/util/HashMap;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-ne p0, v3, :cond_8

    const-string p0, "0020"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_4

    :cond_8
    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_4
    return-void
.end method

.method private setOverheatLevel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getOverheatLevel()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->setOverheatLevel(I)V

    return-void
.end method


# virtual methods
.method protected changeZoomAngleButton(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    const/4 p1, 0x4

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->handleGestureEvent(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return v0

    :cond_0
    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    const/4 p1, 0x3

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->handleGestureEvent(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected getCenterButtonAction()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getCenterButtonProperty()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method protected getMinZoomLevel(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensTypeCommandId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getCameraId(II)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel(I)I

    move-result p0

    return p0
.end method

.method protected abstract getQuickSettingItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end method

.method protected getSecondTeleZoomShortcutLevel()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method

.method protected getTeleZoomShortcutLevel()I
    .locals 1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BACK_TELE_CAMERA_ZOOM_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BACK_TELE_CAMERA_ZOOM_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x7d0

    :goto_0
    return p0
.end method

.method protected getWideZoomShortcutLevel()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result p0

    return p0
.end method

.method protected handleBackKey()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected handlePictureSaved()V
    .locals 0

    return-void
.end method

.method protected handleShutterButtonCancel(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract handleShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation
.end method

.method protected handleShutterButtonLongPress(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected handleShutterButtonSwipeDown(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract initializeSettingChangedListenerKey()V
.end method

.method public isBottomBackgroundEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isShootingAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AbstractShootingModePresenter"

    if-eqz v0, :cond_0

    const-string p0, "Shooting is not available - Preview animation is running."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Shooting is not available - Post process is running."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Shooting is not available - Timer is running."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isGalleryActivityLaunching()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Shooting is not available - Gallery is launching."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method protected isStopShootingAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$registerCameraSettingChangedListeners$0$AbstractShootingModePresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public synthetic lambda$unregisterCameraSettingChangedListeners$1$AbstractShootingModePresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method protected abstract onActivate()V
.end method

.method public onActivate(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->getQuickSettingItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->refreshQuickSetting(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->getCenterButtonProperty()Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonProperty(Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mShootingModeId:I

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->refreshCenterButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->getCenterButtonAction()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonAction(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->isBottomBackgroundEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->enableBottomBackground(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->refreshZoomProperty()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->refreshKeyScreenView()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->refreshAeAfProperty()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onActivate()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->registerReceiver()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->registerCameraSettingChangedListeners()V

    return-void
.end method

.method public onBackKey()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->cancelShutterTimer()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->handleBackKey()Z

    move-result p0

    return p0
.end method

.method public onCaptureCancelled()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setCenterButtonStateForCapture(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;->CAPTURE_CANCELLED:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onCaptureEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setOverheatLevel()V

    return-void
.end method

.method public onCaptureCompleted()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setCenterButtonStateForCapture(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;->CAPTURE_COMPLETED:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onCaptureEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setOverheatLevel()V

    return-void
.end method

.method protected onCaptureEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    return-void
.end method

.method public onCaptureInterrupted()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setCenterButtonStateForCapture(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;->CAPTURE_INTERRUPTED:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onCaptureEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;)V

    return-void
.end method

.method public onCaptureRequested()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setCenterButtonStateForCapture(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;->CAPTURE_REQUESTED:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onCaptureEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;)V

    return-void
.end method

.method public onCaptureStarted()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setCenterButtonStateForCapture(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;->CAPTURE_STARTED:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onCaptureEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;)V

    return-void
.end method

.method public onCaptureStopped()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setCenterButtonStateForCapture(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;->CAPTURE_STOPPED:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onCaptureEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setOverheatLevel()V

    return-void
.end method

.method public abstract onConnectMakerPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Capability;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capability",
            "connectionInfo"
        }
    .end annotation
.end method

.method public onInactivate()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->refreshProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->hideView(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->resetCenterButtonAction()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getMenuLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;->collapseMenu()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->hideAllPopup()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->unregisterCameraSettingChangedListeners()V

    return-void
.end method

.method public onPictureSaved()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->handlePictureSaved()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->sendSALogForPictureTaken()V

    return-void
.end method

.method public onShutter()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;->SHUTTER_RECEIVED:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onCaptureEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;)V

    return-void
.end method

.method public onShutterButtonCancel(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->cancelShutterTimer()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->handleShutterButtonCancel(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonClick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractShootingModePresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->isStopShootingAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->stopCapture()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCaptureAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->cancelShutterAction()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onShutterButtonCancel(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->isCameraDialogVisible(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mInputType:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->handleShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterButtonLongPress(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonLongPress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractShootingModePresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mInputType:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->handleShutterButtonLongPress(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterButtonSwipeDown(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterButtonSwipeDown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractShootingModePresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mInputType:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->handleShutterButtonSwipeDown(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterTimerCanceled(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->hideTimer()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_ONESHOT:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    const/4 v0, -0x2

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->getCenterButtonProperty()Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonProperty(Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mShootingModeId:I

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->refreshCenterButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->getCenterButtonAction()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonAction(Ljava/util/List;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;->CANCELED:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onShutterTimerEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;)V

    return-void
.end method

.method protected onShutterTimerEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerEvent"
        }
    .end annotation

    return-void
.end method

.method public onShutterTimerFinished(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->hideTimer()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_ONESHOT:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    const/4 v0, -0x2

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->getCenterButtonProperty()Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonProperty(Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mShootingModeId:I

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->refreshCenterButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->getCenterButtonAction()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonAction(Ljava/util/List;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;->FINISHED:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onShutterTimerEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;)V

    return-void
.end method

.method public onShutterTimerStarted(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getMenuLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;->collapseMenu()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->hideAllPopup()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_ONESHOT:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->hideView(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    const/4 v0, -0x2

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->hideView(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->CUSTOM:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const v1, 0x7f080698

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonProperty(Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mShootingModeId:I

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->refreshCenterButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonAction(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->reduceArea()V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;->STARTED:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onShutterTimerEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->showTimer()V

    return-void
.end method

.method public abstract onStartPreviewPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "makerSettings",
            "capability"
        }
    .end annotation
.end method

.method public onStopButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->setCenterButtonStateForCapture(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onVolumeKeyDown(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomSupported()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->getButtonAreaVisibleRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    const p1, 0x7f12036e

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->showZoomNotSupportedToast(I)V

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onVolumeKeyUp(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isZoomAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->getButtonAreaVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->changeZoomAngleButton(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public onWatchEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    return-void
.end method

.method protected refreshAeAfProperty()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->CIRCLE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isTouchEvSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->EV_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAeAfLockSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->LOCK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->refreshAeAfProperty(Ljava/util/EnumSet;)V

    return-void
.end method

.method protected refreshKeyScreenView()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    return-void
.end method

.method protected refreshZoomProperty()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->refreshProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;)V

    return-void
.end method

.method protected registerCameraSettingChangedListeners()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->initializeSettingChangedListenerKey()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/-$$Lambda$AbstractShootingModePresenter$HnMPhG_HvHDon4ySD3f6F9qv9gA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/-$$Lambda$AbstractShootingModePresenter$HnMPhG_HvHDon4ySD3f6F9qv9gA;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected setCenterButtonStateForCapture(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    return-void
.end method

.method protected stopCapture()V
    .locals 0

    return-void
.end method

.method protected unregisterCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/-$$Lambda$AbstractShootingModePresenter$YOyxr5zJXVRWgh807WcVVTDGosE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/-$$Lambda$AbstractShootingModePresenter$YOyxr5zJXVRWgh807WcVVTDGosE;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected updateSALogForPictureTaken(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customDimen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
