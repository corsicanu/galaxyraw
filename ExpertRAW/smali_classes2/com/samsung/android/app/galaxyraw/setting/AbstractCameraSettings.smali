.class abstract Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;
.super Ljava/lang/Object;
.source "AbstractCameraSettings.java"


# static fields
.field private static final CSC_KEY_CAMERA_FLASH:Ljava/lang/String; = "csc_pref_camera_flash_key"

.field private static final CSC_KEY_SETUP_STORAGE:Ljava/lang/String; = "csc_pref_setup_storage_key"

.field private static final TAG:Ljava/lang/String; = "AbstractCameraSettings"


# instance fields
.field protected final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mDefaultValueGetterMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingKeyMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/SettingValue;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSettingValueGetterMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSettingValueSetterMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/ValueSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "observer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    const-string v0, "Create AbstractCameraSettings"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractCameraSettings : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AbstractCameraSettings"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->initializeDefaultValueGetterMap()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v2, v6

    new-instance v8, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-direct {v8, p1, p2, v7}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    iget-object v9, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->overrideValueGetterMap()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->overrideValueSetterMap()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "AbstractCameraSettings : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "] ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private getBackCamcorderProResolution()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getBackCamcorderResolution()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getBackCamcorderSuperSteadyResolution()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getBackCameraResolution()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getDefaultBackCameraHyperLapseLensType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getDefaultBackCameraLiveFocusLensType()I
    .locals 1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_BACK_CAMERA_ANGLE_CHANGE_BY_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_DUAL_PORTRAIT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_1

    return v0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_NORMAL_DUAL_PORTRAIT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method private getDefaultBackCameraPanoramaLensType()I
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    return p0
.end method

.method private getDefaultBackCameraProLensType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getDefaultBackFlashMode()I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "csc_pref_camera_flash_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultBackFlashMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractCameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getDefaultEffectsTab()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private getDefaultMotionSpeed()I
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getDefaultNightHyperLapseAuto()I
    .locals 0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getDefaultQuickLaunch()I
    .locals 2

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HOME_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POWER_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isSoftwareNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HOME_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POWER_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private getDefaultStorage()I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "csc_pref_setup_storage_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultStorage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractCameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getDefaultSuperSlowMotionFrcTime()I
    .locals 1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SUPER_SLOW_MOTION_MAX_FRC_TIME:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result p0

    const/16 v0, 0x190

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private getDefaultSuperSteadyResolution()I
    .locals 2

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result p0

    return p0
.end method

.method private getDefaultSuperSteadyZoomType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private getFrontCamcorderResolution()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getFrontCameraResolution()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->get()I

    move-result p0

    return p0
.end method

.method private getQuickLaunch()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const-string v1, "double_tab_launch"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private initializeDefaultValueGetterMap()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ADAPTIVE_LENS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$UJjTGuZxMu6vtxf0VJqV4lzWjK0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$UJjTGuZxMu6vtxf0VJqV4lzWjK0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ADAPTIVE_LENS_STATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Xey0nvaPwvClAykeMMZfxRNd7Vk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Xey0nvaPwvClAykeMMZfxRNd7Vk;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_BRIGHT_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$5D5CGPKcqamw8HHDlxoheX7gzNs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$5D5CGPKcqamw8HHDlxoheX7gzNs;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_DOCUMENT_SCAN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$XwQ9ebuzrF-blFZxE1QHvn2QD1U;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$XwQ9ebuzrF-blFZxE1QHvn2QD1U;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_STAR_BURST:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$AO1z1-R6ikJvnCRUdYeg9WTNvKs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$AO1z1-R6ikJvnCRUdYeg9WTNvKs;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$odJJzos0xiWxolDk8sPKxwUDkOw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$odJJzos0xiWxolDk8sPKxwUDkOw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$XZrDoV0HZaCDSC9sXJT2G_KSQD8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$XZrDoV0HZaCDSC9sXJT2G_KSQD8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_BACK_VIDEO_FIXED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LeFrSOcK9B8d3_xc1duxE5RzrFA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LeFrSOcK9B8d3_xc1duxE5RzrFA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_FRONT_VIDEO_FIXED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$MWWRJbpHecQ-14QyBVITKpJsvuQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$MWWRJbpHecQ-14QyBVITKpJsvuQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$h7AhttAH08IHxRsvwdg7DjtBKmY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$h7AhttAH08IHxRsvwdg7DjtBKmY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Ocj8JGpM6E41iQP8dxkvBtXRLpQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Ocj8JGpM6E41iQP8dxkvBtXRLpQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$S3Idym7f0S7-Mi1JFHPaSdH6q4U;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$S3Idym7f0S7-Mi1JFHPaSdH6q4U;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dyydBGA-PVcihfyqBO3VjZdIwZY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dyydBGA-PVcihfyqBO3VjZdIwZY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$4NDAnCg9x19S2qm04ZeL1J45ZGg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$4NDAnCg9x19S2qm04ZeL1J45ZGg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BEAUTY_BRIGHTEN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dxH1_tyVNGlAY31moz22JOImEV0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dxH1_tyVNGlAY31moz22JOImEV0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Ew17Z9zq0ASGweCb3voaUXJVuaA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Ew17Z9zq0ASGweCb3voaUXJVuaA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dZUqAQBYZFUwuiTHwach3j2LFGU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dZUqAQBYZFUwuiTHwach3j2LFGU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_BACKDROP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2gNdnbeg6XMEo9yn47V2Z9bbdBA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2gNdnbeg6XMEo9yn47V2Z9bbdBA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$7v2moJGUrSAU9G2SSacMmeh5tLc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$7v2moJGUrSAU9G2SSacMmeh5tLc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$genQ5DIl-LVNxrK11FauVj35_6I;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$genQ5DIl-LVNxrK11FauVj35_6I;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_COLOR_POP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xmKsUGMQc8hlDC_6ONj6oxCG94Q;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xmKsUGMQc8hlDC_6ONj6oxCG94Q;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$tyiBn5MQeQbjJrFcCQmWp8VvfkU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$tyiBn5MQeQbjJrFcCQmWp8VvfkU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_HIGH_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$OaLYcl0-9NQSBhmZxpsS_qVS_Dk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$OaLYcl0-9NQSBhmZxpsS_qVS_Dk;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_HIGH_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$6RYb2iC8aWkNxr1QRtC_qFjyFnc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$6RYb2iC8aWkNxr1QRtC_qFjyFnc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$r4DcUxd0vIgrXOJgQXTzhkvWw2A;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$r4DcUxd0vIgrXOJgQXTzhkvWw2A;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_LOW_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-bBrORkkSnOhINQiIs7SKJAsmUw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-bBrORkkSnOhINQiIs7SKJAsmUw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_LOW_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$QacIo1CtBo5YtMaaWiuSbT7PXh8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$QacIo1CtBo5YtMaaWiuSbT7PXh8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$AZSbXbmz5D5BU9es7Rj60lLDAaU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$AZSbXbmz5D5BU9es7Rj60lLDAaU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_STUDIO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$atEFoAh-ZXMGQwkNXH2a02aOz0U;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$atEFoAh-ZXMGQwkNXH2a02aOz0U;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_STUDIO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$__R1wKAmaPfVGqiUDQ3bMLAcqrc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$__R1wKAmaPfVGqiUDQ3bMLAcqrc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_SPIN_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$zk8EOUHLuChoIgOKQUnnAw6PFas;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$zk8EOUHLuChoIgOKQUnnAw6PFas;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$BWjIrWXgIMmQR5JeIn1qtxEpWnI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$BWjIrWXgIMmQR5JeIn1qtxEpWnI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LdkSA4VSmsh01_4o-ow2MmUY9P0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LdkSA4VSmsh01_4o-ow2MmUY9P0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PFxn3SGhlQF4ksgzmVIUcJsZ3t8;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PFxn3SGhlQF4ksgzmVIUcJsZ3t8;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_CINEMA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pJ9vOyHy2DwMuaIPWPPyVYLa86M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pJ9vOyHy2DwMuaIPWPPyVYLa86M;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$6VksxaQydUrgqlsgHf-HdsH4NOQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$6VksxaQydUrgqlsgHf-HdsH4NOQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$HA1wIbr-sOLJ-lcenfKHif7NQjg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$HA1wIbr-sOLJ-lcenfKHif7NQjg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$l_o0Tu1g5nMR9blBSLGZdjzWmf8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$l_o0Tu1g5nMR9blBSLGZdjzWmf8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$97NCsDhSFBQ4frGowoU__WS0DHI;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$97NCsDhSFBQ4frGowoU__WS0DHI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DyuqKbLsgwYxGH_S7fsxvn2o79k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DyuqKbLsgwYxGH_S7fsxvn2o79k;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PFxn3SGhlQF4ksgzmVIUcJsZ3t8;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PFxn3SGhlQF4ksgzmVIUcJsZ3t8;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$P6usMqark3WdKJuTobZxS_Uv9UY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$P6usMqark3WdKJuTobZxS_Uv9UY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$JvvHxDSnqfMUYgUtA3xvte3EYg0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$JvvHxDSnqfMUYgUtA3xvte3EYg0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$JvvHxDSnqfMUYgUtA3xvte3EYg0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$JvvHxDSnqfMUYgUtA3xvte3EYg0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$c-rsSvV45Hw0w1lvyY_f3uvelNU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$c-rsSvV45Hw0w1lvyY_f3uvelNU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_HYPER_LAPSE_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$iErrmTBdL9J2ZCr1xcHzGuYJqZ8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$iErrmTBdL9J2ZCr1xcHzGuYJqZ8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3gNQPxRlZLw69RpUk9xIkf6p2oQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3gNQPxRlZLw69RpUk9xIkf6p2oQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1T3hfp-4N6d9jGtZcQ3l3lRGGVA;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1T3hfp-4N6d9jGtZcQ3l3lRGGVA;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$atR_3QEa0GLrMWK-4ZbQ3obXRMM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$atR_3QEa0GLrMWK-4ZbQ3obXRMM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$JYFyhuPqWT-1cVmuZj1wyZnSN5Q;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$JYFyhuPqWT-1cVmuZj1wyZnSN5Q;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$zz7VXdUYNtnmFJVRhpEROT2QPTg;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$zz7VXdUYNtnmFJVRhpEROT2QPTg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-Ij-E0C1u0CeYJT119dQEt1rk84;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-Ij-E0C1u0CeYJT119dQEt1rk84;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VPHu-JT62Fg6CsiDaR7ucd-kAiE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VPHu-JT62Fg6CsiDaR7ucd-kAiE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$P9T-EbXaXlbrniV-KcoKwRW5l84;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$P9T-EbXaXlbrniV-KcoKwRW5l84;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_LARGE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Ug45VxM9wtGV8MZPWb_EM-ai2T4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Ug45VxM9wtGV8MZPWb_EM-ai2T4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$A_tVr1mNZVJLH6elEABaknpu-3A;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$A_tVr1mNZVJLH6elEABaknpu-3A;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$A1iLoEKBgTeBAO39UWS0QnTgqNI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$A1iLoEKBgTeBAO39UWS0QnTgqNI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$UGJ4RqwY_tB3KP0S9saFqvJElyA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$UGJ4RqwY_tB3KP0S9saFqvJElyA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$yF-9Z5W-k3TxlrG42iwha_dAepY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$yF-9Z5W-k3TxlrG42iwha_dAepY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$qpWWUqm4uPVcEHeeJ7LpAldM0Ys;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$qpWWUqm4uPVcEHeeJ7LpAldM0Ys;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_HEAD_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$hdr7e0PX3MdTWDSmFavpz5_g6wc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$hdr7e0PX3MdTWDSmFavpz5_g6wc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_HIPS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-oP9Gh76jMibonb7cgpupYDEOZo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-oP9Gh76jMibonb7cgpupYDEOZo;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_LEGS_LENGTH_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Kt3zLiKYuMq8GGVcgxV1H4xA948;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Kt3zLiKYuMq8GGVcgxV1H4xA948;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_LEGS_THICKNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Z_oLK4u-M6KXqxEY9aQQB-1UhDI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Z_oLK4u-M6KXqxEY9aQQB-1UhDI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_SHOULDERS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2nhDkvsbXDtyXsR1AgMsVtqo7f0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2nhDkvsbXDtyXsR1AgMsVtqo7f0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_WAIST_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$q4gr5aM-znABTStFabuM23hWiI0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$q4gr5aM-znABTStFabuM23hWiI0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_WHOLE_BODY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ZYE61iy0lrEjBYWj6uTpvjjh3pQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ZYE61iy0lrEjBYWj6uTpvjjh3pQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$K-gSt0ZDCQhHl-rf4SJkacGui58;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$K-gSt0ZDCQhHl-rf4SJkacGui58;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$gnb-A_RQRNd9QNTZNe1oO71jZL0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$gnb-A_RQRNd9QNTZNe1oO71jZL0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$RBsqveU9SQEPvyEHfTIqPZwiszg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$RBsqveU9SQEPvyEHfTIqPZwiszg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-_T_YN8H6gf0HAjpYVwqKvxcoo8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-_T_YN8H6gf0HAjpYVwqKvxcoo8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$MmKnCq_qx-mMuRuGwPkSdiyy-j8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$MmKnCq_qx-mMuRuGwPkSdiyy-j8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$h8jb59kBrQthsDNgswAcs9P_95M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$h8jb59kBrQthsDNgswAcs9P_95M;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3nAtBFYfPKLdcgJTqafLfa8vSYc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3nAtBFYfPKLdcgJTqafLfa8vSYc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$I-KDQU6mg7MuXCfnJG_8BvFNKhc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$I-KDQU6mg7MuXCfnJG_8BvFNKhc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_CHEEK_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$eq2fdQvFLo-7M260QuDtp8rG_9w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$eq2fdQvFLo-7M260QuDtp8rG_9w;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_CHIN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_jTSYe1J4gaCCg88FNQ5-wAryOw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_jTSYe1J4gaCCg88FNQ5-wAryOw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$u8O-tfYexdwHuNAOZn5ipP28qTI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$u8O-tfYexdwHuNAOZn5ipP28qTI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_LIP_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$qYN-FJXb9AKwbXJV6FA_dPsp2hU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$qYN-FJXb9AKwbXJV6FA_dPsp2hU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_RESHAPE_NOSE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$WZoYkCBRdUZoitqPS-VVuFT9L5s;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$WZoYkCBRdUZoitqPS-VVuFT9L5s;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_SLIM_FACE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$V4AB__G8bJSul3evOYH9qvO9Sls;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$V4AB__G8bJSul3evOYH9qvO9Sls;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Umc-l8sOTh1l78wFBlenp-fL9Vc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Umc-l8sOTh1l78wFBlenp-fL9Vc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$82zHDIm_SBZ2n1LgWzKpzcJ185M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$82zHDIm_SBZ2n1LgWzKpzcJ185M;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$HZ1-ukBnUMY4DnayQzzIvVMmwis;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$HZ1-ukBnUMY4DnayQzzIvVMmwis;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$maa_gv690TTlNc4FITJMICoSd7I;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$maa_gv690TTlNc4FITJMICoSd7I;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1BEQey3SshE3AN0A0egvTEIQxJg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1BEQey3SshE3AN0A0egvTEIQxJg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_HEAD_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_X98PxMiHuYOCBvLsXIiAycLTco;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_X98PxMiHuYOCBvLsXIiAycLTco;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_HIPS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$lPUhy-fzrXGkNDSfkSj-a_OCV_0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$lPUhy-fzrXGkNDSfkSj-a_OCV_0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_LEGS_LENGTH_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$0o4h54c-0SjCSM3wgFvo18-fWa8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$0o4h54c-0SjCSM3wgFvo18-fWa8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_LEGS_THICKNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$zIv5x3cz8QoWzv-NsGMJx9N_1W8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$zIv5x3cz8QoWzv-NsGMJx9N_1W8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_SHOULDERS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2apKJlJNlT5lP9CnORWASMODlQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2apKJlJNlT5lP9CnORWASMODlQY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_WAIST_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$EoMd83Y55PX0HrD5xFTzmb6zIeU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$EoMd83Y55PX0HrD5xFTzmb6zIeU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_WHOLE_BODY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$psEwtGcRweCGfGQUMDadWOhnp1c;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$psEwtGcRweCGfGQUMDadWOhnp1c;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_ARTIFY_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$U6_s9L5EnigEu8-hGGizMByW_Ts;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$U6_s9L5EnigEu8-hGGizMByW_Ts;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pdEkhvS6X4cdvPqqikEBHKrh1GU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pdEkhvS6X4cdvPqqikEBHKrh1GU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$TFMdi6FeubOrNu7YaSk_fFahmWA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$TFMdi6FeubOrNu7YaSk_fFahmWA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1bL3q5u6JI7bch__99-Q8UagZcI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1bL3q5u6JI7bch__99-Q8UagZcI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_GLITCH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$5v-mjWyYq-IhXLlfTcVApENRQsk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$5v-mjWyYq-IhXLlfTcVApENRQsk;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$l1XQUiUSNRkWK9zm-leyLK_2w_s;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$l1XQUiUSNRkWK9zm-leyLK_2w_s;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$K-gSt0ZDCQhHl-rf4SJkacGui58;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$K-gSt0ZDCQhHl-rf4SJkacGui58;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$IK4kvgAU_qW_oS6jpMYCXSrjI-M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$IK4kvgAU_qW_oS6jpMYCXSrjI-M;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$4CcN2DLp6Yh8CtM7ul4jnwMfoAU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$4CcN2DLp6Yh8CtM7ul4jnwMfoAU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$J13Y5piBSTFchfG5PX00bHzhj1Y;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$J13Y5piBSTFchfG5PX00bHzhj1Y;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MANUAL_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$IJZSWRo6nCUR0QArXHo2z-kiSTo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$IJZSWRo6nCUR0QArXHo2z-kiSTo;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$g_f6nC2d25pY8FXuVM_f_cNgx7s;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$g_f6nC2d25pY8FXuVM_f_cNgx7s;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ZDHrMixOz9OADsu5NW8K_vxVFsI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ZDHrMixOz9OADsu5NW8K_vxVFsI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BEAUTY_FILTER_EFFECT_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$8QgjfNnmLk8J81moveCI2sTTUhQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$8QgjfNnmLk8J81moveCI2sTTUhQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$zWth8eTjw9-1GQNgwsBHqiSYj34;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$zWth8eTjw9-1GQNgwsBHqiSYj34;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$wECOeut17kRshAgmN1N8RZKg5J0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$wECOeut17kRshAgmN1N8RZKg5J0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$6IVxNagtao1xCla6Tj7PxpAEAXc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$6IVxNagtao1xCla6Tj7PxpAEAXc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$PjvrK28nr0L31EMffjepl7VtGuQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$PjvrK28nr0L31EMffjepl7VtGuQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ldeI2h1nyHuVqkzpglu8sWLRiE4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ldeI2h1nyHuVqkzpglu8sWLRiE4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3QTwj8rvLXzjTNgY9PWshY7Mqf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3QTwj8rvLXzjTNgY9PWshY7Mqf0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$fWPffuLgGsnWfEEIVD6tNce8kt4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$fWPffuLgGsnWfEEIVD6tNce8kt4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VChv-YOfXRqGQDj4M125KtJDVg0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VChv-YOfXRqGQDj4M125KtJDVg0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DNG_COMPRESSION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$BaVAgz5jo50ZsImUGtVnOz4RXKc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$BaVAgz5jo50ZsImUGtVnOz4RXKc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$UNPpCAWZ2Zc3Lt0Rl0_wC36m6w4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$UNPpCAWZ2Zc3Lt0Rl0_wC36m6w4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ltnD9Ve89tIRJT5PnnyvqLi_rIY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ltnD9Ve89tIRJT5PnnyvqLi_rIY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_METERING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$brn85wFH8fahCU7DFgfaRvOzU9U;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$brn85wFH8fahCU7DFgfaRvOzU9U;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$JnvVnn1lV9RXh1DzacscnzkAt0E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$JnvVnn1lV9RXh1DzacscnzkAt0E;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$O6ehm35P2z428lSnDlTmjawYBWc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$O6ehm35P2z428lSnDlTmjawYBWc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$6xenM8vtelx_nQMNydvLCr5BaK4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$6xenM8vtelx_nQMNydvLCr5BaK4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$nfLyb77yeZjLqJbVnkolb5Z6WVs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$nfLyb77yeZjLqJbVnkolb5Z6WVs;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$0zOZhnjaOcRspumivimQkp9lG7g;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$0zOZhnjaOcRspumivimQkp9lG7g;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_BLUR_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$g7KrP5nXxqL2Irx9rohiQ6PecXw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$g7KrP5nXxqL2Irx9rohiQ6PecXw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOOD_COLOR_TUNE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$95eAfjQE4fawjzsMmqzeVxxq4Pc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$95eAfjQE4fawjzsMmqzeVxxq4Pc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BEAUTY_BRIGHTEN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$KipDqMIqkmMoSfph6hGS3w2xzPA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$KipDqMIqkmMoSfph6hGS3w2xzPA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$IsWcVB4HSQy2pMVEOgV08p1prwU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$IsWcVB4HSQy2pMVEOgV08p1prwU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$mc2vXBrlEPTmMmroe20rQslgRnA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$mc2vXBrlEPTmMmroe20rQslgRnA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_BACKDROP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$uTblUrXnPj7VxvmDR8SzYAw_lAQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$uTblUrXnPj7VxvmDR8SzYAw_lAQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VELcNwomtNdpryX4KBbf2P2nGbI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VELcNwomtNdpryX4KBbf2P2nGbI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$QpKJ07wIWl8ZW642AA4YetocVoE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$QpKJ07wIWl8ZW642AA4YetocVoE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_COLOR_POP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$OPOcm3y2TPcvVh2T0BIsD47kFm4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$OPOcm3y2TPcvVh2T0BIsD47kFm4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DNhqF6yKBh2FC38n3Vtl2SSdvmA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DNhqF6yKBh2FC38n3Vtl2SSdvmA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_HIGH_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xUKKryDRNrnaHilhvM1TvTMwuvM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xUKKryDRNrnaHilhvM1TvTMwuvM;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_HIGH_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$O5cjzBXEDbo_5hc4Th7vCstKwOM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$O5cjzBXEDbo_5hc4Th7vCstKwOM;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$c_SXrCwLTseQNFMRN5qyEV_Qm_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$c_SXrCwLTseQNFMRN5qyEV_Qm_k;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_LOW_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$uxRIfMWY3085R6YsYbie_mgqaA4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$uxRIfMWY3085R6YsYbie_mgqaA4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_LOW_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$vWzutLtbCohjj5LWw770qhKbWjI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$vWzutLtbCohjj5LWw770qhKbWjI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$59ZhEFo1ayo_ZUxYYkJ6b9-EmhY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$59ZhEFo1ayo_ZUxYYkJ6b9-EmhY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_STUDIO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$B6L5w4tsbfbL1AeP0BiAk-gWPso;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$B6L5w4tsbfbL1AeP0BiAk-gWPso;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_STUDIO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$t-2_4AYgFyihdVeHG21SHCgr3r4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$t-2_4AYgFyihdVeHG21SHCgr3r4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_SPIN_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$AZfUjxh5xugI9Bdmf_RBCWFAfXw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$AZfUjxh5xugI9Bdmf_RBCWFAfXw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$rMdCrU9GhqjT6B23vqiNnnsYpbA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$rMdCrU9GhqjT6B23vqiNnnsYpbA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dKy7Pxh1BfoAZ4Lnsb1qnmk5YmA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dKy7Pxh1BfoAZ4Lnsb1qnmk5YmA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$i71LdMgb6N8TkrOPvnFoLgAUCEw;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$i71LdMgb6N8TkrOPvnFoLgAUCEw;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Hda_4tH-fIyM1jgzwX9Hiv1tDIE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Hda_4tH-fIyM1jgzwX9Hiv1tDIE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_SLOW_MOTION_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$A3pnFccvnBKBpCIna7hAY_b3o_0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$A3pnFccvnBKBpCIna7hAY_b3o_0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$U9oXZeBy_QQbNNEp7jV5Fk8zZ6k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$U9oXZeBy_QQbNNEp7jV5Fk8zZ6k;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VITbSqZlnu-Yal5ZNcjKkJyTq-o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VITbSqZlnu-Yal5ZNcjKkJyTq-o;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$72bChL7oF1H4NucffPEkyFj_Cko;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$72bChL7oF1H4NucffPEkyFj_Cko;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$j9W1AGhxZYHEtG3gXIB6Ouo8mbM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$j9W1AGhxZYHEtG3gXIB6Ouo8mbM;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pO549D-ebzZcVEOuilPjcnA6SpI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pO549D-ebzZcVEOuilPjcnA6SpI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$SxwEROEbf9mrXF5MqfnSZlu1dWc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$SxwEROEbf9mrXF5MqfnSZlu1dWc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_LARGE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$96GGtgpHC50FIHSDa0lPcVj0aM0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$96GGtgpHC50FIHSDa0lPcVj0aM0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dzpjLdUTkBzwGxAHbP54WIXRTsE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dzpjLdUTkBzwGxAHbP54WIXRTsE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$vjsiATq73wN79PxXXGo6K6AbLRw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$vjsiATq73wN79PxXXGo6K6AbLRw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_MANUAL_BEAUTY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LzBu5webzOjje7tpQMJ6mR8f1qI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LzBu5webzOjje7tpQMJ6mR8f1qI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dOT5KDpVROILnjz9aBfgozLJZcA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dOT5KDpVROILnjz9aBfgozLJZcA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$K-gSt0ZDCQhHl-rf4SJkacGui58;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$K-gSt0ZDCQhHl-rf4SJkacGui58;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3HXlIG_EH-dpPwTJkXGxDVMtn84;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3HXlIG_EH-dpPwTJkXGxDVMtn84;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Lb6854GHPo-rqe73X6oe_E6uAnQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Lb6854GHPo-rqe73X6oe_E6uAnQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1bIjEYW7kTbgRb41fguytLIXZow;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1bIjEYW7kTbgRb41fguytLIXZow;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VEkVWKnQzAvB1KqC8FaC_cVfESE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VEkVWKnQzAvB1KqC8FaC_cVfESE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$0qt3gLE8dA4LC1ov8-sQsvduN_0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$0qt3gLE8dA4LC1ov8-sQsvduN_0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$8hcUPMg5AQbuwDdlbNX_TeqOVZs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$8hcUPMg5AQbuwDdlbNX_TeqOVZs;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$I-KDQU6mg7MuXCfnJG_8BvFNKhc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$I-KDQU6mg7MuXCfnJG_8BvFNKhc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_CHEEK_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$GzuNrRm7mPVP8q7Sts4uuUskHnY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$GzuNrRm7mPVP8q7Sts4uuUskHnY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_CHIN_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$I6IpkXVVwe5op3dDZ2vxXrA4HPE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$I6IpkXVVwe5op3dDZ2vxXrA4HPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_EYES_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$6BxXnGEAfn69BsQo3pWNIW6rWow;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$6BxXnGEAfn69BsQo3pWNIW6rWow;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_LIP_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Wxgj3wyxv1V2ZjB9IC9P2oUAr5s;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Wxgj3wyxv1V2ZjB9IC9P2oUAr5s;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_RESHAPE_NOSE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$NFHQ_8WYrnS81LZN71_n0UnhLG8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$NFHQ_8WYrnS81LZN71_n0UnhLG8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_SLIM_FACE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$QIKnbsMwc6qbKKVajFSTIXnlh4I;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$QIKnbsMwc6qbKKVajFSTIXnlh4I;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_SMART_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$U1SS08NkfmpOU75zZam-KIkCRjM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$U1SS08NkfmpOU75zZam-KIkCRjM;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$KGXXB3ItvrMdZvuvnrlrdO5oSiw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$KGXXB3ItvrMdZvuvnrlrdO5oSiw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_ARTIFY_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$qOfZtz0FtrekZ6FU5DlH5jxTSTE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$qOfZtz0FtrekZ6FU5DlH5jxTSTE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ABwPsuBZlRZrZHRwyxoUgokIhiA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ABwPsuBZlRZrZHRwyxoUgokIhiA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$AHfZ2U2ATWQ04HN-afUpKGZ3xrE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$AHfZ2U2ATWQ04HN-afUpKGZ3xrE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2k-dmLNVn9DsVPM1t-y19821PEw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2k-dmLNVn9DsVPM1t-y19821PEw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_GLITCH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$srQduyrfnMZmsDg8pbktbVWO3_w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$srQduyrfnMZmsDg8pbktbVWO3_w;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$32LOUlD-AHwdk4uYhM7OUwNU10E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$32LOUlD-AHwdk4uYhM7OUwNU10E;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$K-gSt0ZDCQhHl-rf4SJkacGui58;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$K-gSt0ZDCQhHl-rf4SJkacGui58;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$e9b81dxNEjSuOmXi8H-Q1o9t-Dc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$e9b81dxNEjSuOmXi8H-Q1o9t-Dc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Vd7gU1bwrs_5J32HMLRXkPES3J8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Vd7gU1bwrs_5J32HMLRXkPES3J8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$aSn2ocIXtv34GIxCaWgwPOp_HUQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$aSn2ocIXtv34GIxCaWgwPOp_HUQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$KfCNOK5WdR5YESqUWx2wYgeEcbk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$KfCNOK5WdR5YESqUWx2wYgeEcbk;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_YS8FTswp-FxLerMUT_UpzwADmw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_YS8FTswp-FxLerMUT_UpzwADmw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$F5sZkkU4wqZ-68hkL2SgdQtwkCY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$F5sZkkU4wqZ-68hkL2SgdQtwkCY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VJmjJnzISQyNQDqQsIgo3YiqXiQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$VJmjJnzISQyNQDqQsIgo3YiqXiQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$czxk_IEtN_9i-W9uiKsred1mIqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$czxk_IEtN_9i-W9uiKsred1mIqA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$R577cYy4TkBbqo-vfCUeIluufxE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$R577cYy4TkBbqo-vfCUeIluufxE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$lukTcEe4osu490GyIKCIu0Fvd1U;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$lukTcEe4osu490GyIKCIu0Fvd1U;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEVC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$lu6yU6gouohJagFLHYvjklQrb8A;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$lu6yU6gouohJagFLHYvjklQrb8A;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_In5cZedb64ao7-EEP6ImT8ssuk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_In5cZedb64ao7-EEP6ImT8ssuk;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$9khi9iOR6ETOwqRzTstqA1Zz_zE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$9khi9iOR6ETOwqRzTstqA1Zz_zE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$yOWrUtk5O_ILL-ndEOhjNIZQSfc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$yOWrUtk5O_ILL-ndEOhjNIZQSfc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$MO3t_RZVGZVQuxxYzRQtq9RxLOM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$MO3t_RZVGZVQuxxYzRQtq9RxLOM;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$QYKgiK9YYBpfYyHU1ZynlaqYN6M;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$QYKgiK9YYBpfYyHU1ZynlaqYN6M;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$lgcjDaWGn1ozbzZrH1i_tWf7u1I;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$lgcjDaWGn1ozbzZrH1i_tWf7u1I;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$BjeMyLI_kxbVtKh1EsUGe-UGoc0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$BjeMyLI_kxbVtKh1EsUGe-UGoc0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$CSoTC-jfvspSvMc-aseeQOsvuOo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$CSoTC-jfvspSvMc-aseeQOsvuOo;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KNOX_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ky05kEy1TIbhSA60f6IRIToKzZQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ky05kEy1TIbhSA60f6IRIToKzZQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$fgLeHcDjXir5y3KRvQ9luuBR_yw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$fgLeHcDjXir5y3KRvQ9luuBR_yw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_CAMERA_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$P3XKejLPNhXEBUgSLpXAfWFIxUU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$P3XKejLPNhXEBUgSLpXAfWFIxUU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Djar6xUJHfpbAZ50KIjYoCko0ck;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Djar6xUJHfpbAZ50KIjYoCko0ck;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_FILTERS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$imb9psq2Umznvfxr213Qe4zAnvQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$imb9psq2Umznvfxr213Qe4zAnvQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$hnd6CEDo3RDKF0cKwOD0aE4QWJs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$hnd6CEDo3RDKF0cKwOD0aE4QWJs;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Lcl2jvybXbBu88f-TdThQmBJzSU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Lcl2jvybXbBu88f-TdThQmBJzSU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$kUdJ_O-tgzrb05IJPoWo6nXOcZ8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$kUdJ_O-tgzrb05IJPoWo6nXOcZ8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$BfczCY1meRtyzxtNZ7U0dFaFfcw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$BfczCY1meRtyzxtNZ7U0dFaFfcw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$izrk1iZl_wifOnptVrAGkNIvedk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$izrk1iZl_wifOnptVrAGkNIvedk;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xIIO03a8LY-XHkj9hbcXWeS9pDw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xIIO03a8LY-XHkj9hbcXWeS9pDw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pdu78aMk_TD7EH0ENGnyFQ6Kuco;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pdu78aMk_TD7EH0ENGnyFQ6Kuco;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$vW_aVxUXND-dQeMWt2_lItPXevQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$vW_aVxUXND-dQeMWt2_lItPXevQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Cb02u8HswwHG2K0t9bmDPZ8jx9k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Cb02u8HswwHG2K0t9bmDPZ8jx9k;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3rd3JkTgJdTrgLEm6bczVS5sIEM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3rd3JkTgJdTrgLEm6bczVS5sIEM;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ticDRRxn6W01h5l2UEu_j5zqrLg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ticDRRxn6W01h5l2UEu_j5zqrLg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$X9ePVAFBEzn0f2rgQEEgLYmRisg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$X9ePVAFBEzn0f2rgQEEgLYmRisg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dvqhmknjShI3dwfBVlK4JMQEi1A;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dvqhmknjShI3dwfBVlK4JMQEi1A;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_SCANNER_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DOFkPWB6Q6ubczogCFirHD5eTZc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DOFkPWB6Q6ubczogCFirHD5eTZc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$XwekkwMac6RGwtv2936v2aiOKUw;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$XwekkwMac6RGwtv2936v2aiOKUw;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$I-KDQU6mg7MuXCfnJG_8BvFNKhc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$I-KDQU6mg7MuXCfnJG_8BvFNKhc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REMOVE_STAR_EFFECT_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$w5gSGATXk6O0oMh82p3frWsOHzg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$w5gSGATXk6O0oMh82p3frWsOHzg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REVIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-NUyZw_Cjp-376HxDc3ZaAMyXhA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-NUyZw_Cjp-376HxDc3ZaAMyXhA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$eqL9uiEFFOqUmPFffYXBassnQZI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$eqL9uiEFFOqUmPFffYXBassnQZI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$4kDn6Fy35fP5aRd1MC5Z2tQ-XqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$4kDn6Fy35fP5aRd1MC5Z2tQ-XqA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$N__CN-Hn0jzn9Jw3xAOzV-ML0P4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$N__CN-Hn0jzn9Jw3xAOzV-ML0P4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECURE_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$tmynfVmtVl5MXNnQvKyZsIF-N1E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$tmynfVmtVl5MXNnQvKyZsIF-N1E;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$gRq1QHJpTuqY2p9Upz8XA2lLp2E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$gRq1QHJpTuqY2p9Upz8XA2lLp2E;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$azZHSIDfcBpHfYY00E6UFcoiw-s;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$azZHSIDfcBpHfYY00E6UFcoiw-s;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$QXT5mCGCNpMYa25M9Wtd3W27qb8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$QXT5mCGCNpMYa25M9Wtd3W27qb8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$jFPdpg1Br8z0V5k3cuaqfmk-plY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$jFPdpg1Br8z0V5k3cuaqfmk-plY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_FLIP_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xXU6xcdGJ5se5qZdslHAh3soOUw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xXU6xcdGJ5se5qZdslHAh3soOUw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SOUND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$bUQqmD7YiE2v5LH8hFTvO5VqoHw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$bUQqmD7YiE2v5LH8hFTvO5VqoHw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$8QGCme-eoNqITiV-y8nrENzJ9-0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$8QGCme-eoNqITiV-y8nrENzJ9-0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BIG_BOKEH_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$m6ENV-ZJXz4OqI19TqPHlUJQFDA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$m6ENV-ZJXz4OqI19TqPHlUJQFDA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BACKDROP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$C8ygeHQVNT6E0KUnN1KTuNVmMis;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$C8ygeHQVNT6E0KUnN1KTuNVmMis;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_BACKDROP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$wqplQ_Glts-wTduuegg5RCwruEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$wqplQ_Glts-wTduuegg5RCwruEU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_COLOR_POP_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ANukN8WCKS4iFHkB2c2gMjipDdE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ANukN8WCKS4iFHkB2c2gMjipDdE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_COLOR_POP_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$w9wPyKGzIEbIQFFIlRDW9wS94Zw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$w9wPyKGzIEbIQFFIlRDW9wS94Zw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$wH5fjZXfRkRK1jGFWb_NH58dEcQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$wH5fjZXfRkRK1jGFWb_NH58dEcQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_HIGH_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$hx8-thQzM7_dYmNHxWSthrQkZY8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$hx8-thQzM7_dYmNHxWSthrQkZY8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_HIGH_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_0beE4QEiwOn-cUdC4zYjiXGgrY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_0beE4QEiwOn-cUdC4zYjiXGgrY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LENS_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ZeLa1rXUU5-c3cJmBpv0crLZ5Ac;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ZeLa1rXUU5-c3cJmBpv0crLZ5Ac;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LOW_KEY_MONO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$9AXhZyA2HA96H0YSTJvPBl26Re4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$9AXhZyA2HA96H0YSTJvPBl26Re4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_LOW_KEY_MONO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$mqF7O6L1VTSNg0KbQJlpcml7h60;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$mqF7O6L1VTSNg0KbQJlpcml7h60;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$kfgc08qeIFLkyRxbo--91tVepCo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$kfgc08qeIFLkyRxbo--91tVepCo;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_STUDIO_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$gx4bo2CWBeJQZJpbAZgKNsvjIwU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$gx4bo2CWBeJQZJpbAZgKNsvjIwU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_STUDIO_LIGHTING_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$rQGjXBSxDX3h2dMXEmStY2Aml24;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$rQGjXBSxDX3h2dMXEmStY2Aml24;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_SPIN_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$bPpnw_GaNgXjkg8lG8dKFZryepI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$bPpnw_GaNgXjkg8lG8dKFZryepI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_BOKEH_ZOOM_EFFECT_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Fbco1N56Ru26ZiSKVwOHTQZfgbw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Fbco1N56Ru26ZiSKVwOHTQZfgbw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1w_Cy4jdljUx6i7USBpvA8F-iQE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1w_Cy4jdljUx6i7USBpvA8F-iQE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_FILTERED_PHOTOS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$J_8eLZM88gtytlOxONMHvRW4nCE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$J_8eLZM88gtytlOxONMHvRW4nCE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_FILTERED_VIDEOS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xXE9hc4DPZ-hvSYUFEgPtCR5Ma4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xXE9hc4DPZ-hvSYUFEgPtCR5Ma4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_HIGHLIGHT_VIDEOS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$hXM_XGNrFPBXiQsul5pUmXPDcY8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$hXM_XGNrFPBXiQsul5pUmXPDcY8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_PORTRAITS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Vn-eS-cLrrF8qbGSlUaaoFTGSf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Vn-eS-cLrrF8qbGSlUaaoFTGSf0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_SPEED_EFFECT_CLIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$fpvyug1lFcQw-HX_w3m0uZdII5I;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$fpvyug1lFcQw-HX_w3m0uZdII5I;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_USE_MULTIRECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$XEmU4uLhBTEYauFnk2njflq1SrA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$XEmU4uLhBTEYauFnk2njflq1SrA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_WIDE_AND_CROPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DdBqAP-6Uvaq_bD3sRAxPFVdxb4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DdBqAP-6Uvaq_bD3sRAxPFVdxb4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SMART_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Twj5bXtLuPX7GsyevDBciWCb0S0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Twj5bXtLuPX7GsyevDBciWCb0S0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3iGxUMMAfr6mpVI0oYdsCG20Z1E;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3iGxUMMAfr6mpVI0oYdsCG20Z1E;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$FBWDie4oqIhEKiysKNaR08wzBpg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$FBWDie4oqIhEKiysKNaR08wzBpg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$d6r4sNyWdoOmj188NrqEaUdXjH4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$d6r4sNyWdoOmj188NrqEaUdXjH4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_STEADY_ZOOM_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2ldE4KPaZOsR-opvGsnyoNBAYoI;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2ldE4KPaZOsR-opvGsnyoNBAYoI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$GSmuWfVAeKEnxM2UIs8t1ft35EI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$GSmuWfVAeKEnxM2UIs8t1ft35EI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TAP_TO_TAKE_PICTURES:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$rDQDMH6wfWLtRrakPau7SCxe7qA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$rDQDMH6wfWLtRrakPau7SCxe7qA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Bi4RqI6I6pZ-GQydHU7nVMU6xjM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Bi4RqI6I6pZ-GQydHU7nVMU6xjM;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$oSmsBXYDQtHrwqTkzJH1qMCDgus;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$oSmsBXYDQtHrwqTkzJH1qMCDgus;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$m8ejU-Tx46zFUTmRtCPWtDS0X20;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$m8ejU-Tx46zFUTmRtCPWtDS0X20;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3gCb6HjFFNdb92C83-papvJn4Lg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$3gCb6HjFFNdb92C83-papvJn4Lg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xcHOV2--0pmLYwQR2PXcR0mytJA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xcHOV2--0pmLYwQR2PXcR0mytJA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Q6WCEprclnxuzIhFtqT5G5wXxX4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Q6WCEprclnxuzIhFtqT5G5wXxX4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_PFWxBt0Aj7YovDXKYF8QwZCrrc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_PFWxBt0Aj7YovDXKYF8QwZCrrc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$JDJ75_bSD60CVRdSboOakqCsyss;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$JDJ75_bSD60CVRdSboOakqCsyss;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_wV9-zxQ86ZO-gLY8rv2TFZRAmg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$_wV9-zxQ86ZO-gLY8rv2TFZRAmg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$w5srhPuNVJ8x2rGFDaZdg5hdKXc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$w5srhPuNVJ8x2rGFDaZdg5hdKXc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$b_yHf9MgMGvCvYbd1ibEaGeiCRQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$b_yHf9MgMGvCvYbd1ibEaGeiCRQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$etxZr9s5CYi1dKhmuYLVixmfZ94;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$etxZr9s5CYi1dKhmuYLVixmfZ94;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$70_Vk0cTWHJI6i-gnwqrFyIUGmU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$70_Vk0cTWHJI6i-gnwqrFyIUGmU;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$F5Hk8aFSndlKDJw0qVJvVyabQWA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$F5Hk8aFSndlKDJw0qVJvVyabQWA;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_VIBRATIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$N9dKkU-NVdrS76UdsYU-plQ_ZEM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$N9dKkU-NVdrS76UdsYU-plQ_ZEM;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LWM1Nzx4LqPI7rZA5cfaReguaqs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LWM1Nzx4LqPI7rZA5cfaReguaqs;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_APERTURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$MJIbD9TAr8I7IkOENlkRmu_9X9s;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$MJIbD9TAr8I7IkOENlkRmu_9X9s;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$EKBLHYo9Qt2l_pnxbIlFCiUbIFI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$EKBLHYo9Qt2l_pnxbIlFCiUbIFI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$0wl9b3rQoBxPjaoSwr7Crr0XAkc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$0wl9b3rQoBxPjaoSwr7Crr0XAkc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$UJVpp1OCz28hCjF7pP7Qoxhy4Zw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$UJVpp1OCz28hCjF7pP7Qoxhy4Zw;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$PLN8EiUEJfm2BQnO_ye9teCN-ZE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$PLN8EiUEJfm2BQnO_ye9teCN-ZE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$4kQteRycUffogO6Vkgb9o-xZdiM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$4kQteRycUffogO6Vkgb9o-xZdiM;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$qX8OxQM23r4JJbAPeAHA11NoJSY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$qX8OxQM23r4JJbAPeAHA11NoJSY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$r63uCYxzBAG3sqJUN_3-AbuXlIc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$r63uCYxzBAG3sqJUN_3-AbuXlIc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xvQuiKZqjxjmHBuzBmPufyJ0toc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$xvQuiKZqjxjmHBuzBmPufyJ0toc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$BLjmejR_PVdONyaf83qLP6O2iwQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$BLjmejR_PVdONyaf83qLP6O2iwQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIEW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dMxGlWpCGdADqRXxZOa0piYWyO0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$dMxGlWpCGdADqRXxZOa0piYWyO0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1EBH_ddRukScD1o97raqqs1SgXY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1EBH_ddRukScD1o97raqqs1SgXY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ingnXSz3QFcKZjq_l2fjbWNk4T4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$ingnXSz3QFcKZjq_l2fjbWNk4T4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$AZHS9FjrxkJNzpZL8DEjHOvFV0E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$AZHS9FjrxkJNzpZL8DEjHOvFV0E;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pm1adqtUUOyErxMx9-qM3UHOK1U;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$pm1adqtUUOyErxMx9-qM3UHOK1U;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2uinNJBLo7VcI1suD6rVVroPVi0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$2uinNJBLo7VcI1suD6rVVroPVi0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$9tFXjhKP3BnMihdW7AVJ6xCo1kY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$9tFXjhKP3BnMihdW7AVJ6xCo1kY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$uoztsBoc1rcjbMw_puxtS7V1jZc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$uoztsBoc1rcjbMw_puxtS7V1jZc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$nF3IyfA-3JUQDvrOboiYUOgsiRk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$nF3IyfA-3JUQDvrOboiYUOgsiRk;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$S_-rneTFjymAGrkZpjoXuQRD0s8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$S_-rneTFjymAGrkZpjoXuQRD0s8;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$n9_WiXeSu5MEWyxbf0tuFuNY3o4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$n9_WiXeSu5MEWyxbf0tuFuNY3o4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1c_Gm5QjK5VoKn_JzJ6CiJklM2c;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$1c_Gm5QjK5VoKn_JzJ6CiJklM2c;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$gBPsUMtM-vofhRjb3tRnNtUNW88;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$gBPsUMtM-vofhRjb3tRnNtUNW88;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$f8vSK0GMVzwu0RC663SxxSXqceE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$f8vSK0GMVzwu0RC663SxxSXqceE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$axFLv7Bq-3KCllNdT_hWovZiHf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$axFLv7Bq-3KCllNdT_hWovZiHf0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$D9j6UyDdhLQHlqM31PVMxWsFdSE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$D9j6UyDdhLQHlqM31PVMxWsFdSE;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$jMvetTpuQ5tsXX8gd1bnVefKw6k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$jMvetTpuQ5tsXX8gd1bnVefKw6k;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_KELVIN_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DP3ED7wshDKi3ZfPFZVJuMhWezI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DP3ED7wshDKi3ZfPFZVJuMhWezI;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_MANUAL_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$9L0yCTSEErris8dcftbL-BCbAIY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$9L0yCTSEErris8dcftbL-BCbAIY;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$9LeN9xRUwNdyZYH-caAUG93SJWg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$9LeN9xRUwNdyZYH-caAUG93SJWg;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$YB3oUgqRC2uaGNFPeoulw59ZMXk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$YB3oUgqRC2uaGNFPeoulw59ZMXk;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DMYMtGmcFYKvRWZT3bfmo8motI0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$DMYMtGmcFYKvRWZT3bfmo8motI0;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$m06L_YwnFMZ64b_awKidLUWnssc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$m06L_YwnFMZ64b_awKidLUWnssc;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LyaN5tZvy4UotkRy7KefuuPLRCQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LyaN5tZvy4UotkRy7KefuuPLRCQ;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeDefaultValueGetterMap : Key size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$-vrJFPd_x0MeVhQFhPFi9BIn77w(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getBackCameraResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$1T3hfp-4N6d9jGtZcQ3l3lRGGVA(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultBackCameraLiveFocusLensType()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$2ldE4KPaZOsR-opvGsnyoNBAYoI(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultSuperSteadyZoomType()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$3iGxUMMAfr6mpVI0oYdsCG20Z1E(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultStorage()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$4sLdbd-39KdAz1Tumgqs3Q7Xw8U(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->setBackCamcorderSuperSteadyResolution(I)V

    return-void
.end method

.method public static synthetic lambda$52OS-TB1TFX7O7fg2D2Tme375lQ(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getFrontCameraResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$FTUpm4teKMBHtcHp7KlMLQGWSvQ(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getBackCamcorderSuperSteadyResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$I-KDQU6mg7MuXCfnJG_8BvFNKhc(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultMotionSpeed()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$JYFyhuPqWT-1cVmuZj1wyZnSN5Q(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultBackCameraProLensType()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$JvvHxDSnqfMUYgUtA3xvte3EYg0(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultSuperSteadyResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$K-gSt0ZDCQhHl-rf4SJkacGui58(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultEffectsTab()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$OxODfAPQl_SQy6NNhi5HJxfjOVM(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getFrontCamcorderResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$P8pHz4VRU1DNU3WVzk7plhErpSw(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->setBackCamcorderResolution(I)V

    return-void
.end method

.method public static synthetic lambda$P9T-EbXaXlbrniV-KcoKwRW5l84(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultBackFlashMode()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$QYKgiK9YYBpfYyHU1ZynlaqYN6M(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultNightHyperLapseAuto()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Sg9Zr8I8kzqI6m-U8mX8W6rfhmE(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->setFrontCameraResolution(I)V

    return-void
.end method

.method public static synthetic lambda$Sx9rbB9bUU4ZijDkjailgt3QCBc(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getBackCamcorderResolution()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$XwekkwMac6RGwtv2936v2aiOKUw(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultQuickLaunch()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$atR_3QEa0GLrMWK-4ZbQ3obXRMM(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultBackCameraPanoramaLensType()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$b3bPAu-JMJHmxz6G6rnzw6FkmNc(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->setBackCameraResolution(I)V

    return-void
.end method

.method public static synthetic lambda$cgIbmW2Lxn0Lt9srlc8gjK_RC9s(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->setBackCamcorderProResolution(I)V

    return-void
.end method

.method public static synthetic lambda$d6r4sNyWdoOmj188NrqEaUdXjH4(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultSuperSlowMotionFrcTime()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$iErrmTBdL9J2ZCr1xcHzGuYJqZ8(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultBackCameraHyperLapseLensType()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$0()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$10()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$100()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$101()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$102()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$103()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$104()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_DUAL_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$105()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$106()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$107()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$108()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$109()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$11()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$110()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$111()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$112()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$113()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$114()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$115()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DEFAULT_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$116()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$117()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$118()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$119()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$12()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$120()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$121()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$122()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$123()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$124()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$125()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$126()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$127()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$128()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$129()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$13()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$130()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$131()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$132()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$134()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$135()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$136()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$137()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$139()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$14()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$140()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$141()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$142()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$143()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DEFAULT_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$144()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$145()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$146()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$147()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$148()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$149()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$15()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DEFAULT_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$150()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$151()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$152()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$153()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$154()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$155()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$156()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$157()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$158()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$159()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$16()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$160()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DEFAULT_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$161()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$162()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$163()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$164()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$165()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$166()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$167()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$168()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$169()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$17()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$170()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$171()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$172()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$173()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$174()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$175()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$176()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$177()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$178()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HISTOGRAM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$179()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$18()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$180()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$181()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$182()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_INTELLIGENT_GUIDE_TIPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$183()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$184()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$185()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$186()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$187()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$188()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$189()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$19()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$190()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$191()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$192()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$193()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$194()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$195()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$196()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$197()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$198()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$199()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_IQ_CUSTOM_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$2()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_IQ_CUSTOM_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$20()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$200()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$201()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$202()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$203()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$204()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$205()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$206()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$207()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$208()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$209()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$21()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$210()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DEFAULT_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$211()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$212()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$213()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$214()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$215()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$216()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$217()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$218()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$219()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$22()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$220()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$221()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$222()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$223()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$224()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$225()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$226()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$227()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$228()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$229()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$23()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$230()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$231()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$232()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$233()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$234()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$235()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$236()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$237()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$238()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$239()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$24()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$240()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$241()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$242()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$243()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$244()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$245()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$246()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$247()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$248()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$249()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$25()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$250()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$251()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$252()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$253()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$254()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$255()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$256()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$257()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$258()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$259()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$26()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$260()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$261()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$262()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$263()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$264()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$265()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$266()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$267()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$268()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$269()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMCORDER_ANTI_SHAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$27()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$270()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$271()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PREVIEW_FIT_TO_FULL_SCREEN:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$272()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$273()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$274()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$275()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$276()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$277()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$278()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$279()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$28()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$280()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$281()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$282()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$283()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$284()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$285()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$286()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$287()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$288()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$289()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$29()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$290()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$291()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$292()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$293()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$294()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$3()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_IQ_CUSTOM_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$30()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$31()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$32()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_21_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$33()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_21_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$34()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$35()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_PRO_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$36()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$38()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$39()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$4()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_IQ_CUSTOM_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$40()I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$41()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$43()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$44()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$45()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$46()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$47()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$48()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$49()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$5()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$50()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$51()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$52()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$53()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$54()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$55()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$56()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$57()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$58()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$59()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$6()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$60()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$61()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$62()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$63()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$64()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$65()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$66()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$67()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$68()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$69()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$7()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$70()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$71()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$72()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$73()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$74()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$75()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$76()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$77()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$78()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$79()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$8()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$80()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$81()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$82()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$83()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$84()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$85()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$86()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$87()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$88()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$89()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$9()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$90()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$91()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$92()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$93()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$94()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$95()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BOKEH_EFFECT_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$96()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$97()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$98()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$initializeDefaultValueGetterMap$99()I
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not access directly to Representative type - key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$lGe97A3nMmpIcNatrrMiaHoZA6Y(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->setFrontCamcorderResolution(I)V

    return-void
.end method

.method public static synthetic lambda$nezuhVytmzc6pgYM_R8FBUbAjdI(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getBackCamcorderProResolution()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$overrideValueGetterMap$295()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$overrideValueSetterMap$296(I)V
    .locals 1

    const-string p0, "AbstractCameraSettings"

    const-string v0, "setMultiWindowMode : ignore this case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$zXWY4kdDTpI6t7vIHxv58Tgri9Q(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getQuickLaunch()I

    move-result p0

    return p0
.end method

.method private overrideValueGetterMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Sx9rbB9bUU4ZijDkjailgt3QCBc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Sx9rbB9bUU4ZijDkjailgt3QCBc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-vrJFPd_x0MeVhQFhPFi9BIn77w;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$-vrJFPd_x0MeVhQFhPFi9BIn77w;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$OxODfAPQl_SQy6NNhi5HJxfjOVM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$OxODfAPQl_SQy6NNhi5HJxfjOVM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$52OS-TB1TFX7O7fg2D2Tme375lQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$52OS-TB1TFX7O7fg2D2Tme375lQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$nezuhVytmzc6pgYM_R8FBUbAjdI;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$nezuhVytmzc6pgYM_R8FBUbAjdI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$FTUpm4teKMBHtcHp7KlMLQGWSvQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$FTUpm4teKMBHtcHp7KlMLQGWSvQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Y0_GIszCp7abVrclMxmYnBOpjD4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Y0_GIszCp7abVrclMxmYnBOpjD4;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$zXWY4kdDTpI6t7vIHxv58Tgri9Q;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$zXWY4kdDTpI6t7vIHxv58Tgri9Q;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private overrideValueSetterMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$P8pHz4VRU1DNU3WVzk7plhErpSw;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$P8pHz4VRU1DNU3WVzk7plhErpSw;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$b3bPAu-JMJHmxz6G6rnzw6FkmNc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$b3bPAu-JMJHmxz6G6rnzw6FkmNc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$lGe97A3nMmpIcNatrrMiaHoZA6Y;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$lGe97A3nMmpIcNatrrMiaHoZA6Y;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Sg9Zr8I8kzqI6m-U8mX8W6rfhmE;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$Sg9Zr8I8kzqI6m-U8mX8W6rfhmE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$cgIbmW2Lxn0Lt9srlc8gjK_RC9s;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$cgIbmW2Lxn0Lt9srlc8gjK_RC9s;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$4sLdbd-39KdAz1Tumgqs3Q7Xw8U;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$4sLdbd-39KdAz1Tumgqs3Q7Xw8U;-><init>(Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LexkBuX0qzGUdPL0H9jDR_qlevk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$AbstractCameraSettings$LexkBuX0qzGUdPL0H9jDR_qlevk;

    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBackCamcorderProResolution(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getBackCamcorderProResolution()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setBackCamcorderResolution(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getBackCamcorderResolution()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackCamcorderResolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbstractCameraSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setBackCamcorderSuperSteadyResolution(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getBackCamcorderSuperSteadyResolution()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setBackCameraResolution(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getBackCameraResolution()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackCameraResolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbstractCameraSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setFrontCamcorderResolution(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getFrontCamcorderResolution()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontCamcorderResolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbstractCameraSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setFrontCameraResolution(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getFrontCameraResolution()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontCameraResolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbstractCameraSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_PICTURE_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method

.method private setQuickLaunch(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quickLaunch"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getQuickLaunch()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQuickLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractCameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_launch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->handleSettingChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;->get()I

    move-result p0

    return p0
.end method

.method getSettingKeyMap()Ljava/util/EnumMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/SettingValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    return-object p0
.end method

.method getValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    iget v0, v0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingKeyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->initDefaultValues(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;->get()I

    move-result p0

    return p0
.end method

.method abstract isResizableMode()Z
.end method

.method abstract isSimpleMode()Z
.end method

.method public synthetic lambda$initializeDefaultValueGetterMap$133$AbstractCameraSettings()I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getFrontCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$initializeDefaultValueGetterMap$138$AbstractCameraSettings()I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getFrontCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$initializeDefaultValueGetterMap$37$AbstractCameraSettings()I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getBackCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$initializeDefaultValueGetterMap$42$AbstractCameraSettings()I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->getBackCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getPictureRatio(I)I

    move-result p0

    return p0
.end method

.method setValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/ValueSetter;

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/ValueSetter;->set(I)V

    return-void
.end method
