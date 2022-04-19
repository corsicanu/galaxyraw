.class public Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;
.super Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;
.source "ProPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;,
        Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter<",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$Presenter;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;",
        "Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;"
    }
.end annotation


# static fields
.field private static final AUTO_MODE:I = 0x1

.field private static final INDICATOR_SHOW_DURATION:I = 0xbb8

.field private static final LONG_EV_SHOT_DELAY_MSEC:I = 0x3e8

.field private static final MANUAL_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProPresenter"

.field private static final mColorTunePrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mWideColorTunePrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final SHUTTER_SPEED_VALUE_OFFSET:I

.field private mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

.field private final mAfLensInfoEventManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;

.field private mAutoColorTemperatureValue:Ljava/lang/String;

.field private mAutoIsoValue:Ljava/lang/String;

.field private mAutoShutterSpeedValue:Ljava/lang/String;

.field private mChildPresenterCameraSettingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHideApertureIndicatorRunnable:Ljava/lang/Runnable;

.field private mIsMaxCountReached:Z

.field private mIsMultiAfRestoreNeeded:Z

.field private mIsNormalLensEvStateManual:Z

.field private mIsSecondTeleLensEvStateManual:Z

.field private mIsTeleLensEvStateManual:Z

.field private mIsWideLensEvStateManual:Z

.field private mLastNearestColorTemperature:I

.field private mLastNearestFocusDistance:I

.field private mLastNearestIso:I

.field private mLastShutterSpeed:I

.field private mProControlPanelManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

.field private mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

.field private mProSecondTeleSettingkeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProSettingkeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProSliderContainerManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

.field private mProSliderContainerPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

.field private mProTeleSettingkeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProWideSettingkeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorInfoEventManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;

.field private mShutterFastFillAnimator:Landroid/animation/ValueAnimator;

.field private mShutterProgressAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mColorTunePrefMap:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mWideColorTunePrefMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;I)V
    .locals 0
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

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00a4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->SHUTTER_SPEED_VALUE_OFFSET:I

    new-instance p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSensorInfoEventManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAfLensInfoEventManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastNearestIso:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsNormalLensEvStateManual:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsWideLensEvStateManual:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsTeleLensEvStateManual:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsSecondTeleLensEvStateManual:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMaxCountReached:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMultiAfRestoreNeeded:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$eF-ECXn7l6d-EZILzj3ds8aaMn0;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$eF-ECXn7l6d-EZILzj3ds8aaMn0;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mHideApertureIndicatorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->initializeProSettingKeyList()V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->initializeProWideSettingKeyList()V

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->initializeProTeleSettingKeyList()V

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SECOND_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->initializeProSecondTeleSettingKeyList()V

    :cond_2
    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAutoColorTemperatureValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastShutterSpeed:I

    return p0
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastShutterSpeed:I

    return p1
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAutoShutterSpeedValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isEvStateManual()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAutoIsoValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastNearestIso:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->startFastFillShutterAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastNearestFocusDistance:I

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastNearestFocusDistance:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getFocusSliderStep(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastNearestColorTemperature:I

    return p0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastNearestColorTemperature:I

    return p1
.end method

.method private clear()V
    .locals 2

    const-string v0, "ProPresenter"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideCaptureHelpText()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->endShutterProgressWheel()V

    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->enableSensorInfoCallback(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->enableDofMultiInfoCallback(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRawCaptureEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->enableRawPictureCallback(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->enableAfLensInfoCallback(Z)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HISTOGRAM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->enableHistogramPreviewCallback(Z)V

    :cond_2
    return-void
.end method

.method private enableEngineEventListeners(Z)V
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->registerPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->registerPostProcessingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->unregisterPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->unregisterPostProcessingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Lp8yFnWsEN7D-pJIJZ6n2Y91th4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Lp8yFnWsEN7D-pJIJZ6n2Y91th4;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->setHistogramUpdateListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$HistogramUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAfLensInfoEventManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$AfLensInfoEventManager;

    :cond_2
    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->setAfLensInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AfLensInfoListener;)V

    return-void
.end method

.method private enableMultiAF(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->enableMultiAf(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->enableMultiAfView(Z)V

    return-void
.end method

.method private getButtonText(II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAutoColorTemperatureValue:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getWhiteBalanceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getFocusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getExposureValueString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez p2, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAutoShutterSpeedValue:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_6
    if-nez p2, :cond_7

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAutoIsoValue:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getIsoString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getFocusSliderStep(I)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getMaxLensPosition()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getMinLensPosition()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-double v2, p1

    sub-int/2addr v1, p0

    add-int/lit8 v1, v1, 0x1

    int-to-double p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr p0, v6

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    sub-double/2addr p0, v6

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    double-to-int p0, v2

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private getPrefixZoomText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12039b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12039c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12039a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120399

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private getShutterSpeedTimeMillis()J
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getExposureTime(I)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private handleCaptureCancelled()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->resetShutter()V

    return-void
.end method

.method private handleCaptureCompleted()V
    .locals 0

    return-void
.end method

.method private handleCaptureRequested()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->reduceArea()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->hideView(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideActiveSlider(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideControlPanel()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShootingModeId:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;->hideBackButton()V

    :cond_1
    return-void
.end method

.method private handleCaptureStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->hideView(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->startShutterProgressWheel()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->setPreviewOverlayLayerVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showCaptureHelpText()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideHistogram()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isLongEvShutterSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->startLongEvShotShutterProgress()V

    :cond_1
    return-void
.end method

.method private handleShutterReceived()V
    .locals 2

    const-string v0, "ProPresenter"

    const-string v1, "handleShutterReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isLongEvShutterSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->stopLongEvShotShutterProgress()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->startFastFillShutterAnimation()V

    :goto_0
    return-void
.end method

.method private handleShutterSpeedChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isEvStateManual()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setShutterPriorityActivate(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getQuickSettingItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->refreshQuickSetting(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isEvStateManual()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setShutterPriorityActivate(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastShutterSpeed:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setShutterSpeed(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getQuickSettingItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->refreshQuickSetting(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initializeChildPresenterSettingChangedListenerKey()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MULTI_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private initializeProSecondTeleSettingKeyList()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSecondTeleSettingkeyList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSecondTeleSettingkeyList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSecondTeleSettingkeyList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSecondTeleSettingkeyList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSecondTeleSettingkeyList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSecondTeleSettingkeyList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initializeProSettingKeyList()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initializeProTeleSettingKeyList()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProTeleSettingkeyList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProTeleSettingkeyList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProTeleSettingkeyList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProTeleSettingkeyList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProTeleSettingkeyList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProTeleSettingkeyList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initializeProWideSettingKeyList()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isControlPanelShowRequired()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isEvStateManual()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsSecondTeleLensEvStateManual:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsTeleLensEvStateManual:Z

    return p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsWideLensEvStateManual:Z

    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsNormalLensEvStateManual:Z

    return p0
.end method

.method private isLongEvShutterSpeed()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p0

    const/16 v0, 0x1b

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPreviousFlashValueAuto()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_pro_previous_flash_value_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Bqf9snouoCw0CzFxjquoVowfHnw(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setProSettingDefault(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method public static synthetic lambda$Lp8yFnWsEN7D-pJIJZ6n2Y91th4(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->onHistogramUpdated([I)V

    return-void
.end method

.method private onHistogramUpdated([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "histogram"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/HistogramUtil;->fillMissingHistogramValues([I)V

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/HistogramUtil;->smoothHistogram([I)[I

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->updateHistogram([II)V

    return-void
.end method

.method private registerChildPresenterCameraSettingChangedListeners()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->initializeChildPresenterSettingChangedListenerKey()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$po_Z1Xf3w_I8KV7SDfJARE1f4OM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$po_Z1Xf3w_I8KV7SDfJARE1f4OM;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Ecwxgdb3qFMsATW2wfhQtjgM_PA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Ecwxgdb3qFMsATW2wfhQtjgM_PA;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private resetShutter()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->isExtend()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showControlPanel(Z)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->resetBottomBackground(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->setPreviewOverlayLayerVisibility(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideCaptureHelpText()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showHistogram()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isLongEvShutterSpeed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->stopLongEvShotShutterProgress()V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMaxCountReached:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->endShutterProgressWheel()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/16 v0, 0x4d

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    :cond_3
    return-void
.end method

.method private setAutoMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sliderId"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setWhiteBalance(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    const/4 p1, -0x2

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFocusLength(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setShutterSpeed(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getPreviousIsoKey(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->saveIsoState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setIso(I)V

    :goto_0
    return-void
.end method

.method private setEvStateManual(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isManual"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsSecondTeleLensEvStateManual:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsTeleLensEvStateManual:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsWideLensEvStateManual:Z

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsNormalLensEvStateManual:Z

    :goto_0
    return-void
.end method

.method private setPreviousFlashValueAuto(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAuto"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_pro_previous_flash_value_key"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private setProSettingDefault(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$4;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setManualColorTuneType(I)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setAperture(I)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setColorTuneType(I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setExposureValue(I)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setWhiteBalance(I)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setIso(I)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setShutterSpeed(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFocusLength(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setShutterPriorityActivate(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActive"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShutterPriorityActivate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setEvStateManual(Z)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getPreviousIsoKey(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->saveIsoState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastNearestIso:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setIso(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getButtonText(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->setProButtonText(ILjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v2

    if-ne v2, v0, :cond_5

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setPreviousFlashValueAuto(Z)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFlash(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setEvStateManual(Z)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getPreviousIsoKey(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->loadIsoState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getPreviousIsoKey(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->saveIsoState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setIso(I)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getButtonText(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->setProButtonText(ILjava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isPreviousFlashValueAuto()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFlash(I)V

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isEvStateManual()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getPreviousIsoKey(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->loadIsoState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_7

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->setSensorInfoEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSensorInfoEventManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$SensorInfoEventManager;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->setSensorInfoEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SensorInfoEventListener;)V

    :goto_2
    return-void
.end method

.method private showApertureIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getAvailableLensApertures()[F

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isVariableLensApertureSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getIndicatorManager()Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;->showApertureIndicator(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mHideApertureIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mHideApertureIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startFastFillShutterAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterProgressAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getShutterProgress()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterFastFillAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterFastFillAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$JoyUpYQyxx2YfENmAZfeezEAHPc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$JoyUpYQyxx2YfENmAZfeezEAHPc;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterFastFillAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startLongEvShotShutterProgress()V
    .locals 3

    const-string v0, "ProPresenter"

    const-string v1, "startLongEvShotShutterProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getShutterSpeedTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$4TGkxZYY7qOT_e9MhhD4wCdw-RA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$4TGkxZYY7qOT_e9MhhD4wCdw-RA;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$3;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method private stopLongEvShotShutterProgress()V
    .locals 2

    const-string v0, "ProPresenter"

    const-string v1, "stopLongEvShotShutterProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterProgressAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method private stopShutterFastFillAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterFastFillAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterFastFillAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterFastFillAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method private unregisterChildPresenterCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$W9KhIb9FtRdccr2VM0IXS8bRP20;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$W9KhIb9FtRdccr2VM0IXS8bRP20;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mChildPresenterCameraSettingsList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$tu7OUFw414WbOam1KZemgGYYMwM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$tu7OUFw414WbOam1KZemgGYYMwM;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070259

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v4, v0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070257

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v2

    const/4 v3, 0x0

    neg-int v7, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v7

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->translateIndicator(IIIIII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->translateIndicator(IIIIII)V

    :goto_0
    return-void
.end method

.method private updateProSetting()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setShutterSpeed(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setIso(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setExposureValue(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFocusLength(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setWhiteBalance(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setKelvinValue(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getColorTuneType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setColorTuneType(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->setProButtonText(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->setProButtonText(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onUpdateExposureValueButtonRequested(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->setProButtonText(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->setProButtonText(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->updateApertureText()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isAfSupported()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onUpdateManualFocusButtonRequested(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onUpdateResetButtonRequested()V

    return-void
.end method

.method private updateSALogForProButtonSettings(Ljava/util/Map;)V
    .locals 4
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v1

    const-string v2, "0_"

    const-string v3, "1_"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getColorTuneType()I

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    if-gez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "0"

    goto :goto_5

    :cond_5
    const-string p0, "1"

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0020"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createProControlPanelPresenter(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PRO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V

    return-void
.end method

.method public createProSliderContainerPresenter(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;->setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V

    return-void
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

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;->SWIPE_UP:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonAction;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getQuickSettingItemList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HISTOGRAM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected handleBackKey()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isLongEvShutterSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showLongExposureShotWaitToast()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->isSliderVisible()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_PRO_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideActiveSlider(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    return v1

    :cond_1
    return v2
.end method

.method protected handleShutterButtonClick(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BIXBY_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideActiveSlider(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->handleShutterReleased(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public initializeSettingChangedListenerKey()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HISTOGRAM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$ProPresenter()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getIndicatorManager()Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;->hideApertureIndicator()V

    return-void
.end method

.method public synthetic lambda$registerChildPresenterCameraSettingChangedListeners$1$ProPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public synthetic lambda$registerChildPresenterCameraSettingChangedListeners$2$ProPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public synthetic lambda$startFastFillShutterAnimation$3$ProPresenter(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterFastFillAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    int-to-float p1, p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setShutterProgress(F)V

    return-void
.end method

.method public synthetic lambda$startLongEvShotShutterProgress$4$ProPresenter(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mShutterProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    int-to-float p1, p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setShutterProgress(F)V

    return-void
.end method

.method public synthetic lambda$unregisterChildPresenterCameraSettingChangedListeners$5$ProPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public synthetic lambda$unregisterChildPresenterCameraSettingChangedListeners$6$ProPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public onActivate()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setShutterPriorityActivate(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPictureFormat()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getColorTuneType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v3, 0x7f1203db

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_PRO_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->registerListener(Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setShutterProgressWheelAnimationEndListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableEngineCallbacks(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isMultiAfSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMultiAfRestoreNeeded:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setMultiAfMode(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableMultiAF(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isMultiAfSupported()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->refreshMultiAfButtonVisibility(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->showApertureIndicator()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->setProSliderContainerManager(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerManager;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    if-nez v0, :cond_5

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->setProControlPanelManager(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showHistogram()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSecondTeleSettingkeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->setProSettingKeyList(Ljava/util/List;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProTeleSettingkeyList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->setProSettingKeyList(Ljava/util/List;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->setProSettingKeyList(Ljava/util/List;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->setProSettingKeyList(Ljava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_RESET:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showControlPanel(Z)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraIdChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->registerChildPresenterCameraSettingChangedListeners()V

    return-void
.end method

.method public onApertureButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getAperture()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getAvailableLensApertures()[F

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setAperture(I)V

    return-void
.end method

.method public onCameraIdChanged(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 p2, 0x3

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSecondTeleSettingkeyList:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->setProSettingKeyList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProTeleSettingkeyList:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->setProSettingKeyList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->setProSettingKeyList(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->setProSettingKeyList(Ljava/util/List;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->updateProSetting()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    move p1, p3

    goto :goto_1

    :cond_3
    move p1, p2

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setShutterPriorityActivate(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setZoomValue(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getQuickSettingItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->refreshQuickSetting(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->refreshShutterSpeedSliderRange()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->refreshIsoSliderRange()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->showApertureIndicator()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result p1

    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isMultiAfSupported()Z

    move-result p1

    if-nez p1, :cond_4

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMultiAfRestoreNeeded:Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setMultiAfMode(I)V

    goto :goto_2

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMultiAfRestoreNeeded:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isMultiAfSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMultiAfRestoreNeeded:Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setMultiAfMode(I)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isMultiAfSupported()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->refreshMultiAfButtonVisibility(Z)V

    :cond_6
    return-void
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraSettingChanged : key="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ProPresenter"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$4;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleShutterSpeedChanged(I)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleShutterSpeedChanged(I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleShutterSpeedChanged(I)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleShutterSpeedChanged(I)V

    goto :goto_1

    :pswitch_4
    if-ne p3, v0, :cond_0

    move p2, v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableMultiAF(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isAfSupported()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->onUpdateManualFocusButtonRequested(Z)V

    goto :goto_1

    :pswitch_5
    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideHistogram()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showHistogram()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object p1

    new-array p3, v0, [Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    aput-object v0, p3, p2

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->hideVisiblePopup([Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->updateIndicatorPosition()V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isPreviousFlashValueAuto()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setPreviousFlashValueAuto(Z)V

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result p1

    if-ne p1, v0, :cond_3

    if-gez p3, :cond_2

    move p2, v0

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableMultiAF(Z)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCaptureEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$4;->$SwitchMap$com$samsung$android$app$galaxyraw$shootingmode$abstraction$AbstractShootingModePresenter$CaptureEvent:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$CaptureEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleCaptureCompleted()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleShutterReceived()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleCaptureCancelled()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleCaptureStarted()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleCaptureRequested()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getColorTuneType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;->setEffectProcessorMode(I)V

    return-void
.end method

.method public onInactivate()V
    .locals 7

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onInactivate()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->unregisterChildPresenterCameraSettingChangedListeners()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraIdChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->resetBottomBackground(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableEngineEventListeners(Z)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->KEY_SCREEN_ZOOM_GROUP:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_PRO_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {v4, v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;->unregisterListener(Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setShutterProgressWheelAnimationEndListener(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMultiAfRestoreNeeded:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMultiAfRestoreNeeded:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setMultiAfMode(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableMultiAF(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isPreviousFlashValueAuto()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFlash(I)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableEngineCallbacks(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMaxCountReached:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->stopShutterFastFillAnimation()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getIndicatorManager()Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;->hideApertureIndicator()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->resetProView()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->updateProgressShutterShrinkState(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSliderContainerPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProControlPanelPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;->stop()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->clear()V

    return-void
.end method

.method public onMaxCountReached()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMaxCountReached:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showProcessingShutter()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    const/16 v2, 0x4c

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->isShutterProgressWheelVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->startProcessingAnimation(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->endShutterProgressWheel()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->hideView(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->startProcessingAnimation(Z)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    return-void
.end method

.method public onNextCaptureAvailable()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMaxCountReached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mIsMaxCountReached:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideProcessingShutter()V

    :cond_0
    return-void
.end method

.method public onProcessingAnimationCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    return-void
.end method

.method public onShutterProgressWheelAnimationEnd()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->resetShutter()V

    return-void
.end method

.method protected onShutterTimerEvent(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerEvent"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$4;->$SwitchMap$com$samsung$android$app$galaxyraw$shootingmode$abstraction$AbstractShootingModePresenter$TimerEvent:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showControlPanel(Z)I

    :goto_0
    return-void
.end method

.method public onSliderAutoButtonClicked(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sliderId",
            "isAutoMode"
        }
    .end annotation

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setAutoMode(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setWhiteBalance(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastNearestColorTemperature:I

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setKelvinValue(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setAutoMode(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastNearestFocusDistance:I

    invoke-interface {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setAutoMode(I)V

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastShutterSpeed:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleShutterSpeedChanged(I)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->setAutoMode(I)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mLastNearestIso:I

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setIso(I)V

    :goto_0
    return-void
.end method

.method public onSliderValueChanged(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "step"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, -0x3

    if-eq p2, p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->setFocusLength(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->SHUTTER_SPEED_VALUE_OFFSET:I

    add-int/2addr p2, p1

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->handleShutterSpeedChanged(I)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {p2, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getPreviousIsoKey(ZI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->loadIsoState(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getPreviousIsoKey(ZI)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->saveIsoState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->buildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;->execute()Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    :cond_6
    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableEngineCallbacks(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->enableFaceRectView(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    if-gez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->enableMultiAF(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->refreshZoomProperty()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DNG_COMPRESSION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->enableNonLinearDngCompression(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->setHdrState(I)V

    return-void
.end method

.method public onStartPreviewPrepared(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;)V
    .locals 7
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v5

    invoke-static {v5, v2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeByFlashSetting(IZ)I

    move-result v2

    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v5, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_AE_EXTRA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeExtraMode(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v2, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    sget-object v2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getExposureTime(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getSensorSensitivity(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v0

    if-ne v0, v3, :cond_4

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_COLOR_TEMPERATURE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getKelvinValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getColorTemperature(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAwbMode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureMetering()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getExposureMetering(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->overrideFocusMode(I)V

    :cond_6
    :goto_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isMultiAfSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_MULTI_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getMultiAfMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    if-ltz v0, :cond_8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->SEM_REQUEST_LENS_FOCUS_LENS_POS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfLensPosition(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Capability;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isVariableLensApertureSupported()Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/MakerPublicKey;->REQUEST_LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getAperture()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAperture(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "isVisible"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChanged viewId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVisible : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter$4;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ViewVisibilityEventManager$ViewId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideHistogram()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCapturing()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showHistogram()V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideControlPanel()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->isControlPanelShowRequired()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->showControlPanel(Z)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->resetBottomBackground(Z)V

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->updateProgressShutterShrinkState(Z)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->updateProgressShutterShrinkState(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onVolumeKeyDown(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->isSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->SWITCH:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProContract$View;->hideActiveSlider(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;->onVolumeKeyDown(I)Z

    move-result p0

    return p0
.end method

.method protected refreshAeAfProperty()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->CIRCLE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->LOCK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->refreshAeAfProperty(Ljava/util/EnumSet;)V

    return-void
.end method

.method protected refreshZoomProperty()V
    .locals 7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getMinZoomLevel(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getMinZoomLevel(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getMinZoomLevel(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SECOND_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getMinZoomLevel(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS_NAME_AND_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-static {v2, v3, v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->PRO:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->refreshProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-static {v0, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->PRO:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->refreshProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;)V

    :goto_0
    return-void
.end method

.method public resetProSetting()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSecondTeleSettingkeyList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Bqf9snouoCw0CzFxjquoVowfHnw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Bqf9snouoCw0CzFxjquoVowfHnw;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProTeleSettingkeyList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Bqf9snouoCw0CzFxjquoVowfHnw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Bqf9snouoCw0CzFxjquoVowfHnw;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProWideSettingkeyList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Bqf9snouoCw0CzFxjquoVowfHnw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Bqf9snouoCw0CzFxjquoVowfHnw;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mProSettingkeyList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Bqf9snouoCw0CzFxjquoVowfHnw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/-$$Lambda$ProPresenter$Bqf9snouoCw0CzFxjquoVowfHnw;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mAeAfManager:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;->enableFocusPeaking(Z)V

    return-void
.end method

.method protected updateSALogForPictureTaken(Ljava/util/HashMap;)V
    .locals 3
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v0

    const-string v1, "AUTO"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getButtonText(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "0002"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getExposureValueString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0004"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "0"

    goto :goto_1

    :cond_1
    const-string v0, "1"

    :goto_1
    const-string v2, "0005"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getKelvinValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "K"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v2, "0006"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v0, "0003"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPictureFormat()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1310"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/ProPresenter;->updateSALogForProButtonSettings(Ljava/util/Map;)V

    return-void
.end method
