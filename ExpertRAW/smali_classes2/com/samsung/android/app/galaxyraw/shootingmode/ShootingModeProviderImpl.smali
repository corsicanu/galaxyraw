.class public Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;,
        Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$Builder;
    }
.end annotation


# static fields
.field private static final STATE_ACTIVATED:I = 0x2

.field private static final STATE_ACTIVATING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_INACTIVATING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShootingModeProvider"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

.field private mCurrentShootingModeId:I

.field private mCurrentShootingModeState:I

.field private mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private final mFeatureProvider:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;

.field private final mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

.field private final mShootingModeBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingModesList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "cameraSettings",
            "shootingActionProvider"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$1;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingModeBuilderMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;

    invoke-direct {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mFeatureProvider:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->registerLowMemoryListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->registerLowMemoryListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V

    return-void
.end method

.method private clearInactiveShootingMode()V
    .locals 6

    const-string v0, "ShootingModeProvider"

    const-string v1, "clearInactiveShootingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearing shooting mode class - id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableEventListeners(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->registerCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->unregisterCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->setShutterTimerEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->setPictureSavingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$PictureSavingEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->setShutterActionEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$ShutterActionEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;

    :cond_4
    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;->setRecordShutterActionEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider$RecordShutterActionEventListener;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getCurrentShootingModeName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentShootingModeTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureProvider()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeatureProvider;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mFeatureProvider:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;

    return-object p0
.end method

.method public getInitialShootingMode(Landroid/content/Intent;Z)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "isInMultiWindowMode"
        }
    .end annotation

    const-string v0, "activity_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "camerafacing"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "previous_mode"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const-string v2, "start_selfie_by_voicecommand"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v6, -0x1

    const-string v7, "ShootingModeProvider"

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultShootingMode()I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    :goto_0
    move v0, v4

    move v4, p1

    goto/16 :goto_7

    :cond_1
    const-string v2, "selfie_tone_camera"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v4

    goto/16 :goto_7

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v2

    const-string v9, "android.media.action.VIDEO_CAPTURE"

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v4

    :goto_1
    move v4, v8

    goto/16 :goto_7

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeCommandIdByActivityName(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p2

    if-nez p2, :cond_4

    move p2, v8

    goto :goto_2

    :cond_4
    move p2, v4

    :goto_2
    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)I

    move-result p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultShootingMode()I

    move-result p1

    goto :goto_0

    :cond_5
    if-nez v1, :cond_9

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move v4, v6

    goto/16 :goto_7

    :cond_9
    :goto_3
    const-string p1, ", CameraFacingName = "

    if-eqz v5, :cond_c

    const-string v1, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p1, "getInitialShootingMode : default shootingMode"

    invoke-static {v7, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultShootingMode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitialShootingMode : shootingModeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_b

    move p1, v8

    goto :goto_4

    :cond_b
    move p1, v4

    :goto_4
    invoke-static {v5, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeCommandIdByModeName(Ljava/lang/String;Z)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    goto :goto_5

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInitialShootingMode : shootingModeActivityName = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeCommandIdByActivityName(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    :goto_5
    if-eqz v3, :cond_f

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getTitleCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isEnable(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultShootingMode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    :cond_d
    const-string v1, "front"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v0, v4

    goto :goto_6

    :cond_e
    const-string v1, "back"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v0, v8

    :cond_f
    :goto_6
    if-eqz p2, :cond_10

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getSimpleOrderString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p2

    if-nez p2, :cond_10

    const-string p2, "getInitialShootingMode : Multi-window camera supports default shooting mode only."

    invoke-static {v7, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12036d

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v4}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/lang/String;I)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultShootingMode()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    :cond_10
    if-nez v0, :cond_11

    move v4, v8

    :cond_11
    invoke-static {p1, v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)I

    move-result v4

    :goto_7
    if-ne v4, v6, :cond_12

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultShootingMode(Z)I

    move-result v4

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInitialShootingMode : shootingMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", facing="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", getCameraLensType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p2, v0, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCameraId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;II)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setCameraId(I)V

    return v4
.end method

.method public initializeView()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShootingMode - InitializeView : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;->inflateView()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShootingMode - InitializeView : End["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getShootingModeLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;->addView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getShootingModeLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;->setBackKeyEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getShootingModeLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;->setVolumeKeyEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;)V

    return-void
.end method

.method public isActivated()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCurrentShootingModeId(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShootingAvailable()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->isShootingAvailable()Z

    move-result p0

    return p0
.end method

.method public onActivate()V
    .locals 10

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "ShootingModeProvider"

    const-string v0, "ShootingMode can not activate because it was already activated."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->getCurrentShootingModeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "ActivateShootingMode"

    invoke-static {v4}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShootingMode - onActivate("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") : Start["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "GalaxyRaw/CameraPerformance"

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onActivate(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->enableEventListeners(Z)V

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getScreenIdByShootingModeId(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "camera.action.ACTIVATE_SHOOTING_MODE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method public onConnectMakerPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Capability;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;)V
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onConnectMakerPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Capability;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mFeatureProvider:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->unregisterLowMemoryListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mFeatureProvider:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->unregisterLowMemoryListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LowMemoryListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->setMakerEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    return-void
.end method

.method public onInactivate()V
    .locals 8

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, "ShootingModeProvider"

    const-string v0, "ShootingMode can not inactivate because it was not activated."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->getCurrentShootingModeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShootingMode - onInactivate("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") : Start["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GalaxyRaw/CameraPerformance"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->enableEventListeners(Z)V

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onInactivate()V

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v3, Landroid/content/Intent;

    const-string v7, "camera.action.INACTIVATE_SHOOTING_MODE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowMemory(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->clearInactiveShootingMode()V

    return-void
.end method

.method public onStartPreviewPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onStartPreviewPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->clearInactiveShootingMode()V

    return-void
.end method

.method public onWatchEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onWatchEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider$WatchEvent;)V

    return-void
.end method

.method public setEngine(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->setMakerEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;)V

    return-void
.end method

.method public setShootingMode(IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeId",
            "isFacingSwitch"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShootingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShootingModeProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShootingMode - CreateShootingMode : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "newShootingMode"

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingModeBuilderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$Builder;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$Builder;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2, v5, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$Builder;->build(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;I)Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ShootingMode - CreateShootingMode : End["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :cond_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mFeatureProvider:Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/feature/ShootingModeFeatureProviderImpl;->setShootingMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isLayerInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->initializeView()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setShootingMode(IZ)V

    return-void
.end method
