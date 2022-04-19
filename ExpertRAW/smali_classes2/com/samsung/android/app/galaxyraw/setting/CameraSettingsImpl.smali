.class public Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;
.super Ljava/lang/Object;
.source "CameraSettingsImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
.implements Landroid/os/Parcelable;


# static fields
.field private static final CAMERA_FEEDBACK_VIBRATE:Ljava/lang/String; = "camera_feedback_vibrate"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CameraSettings"

.field private static mCameraSettingsImpl:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundHandlerThread:Landroid/os/HandlerThread;

.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mCameraId:I

.field private mCurrentCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

.field private mCurrentCameraSettingsId:I

.field private mCustomModeSetting:I

.field private final mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

.field private final mInitSettingKeyMap:Ljava/lang/Runnable;

.field private mIsShootingModeInitialized:Z

.field private final mListenersForCameraIdChanges:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersForShootingModeChanges:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersForShootingModeInitialized:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveFocusZoomValue:I

.field private final mManualSavingPrefKeyListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResetSettingOnChangeShootingModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/SettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

.field private mShootingMode:I

.field private final mValueGetterMap:Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;

.field private final mValueSetterMap:Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForCameraIdChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeInitialized:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mValueGetterMap:Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mValueSetterMap:Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mResetSettingOnChangeShootingModeList:Ljava/util/List;

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettingsId:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraId:I

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mIsShootingModeInitialized:Z

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl$2;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mManualSavingPrefKeyListMap:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingsImpl$6Zz9PXxnyk4HcNmowzCdLdiF1-g;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingsImpl$6Zz9PXxnyk4HcNmowzCdLdiF1-g;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mInitSettingKeyMap:Ljava/lang/Runnable;

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCustomModeSetting:I

    const/16 v3, 0x7d0

    iput v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mLiveFocusZoomValue:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    const-string v3, "Create CameraSettings"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->initialize()V

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->initialize()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->initializeResetKeyListOnChangeShootingMode()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->startBackgroundHandler()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettingsId:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->loadCameraSettings(ILcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getSettingKeyMap()Ljava/util/EnumMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/setting/DimController;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setInstance(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getInstance()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSensorCrop(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontCameraResolution()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method private static getInstance()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraSettingsImpl:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    return-object v0
.end method

.method private getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    iget-boolean v0, v0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized handleShootingModeNotifications(IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    monitor-enter p0

    if-ltz p1, :cond_2

    const/16 v0, 0x28

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShootingModeNotifications : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;->onShootingModeChanged(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private initializeResetKeyListOnChangeShootingMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mResetSettingOnChangeShootingModeList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_STEADY_ZOOM_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mResetSettingOnChangeShootingModeList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mResetSettingOnChangeShootingModeList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mResetSettingOnChangeShootingModeList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mResetSettingOnChangeShootingModeList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mResetSettingOnChangeShootingModeList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isKeepSettingsSupported()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isSimpleMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isProSecondTeleLens()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SECOND_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isProTeleLens()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isProWideLens()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private loadCameraSettings(ILcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraSettings",
            "observer"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/setting/RetailCameraSettings;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/RetailCameraSettings;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong CameraSettings id, Failed! : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/ResizableCameraSettings;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/SimpleCameraSettings;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/samsung/android/app/galaxyraw/setting/NormalCameraSettings;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/NormalCameraSettings;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)V

    return-object p1
.end method

.method private notifyCameraIdChanged(IIZ)V
    .locals 2
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraIdChanged : cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForCameraIdChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;->onCameraIdChanged(IIZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetSettingsOnChangeShootingMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mResetSettingOnChangeShootingModeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getKeepSelfieAngle()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultSensorCrop(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_BACK_CAMERA_ANGLE_CHANGE_BY_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mLiveFocusZoomValue:I

    :cond_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_4
    return-void
.end method

.method private setDefaultShootingMode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selfie_tone_camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultShootingMode - it is selfie tone mode. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    const-string v1, "pref_key_keep_shooting_mode_r_os"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static setInstance(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    sput-object p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraSettingsImpl:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CameraSettings[Parcel] updated "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraSettingsImpl:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPreferenceType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "settingKey",
            "isPrefType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mManualSavingPrefKeyListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->setPreferenceType(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method private startBackgroundHandler()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private stopBackgroundHandler()V
    .locals 4

    const-string v0, "CameraSettings"

    const-string v1, "stopBackgroundHandler - start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopBackgroundHandler : interrupted - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    const-string p0, "stopBackgroundHandler - end"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "CameraSettings"

    const-string v1, "cameraSettings clear"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->stopBackgroundHandler()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterAllCameraSettingsChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mIsShootingModeInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettingsId:I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraSettingsImpl:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mValueGetterMap:Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->contains(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mValueGetterMap:Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/ValueGetterMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getAperture()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackBokehEffectType()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DUAL_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackCamcorderCinemaResolution()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackCamcorderRatio()I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method getBackCamcorderResolution()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackCamcorderWideResolution()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackCameraLensType()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_HYPER_LAPSE_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_5
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackCameraPictureRatio()I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result p0

    return p0
.end method

.method public getBackCameraResolution()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getResolutionByAspectRatio(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getBackHyperLapseMotionSpeed()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getBackPhotoBodyBeautyType()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getBackPhotoFilter()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getBackPhotoMyFilter()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackProVideoCinemaResolution()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderProResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_21_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackProVideoRatio()I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackProVideoResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method getBackProVideoResolution()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderProResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackProVideoWideResolution()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderProResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackSuperSteadyRatio()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method getBackSuperSteadyWideResolution()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getBackVideoBodyBeautyType()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getBackVideoFilter()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getBackVideoMyFilter()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getBackVideoResolution()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderResolutionSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getBackWideCameraMaxResolution()I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getBackWideCameraMaxResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0
.end method

.method getBokehEffectType()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackBokehEffectType()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontBokehEffectType()I

    move-result p0

    return p0
.end method

.method getCamcorderRatio()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackCamcorderRatio()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontCamcorderRatio()I

    move-result p0

    return p0
.end method

.method getCamcorderResolution()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackCamcorderResolution()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontCamcorderResolution()I

    move-result p0

    return p0
.end method

.method public getCamcorderResolution(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackCamcorderResolution()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCamcorderResolution : invalid cameraId - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontCamcorderResolution()I

    move-result p0

    return p0
.end method

.method public getCameraFacing()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing(I)I

    move-result p0

    return p0
.end method

.method public getCameraFacing(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCameraFacing : invalid cameraId - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    :cond_1
    :pswitch_1
    return p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCameraId()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "camera_id"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FRONT_DYNAMIC_FOV_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraId - cameraId is the value of FRONT_DYNAMIC_FOV_CAMERA_ID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x67

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    iput v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraId:I

    return v0
.end method

.method getCameraLensType()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackCameraLensType()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getCameraResolution()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraResolution(I)I

    move-result p0

    return p0
.end method

.method public getCameraResolution(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCameraResolution : invalid cameraId - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getWideAngleResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0

    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontCameraResolution()I

    move-result p0

    return p0

    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackCameraResolution()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getColorTuneType()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getDefaultShootingMode()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getDefaultShootingMode(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useKeptSetting"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getKeepCameraMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "pref_key_keep_shooting_mode_r_os"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultShootingMode()I

    move-result p0

    return p0
.end method

.method public getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getDimController()Lcom/samsung/android/app/galaxyraw/setting/DimController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    return-object p0
.end method

.method public getExposureMetering()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getExposureValue()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getFlash()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getFocusLength()I
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    :cond_5
    :goto_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    const/4 v1, -0x2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_6
    return v1
.end method

.method public getFocusMode()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getFoodBlurEffect()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_BLUR_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getFrontBokehEffectType()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DUAL_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getFrontCamcorderRatio()I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method getFrontCamcorderResolution()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getFrontCameraPictureRatio()I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result p0

    return p0
.end method

.method public getFrontCameraResolution()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getResolutionByAspectRatio(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSensorCropResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public getFrontHyperLapseMotionSpeed()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getFrontNightMode()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/16 v0, 0x12

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getFrontPhotoFilter()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getFrontPhotoMyFilter()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getFrontVideoFilter()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getFrontVideoMyFilter()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getGuideLine()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setGuideLine(I)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getHdr()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public getHyperLapseNight()I
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getHyperLapseNightAuto()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getIso()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getKeepCameraMode()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isKeepSettingsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_CAMERA_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_CAMERA_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getKeepFilters()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isKeepSettingsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_FILTERS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_FILTERS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getKeepSelfieAngle()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isKeepSettingsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getKelvinValue()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getManualColorTuneType()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getModeCustomSetting()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCustomModeSetting:I

    return p0
.end method

.method public getMultiAfMode()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getMultiRecordingLensType()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getMultiRecordingSaveOption()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getMultiRecordingType()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getNormalLensShutterSpeed()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getPhotoFilter()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackPhotoFilter()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontPhotoFilter()I

    move-result p0

    return p0
.end method

.method public getPhotoFilterIntensityLevel()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getPhotoMyFilter()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackPhotoMyFilter()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontPhotoMyFilter()I

    move-result p0

    return p0
.end method

.method public getPhotoMyFilterIntensityLevel()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getPictureFormat()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getRecordingMotionSpeed()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackHyperLapseMotionSpeed()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontHyperLapseMotionSpeed()I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getResolutionByAspectRatio(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionKey",
            "aspectRatio"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getDefaultResolution(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getReview()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_REVIEW:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REVIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getSecondTeleLensShutterSpeed()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getSettingMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettingsId:I

    return p0
.end method

.method public getShootingModeForSwitchCamera()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getPairMode(IZ)I

    move-result p0

    return p0

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getPairMode(IZ)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultShootingMode()I

    move-result p0

    return p0

    :cond_3
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getPairMode(IZ)I

    move-result p0

    return p0
.end method

.method public getShutterSpeed()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getSecondTeleLensShutterSpeed()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getTeleLensShutterSpeed()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getWideLensShutterSpeed()I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getNormalLensShutterSpeed()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSingleBokehEffectType()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getSingleTakeCustomizedOptionUseMultiRecording()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_USE_MULTIRECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getSuperSlowMotionDetectionType()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getSuperSlowMotionFrc()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getTeleLensShutterSpeed()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getTimer()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getTorch()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTouchVibrations()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_IQ_CUSTOM_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_feedback_vibrate"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getVideoBeautyLevel()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getVideoFilter()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackVideoFilter()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontVideoFilter()I

    move-result p0

    return p0
.end method

.method public getVideoFilterIntensityLevel()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getVideoMyFilter()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackVideoMyFilter()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontVideoMyFilter()I

    move-result p0

    return p0
.end method

.method public getVideoMyFilterIntensityLevel()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getWhiteBalance()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method getWideLensShutterSpeed()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getZoomValue()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_BACK_CAMERA_ANGLE_CHANGE_BY_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mLiveFocusZoomValue:I

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public isAttachImageMode()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttachMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isAttachVideoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAttachVideoMode()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKnoxCamera()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KNOX_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotificationExist()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->isNotificationExist()Z

    move-result p0

    return p0
.end method

.method public isQuickTakeRecordingRunning()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResizableMode()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->isResizableMode()Z

    move-result p0

    return p0
.end method

.method public isSecureCamera()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECURE_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSimpleMode()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->isSimpleMode()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$CameraSettingsImpl()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialization for setting key : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CameraSettings"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launch - ValidatePreferences : Start["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "GalaxyRaw/CameraPerformance"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->validatePreferences(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launch - ValidatePreferences : End["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "] ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mManualSavingPrefKeyListMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v5}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-direct {p0, v5, v7}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setPreferenceType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v2

    array-length v5, v2

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v2, v7

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getType()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;->REPRESENTATIVE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    if-ne v9, v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0, v8}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->initValue(I)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialization for setting key : End["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public overrideFocusMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusMode"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    return-void
.end method

.method public registerAllCameraSettingsChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->registerAllCameraSettingsChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public registerAllDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->registerAllDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    return-void
.end method

.method public registerCameraIdChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForCameraIdChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForCameraIdChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    return-void
.end method

.method public registerShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mIsShootingModeInitialized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result p0

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;->onShootingModeChanged(IIZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeInitialized:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public resetOverriddenFocusMode()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    return-void
.end method

.method public set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mValueSetterMap:Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->contains(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mValueSetterMap:Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/ValueSetterMap;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method public setAperture(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aperture"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method setBackCamcorderResolution(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isWideResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isCinemaResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    return-void
.end method

.method setBackCameraLensType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensType"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_HYPER_LAPSE_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void

    :cond_5
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setBackCameraResolution(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    return-void
.end method

.method public setBackHyperLapseMotionSpeed(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordingMotionSpeed"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method public setBackPhotoBodyBeautyType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bodyBeautyType"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setBackPhotoFilter(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackPhotoFilter()I

    move-result v0

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setBackPhotoMyFilter(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myFilterId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackPhotoMyFilter()I

    move-result v0

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method setBackProVideoResolution(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isWideResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isCinemaResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    return-void
.end method

.method setBackSuperSteadyResolution(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isWideResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    return-void
.end method

.method public setBackVideoBodyBeautyType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bodyBeautyType"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setBackVideoFilter(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackVideoFilter()I

    move-result v0

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setBackVideoMyFilter(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myFilterId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getBackVideoMyFilter()I

    move-result v0

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setBokehEffectType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method setCamcorderResolution(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setBackCamcorderResolution(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setFrontCamcorderResolution(I)V

    :goto_0
    return-void
.end method

.method public setCameraId(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    const-string p0, "setCameraId : Returned because it is wrong camera id"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraId : Change "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraId:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing(I)I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->notifyCameraIdChanged(IIZ)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "setCameraId : It does not save to preference because it is attach mode"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "selfie_tone_camera"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "setCameraId : It does not save to preference because it is selfie tone camera"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "camera_id"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method setCameraLensType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensType"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setBackCameraLensType(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method public setCameraResolution(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraResolution"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraId()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCameraResolution : invalid cameraId - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getNormalAngleResolutionByWideAngle(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setBackCameraResolution(I)V

    goto :goto_0

    :cond_0
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setFrontCameraResolution(I)V

    goto :goto_0

    :cond_1
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setBackCameraResolution(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setColorTuneType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorTuneType"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_3
    :goto_2
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->setEngine(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    return-void
.end method

.method public setExposureMetering(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exposureMetering"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    return-void
.end method

.method public setExposureValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exposureValue"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void

    :cond_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setFlash(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flash"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method public setFocusLength(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusLength"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setFocusMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusMode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->resetOverriddenFocusMode()V

    return-void
.end method

.method public setFoodBlurEffect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "foodBlurEffect"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_BLUR_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method setFrontCamcorderResolution(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isWideResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    return-void
.end method

.method public setFrontCameraResolution(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    return-void
.end method

.method public setFrontHyperLapseMotionSpeed(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordingMotionSpeed"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method public setFrontNightMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    return-void
.end method

.method public setFrontPhotoFilter(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontPhotoFilter()I

    move-result v0

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setFrontPhotoMyFilter(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myFilterId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontPhotoMyFilter()I

    move-result v0

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setFrontVideoFilter(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontVideoFilter()I

    move-result v0

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setFrontVideoMyFilter(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myFilterId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getFrontVideoMyFilter()I

    move-result v0

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setGuideLine(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guideLine"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setHdr(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hdr"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHyperLapseNight(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hyperLapseNight"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setHyperLapseNightAuto(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hyperLapseNightAuto"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setIso(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iso"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method setKeepCameraMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraMode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_CAMERA_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method setKeepFilters(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filters"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_FILTERS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setPreferenceType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_FILTERS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method setKeepSelfieAngle(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfieAngle"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setPreferenceType(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setKelvinValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kelvinValue"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setManualColorTuneType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorTuneItem"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setModeCustomSetting(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCustomModeSetting:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    return-void
.end method

.method public setMultiAfMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiAfMode"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    return-void
.end method

.method public setMultiRecordingLensType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setMultiRecordingSaveOption(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setMultiRecordingType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method setNormalLensShutterSpeed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shutterSpeed"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureFormat"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setRecordingMotionSpeed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordingMotionSpeed"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setBackHyperLapseMotionSpeed(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setFrontHyperLapseMotionSpeed(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method public setResolutionByAspectRatio(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolutionKey",
            "aspectRatio",
            "resolution"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setReview(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "review"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REVIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method setSecondTeleLensShutterSpeed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shutterSpeed"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    return-void
.end method

.method public setSettingMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingMode"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettingsId:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSettingMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->resetListeners()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettingsId:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->loadCameraSettings(ILcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCurrentCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getSettingKeyMap()Ljava/util/EnumMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mInitSettingKeyMap:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setShootingMode(IZ)V
    .locals 4
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

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShootingMode : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CameraSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mIsShootingModeInitialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->initialize(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-eqz p2, :cond_3

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mShootingMode:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setDefaultShootingMode()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isQuickTakeRecordingRunning()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->resetSettingsOnChangeShootingMode(I)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->notifyPendingSettingChanges()V

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->handleShootingModeNotifications(IIZ)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeInitialized:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeInitialized:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-eqz p2, :cond_7

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    move v0, v1

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeInitialized:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;

    invoke-interface {v3, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;->onShootingModeChanged(IIZ)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeInitialized:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_9
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mIsShootingModeInitialized:Z

    return-void
.end method

.method public setShutterSpeed(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shutterSpeed"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setSecondTeleLensShutterSpeed(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setTeleLensShutterSpeed(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setWideLensShutterSpeed(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setNormalLensShutterSpeed(I)V

    :goto_0
    return-void
.end method

.method public setSingleBokehEffectType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setSingleTakeCustomizedOptionUseMultiRecording(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useMultiRecording"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_USE_MULTIRECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setSuperSlowMotionDetectionType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoDetect"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public setSuperSlowMotionFrc(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frc"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method setTeleLensShutterSpeed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shutterSpeed"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    return-void
.end method

.method setTimer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timer"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method public setTorch(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "torch"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    return-void
.end method

.method public setTouchVibrations(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchVibrations"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_feedback_vibrate"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whiteBalance"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProSecondTeleLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProTeleLens()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isProWideLens()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method setWideLensShutterSpeed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shutterSpeed"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setZoomValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getOverriddenSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_BACK_CAMERA_ANGLE_CHANGE_BY_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mLiveFocusZoomValue:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mLiveFocusZoomValue:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingKeyMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->notifyCameraSettingChanged(IIZ)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public unregisterAllCameraSettingsChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->unregisterAllCameraSettingsChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public unregisterAllDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->unregisterAllDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    :cond_0
    return-void
.end method

.method public unregisterCameraIdChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForCameraIdChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mSettingNotifier:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    :cond_0
    return-void
.end method

.method public unregisterShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->mListenersForShootingModeInitialized:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateParcel()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->setInstance(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    return-void
.end method
