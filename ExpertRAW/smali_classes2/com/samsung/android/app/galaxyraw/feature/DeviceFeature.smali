.class Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;
.super Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;
.source "DeviceFeature.java"


# instance fields
.field private final FLOATING_FEATURE_CAMREA_ID_MAP:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBooleanFeatureMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Landroid/content/res/Configuration;

.field private mCountryCode:Ljava/lang/String;

.field private final mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

.field private final mFloatFeatureMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/feature/FloatTag;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

.field private final mIntegerFeatureMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapFeatureMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/feature/MapTag;",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgManager:Landroid/content/pm/PackageManager;

.field private final mStringFeatureMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/feature/StringTag;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/RuntimeFeature;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature$1;

    const-class v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature$1;-><init>(Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->FLOATING_FEATURE_CAMREA_ID_MAP:Ljava/util/EnumMap;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->initializeBooleanFeatureMap()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->initializeFloatFeatureMap()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->initializeIntegerFeatureMap()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->initializeMapFeatureMap()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->initializeStringFeatureMap()V

    return-void
.end method

.method private confirmShootingModeEnable(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "modeFeature"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "SHOOTING_MODE_WECHAT_VIDEO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "true"

    const-string v2, "false"

    const/4 v3, 0x0

    const-string v4, "enable"

    if-nez v0, :cond_1

    const-string p0, "SHOOTING_MODE_AR_DOODLE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    const-string p1, "Can\'t confirm shooting mode enable or not."

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.samsung.android.ardrawing"

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string p1, "CscFeature_Common_SupportWechatSightMode"

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p2, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mCountryCode:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method private getPhysicalCameraId(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "defaultValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_LOGICAL_CAMERA"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->FLOATING_FEATURE_CAMREA_ID_MAP:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getDefaultShootingModeFeature()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "back"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "front"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "enable"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->confirmShootingModeEnable(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method private initializeBooleanFeatureMap()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_AUX_TUNING_USING_LOCAL_FILE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "AUX_TUNING_USING_LOCAL_FILE"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->isChina()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_JAPAN:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->isJapan()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_KOREA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->isKorea()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_IQ_CUSTOM_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "IQ_CUSTOM_MODE"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_REPLACE_WIFI_STRING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v5, "CscFeature_Common_ReplaceStringWifi"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wlan"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_UNPACK_BINARY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_ACTIVE_KEY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v4, "ACTIVE_KEY"

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_AMOLED_DISPLAY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v5, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mPkgManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.camera.autofocus"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_AUTO_HDR_MENU:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_AUTO_HDR_MENU:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_DUAL_PORTRAIT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_DUAL_PORTRAIT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_RT_HDR:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_RT_HDR:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SECOND_TELE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_SECOND_TELE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/4 v6, -0x1

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getPhysicalCameraId(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SECOND_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SECOND_TELE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_TELE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_TELE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getPhysicalCameraId(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_TELE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_TELE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_WIDE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getPhysicalCameraId(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_VIDEO_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_VIDEO_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SLOW_MOTION_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SLOW_MOTION_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SUPER_RESOLUTION_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v7, ""

    invoke-direct {p0, v4, v7}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_NORMAL_DUAL_PORTRAIT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_NORMAL_DUAL_PORTRAIT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_NORMAL_DUAL_PORTRAIT_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_NORMAL_DUAL_PORTRAIT_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v4, "BACK_WIDE_SUPER_SLOW_MOTION"

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_WIDE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v4

    if-eq v4, v6, :cond_4

    move v4, v5

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BARCODE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BARCODE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BIXBY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BLE_SPEN:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->isChina()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    goto :goto_5

    :cond_6
    move v4, v3

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BOKEH_FOCUSED_REGION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BOKEH_FOCUSED_REGION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMCORDER_ANTI_SHAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v4, "CAMCORDER_ANTI_SHAKE"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMCORDER_FRONT_ANTI_SHAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v4, "CAMCORDER_FRONT_ANTI_SHAKE"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v4, "CAMERA_FRONT_FLASH"

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_SCREEN_FLASH_VI:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v4, "CAMERA_SCREEN_FLASH_VI"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CLOSE_UP_SUGGESTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CLOSE_UP_SUGGESTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_COVER_MANAGER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v4, "SUPPORT_SVIEW_COVER_CAMERA"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DATA_MATRIX_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DATA_MATRIX_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    goto :goto_6

    :cond_7
    move v4, v3

    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DIRECTORS_VIEW_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DIRECTORS_VIEW_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DIRECTORS_VIEW_VDIS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DIRECTORS_VIEW_VDIS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DIRECTORS_VIEW_AUTO_TRACKING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DIRECTORS_VIEW_AUTO_TRACKING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DISPLAY_CUTOUT_ANIMATION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->DISPLAY_CUTOUT_ANIMATION_INFO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const/4 v8, 0x0

    check-cast v8, Ljava/util/Map;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_8

    move v4, v5

    goto :goto_7

    :cond_8
    move v4, v3

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DISPLAY_FRAME_RATE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DISPLAY_FRAME_RATE_IN_HZ:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v4

    if-eq v4, v6, :cond_9

    move v4, v5

    goto :goto_8

    :cond_9
    move v4, v3

    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DOWNLOAD_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v8, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_DOWNLOAD_EFFECT"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    goto :goto_9

    :cond_a
    move v4, v3

    :goto_9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DUAL_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DUAL_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_ESIM_MANAGER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v8, "CscFeature_RIL_SupportEsim"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_EXPAND_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_EXPAND_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FOCUS_PEAKING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FOCUS_PEAKING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FOOD_ADDED_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v4, "CAMERA_SUPPORT_FOOD_ADDED_LENS"

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FRONT_DYNAMIC_FOV_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v4

    if-eq v4, v6, :cond_b

    move v4, v5

    goto :goto_a

    :cond_b
    move v4, v3

    :goto_a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_DUAL_PORTRAIT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_DUAL_PORTRAIT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_RT_HDR:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_RT_HDR:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_SLOW_MOTION_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_SLOW_MOTION_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_SUPER_RESOLUTION_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v7}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FUNCTION_KEY_MENU_AT_GLOBAL_SETTINGS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FUNCTION_KEY_MENU"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HEIF_FORMAT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HEIF_FORMAT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HISTOGRAM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HISTOGRAM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HOME_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v4, "CAMERA_QUICK_LAUNCH_USING_HOME_KEY"

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v5

    goto :goto_b

    :cond_c
    move v4, v3

    :goto_b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_SEAMLESS_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_SEAMLESS_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SEAMLESS_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    goto :goto_c

    :cond_d
    move v4, v3

    :goto_c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_SUPER_STEADY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_SUPER_STEADY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HYPER_LAPSE_UHD:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_INTELLIGENT_GUIDE_TIPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_INTELLIGENT_GUIDE_TIPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_INTELLIGENT_RECOGNITION_TIPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_INTELLIGENT_RECOGNITION_TIPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY_IN_AUTO_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY_IN_AUTO_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY_MANUAL_RESHAPE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY_MANUAL_RESHAPE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY_SHAPE_CORRECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY_SHAPE_CORRECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_BACK_CAMERA_ANGLE_CHANGE_BY_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_BACK_CAMERA_ANGLE_CHANGE_BY_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_DUAL_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_DUAL_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_HDR_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_HDR_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_LENS_TYPE_CHANGE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_LENS_TYPE_CHANGE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_SCENE_DETECTION_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    goto :goto_d

    :cond_e
    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_SCENE_DETECTION_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_TORCH_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_TORCH_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LOW_PERFORMANCE_BURST_PANORAMA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "BURST_PANORAMA_LOW_PERFORMANCE"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LOW_PERFORMANCE_CONTINUOUS_SHOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "CAMERA_LOW_PERFORMANCE_CONTINUOUS"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MICRO_SD_SLOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "MICRO_SD_SLOT"

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MOON_LOCK_ONLY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MOON_LOCK_ONLY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MULTI_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MULTI_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v5

    goto :goto_e

    :cond_f
    move v2, v3

    :goto_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_NIGHT_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_NIGHT_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_NIGHT_CAPTURE_STOP:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_NIGHT_CAPTURE_STOP:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_NIGHT_MODE_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_NIGHT_MODE_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_NIGHT_SCREEN_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_NIGHT_FRONT_DISPLAY_FLASH"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_OBJECT_TRACKING_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_OBJECT_TRACKING_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PHOTO_NIGHT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PHOTO_NIGHT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PORTRAIT_LIGHTING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_VISION_CONFIG_RELIGHTING_SOLUTION"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "arcsoft.v1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PICTURE_PROCESSING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PICTURE_PROCESSING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PROCESSING_MAX_NIGHT_SHOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PROCESSING_MAX_NIGHT_SHOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PROCESSING_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PROCESSING_MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POWER_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "CAMERA_QUICK_LAUNCH_USING_POWER_KEY"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v2, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->isPanicModeSupported()Z

    move-result v2

    if-nez v2, :cond_10

    move v2, v5

    goto :goto_f

    :cond_10
    move v2, v3

    :goto_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PREVIEW_FIT_TO_FULL_SCREEN:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "CAMERA_PREVIEW_FIT_TO_FULL_SCREEN"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_COLOR_TUNE_TEMPERATURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_COLOR_TUNE_TEMPERATURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_RESET:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_RESET:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_8K:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_8K:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_AUDIO_INPUT_CONTROL:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_AUDIO_INPUT_CONTROL:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_AUDIO_BLUETOOTH_MIX_MIC:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_AUDIO_BLUETOOTH_MIX_MIC:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_FOCUS_PEAKING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_FOCUS_PEAKING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_RESET:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_RESET:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_WIDE_LENS_120FPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_WIDE_LENS_120FPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v5

    goto :goto_10

    :cond_11
    move v2, v3

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_WIDE_LENS_60FPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_WIDE_LENS_60FPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v5

    goto :goto_11

    :cond_12
    move v2, v3

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_CONTINUOUS_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_CONTINUOUS_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_TOUCH_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_RECORDING_TOUCH_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_REVIEW:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_REVIEW:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SAVE_AS_FLIPPED_IN_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SAVE_AS_FLIPPED_IN_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SCENE_DETECTION_LITE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SCENE_DETECTION_LITE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SEAMLESS_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SEAMLESS_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SECURITY_MDM_SERVICE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v4, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_PERSONALIZATION"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NaturalBright"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SHOW_PAUSED_PREVIEW_TO_RESUME_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "SHOW_PAUSED_PREVIEW_TO_RESUME_CAMERA"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SHUTTER_SOUND_MENU:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v4, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_60_FPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "SUPPORT_SINGLE_TAKE_60_FPS"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "SINGLE_TAKE_USING_BEAUTY"

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_BURST_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_BURST_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_CONTINUOUS_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "SINGLE_TAKE_USING_CONTINUOUS_AF"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_CUSTOMIZED_OPTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_CUSTOMIZED_OPTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_FILTERED_VIDEOS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_FILTERED_VIDEOS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_GENERATE_CONTENTS_FROM_ORIGINAL_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_GENERATE_CONTENTS_FROM_ORIGINAL_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_HIGHLIGHT_VIDEOS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_HIGHLIGHT_VIDEOS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_PORTRAITS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_PORTRAITS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "SINGLE_TAKE_USING_SCENE_OPTIMIZER"

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->isSmartBeautySupportedCountry()Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v5

    goto :goto_12

    :cond_13
    move v2, v3

    :goto_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY_WITH_RESHAPE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->isSmartBeautySupportedCountry()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_BEAUTY_MANUAL_RESHAPE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->isChina()Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v5

    goto :goto_13

    :cond_14
    move v2, v3

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_SCAN_MANUAL_CROP:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_SCAN_MANUAL_CROP:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_SCAN_EXTRACT_TEXT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_SCAN_EXTRACT_TEXT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_STAR_BURST:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_STAR_BURST:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_RESOLUTION_SMART_TIPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_RESOLUTION_SMART_TIPS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_AUTO_DETECT_DISABLE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_AUTO_DETECT_DISABLE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_AUTO_DETECT_PREPARE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_AUTO_DETECT_PREPARE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_FPS_CHANGEABLE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_FPS_CHANGEABLE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_FRC_AUTO_CHANGE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_FRC_AUTO_CHANGE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_FRC_FIXED:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_FRC_FIXED:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_FRC_TIME_HALF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    const-string v2, "SUPER_SLOW_MOTION_FRC_TIME_HALF"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SUPER_SLOW_MOTION_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SWITCH_FACING_WHILE_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SWITCH_FACING_WHILE_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_TAP_AND_HOLD_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_TAP_AND_HOLD_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_TAP_TO_TAKE_PICTURES:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_TAP_TO_TAKE_PICTURES:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_THERMISTOR_TEMPERATURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v4, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VDIS_CENTER_CROP_FOR_PREVIEW_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VDIS_CENTER_CROP_FOR_PREVIEW_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VDIS_IN_SINGLE_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VDIS_IN_SINGLE_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_STABILIZATION_WITH_TRACKING_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_STABILIZATION_WITH_TRACKING_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VOICE_COMMAND:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VOICE_COMMAND:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_ZOOM:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_ZOOM_MAP_VIEW:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_ZOOM_MAP_VIEW:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_3_5_PI_HEADSET:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_3_5_PI_HEADSET:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->values()[Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_15

    return-void

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeBooleanFeatureMap : Tag size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->values()[Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeFloatFeatureMap()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BACK_TELE_CAMERA_ZOOM_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BACK_TELE_CAMERA_ZOOM_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    const v3, 0x3f333333    # 0.7f

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->PANORAMA_NORMAL_ANGLE_CAL_FACTOR:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->PANORAMA_NORMAL_ANGLE_CAL_FACTOR:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    const v3, 0x3f866666    # 1.05f

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->PANORAMA_WIDE_ANGLE_CAL_FACTOR:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->PANORAMA_WIDE_ANGLE_CAL_FACTOR:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->QUICK_SETTING_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->QUICK_SETTING_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    const v3, 0x3dd91687    # 0.106f

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->values()[Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeFloatFeatureMap : Tag size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->values()[Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeIntegerFeatureMap()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_NORMAL_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_NORMAL_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getPhysicalCameraId(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_WIDE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_WIDE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/4 v4, -0x1

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getPhysicalCameraId(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_TELE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_TELE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getPhysicalCameraId(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_SECOND_TELE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_SECOND_TELE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getPhysicalCameraId(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_SUPER_RESOLUTION_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_SUPER_RESOLUTION_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DEFAULT_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const-string v2, "IQ_CUSTOM_MODE"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->isStrongBeautySupportedCountry()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DELAY_TIME_TO_RESUME_WHEN_SWITCH_FACING_WHILE_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DELAY_TIME_TO_RESUME_WHEN_SWITCH_FACING_WHILE_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FLASH_OVERHEAT_LIMITATION_TEMP:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FLASH_OVERHEAT_LIMITATION_TEMP:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/16 v6, 0x3e7

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FRONT_DYNAMIC_FOV_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FRONT_DYNAMIC_FOV_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FULL_SCREEN_PREVIEW_HEIGHT:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/16 v2, 0x640

    const-string v6, "CAMERA_FULL_SCREEN_PREVIEW_HEIGHT"

    invoke-direct {p0, v6, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FULL_SCREEN_PREVIEW_WIDTH:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/16 v2, 0xb1c

    const-string v6, "CAMERA_FULL_SCREEN_PREVIEW_WIDTH"

    invoke-direct {p0, v6, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MAX_POST_PROCESSING_COUNT_FOR_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const-string v2, "MAX_POST_PROCESSING_COUNT_FOR_CAPTURE"

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MAX_SAVING_TASK_QUEUE_SIZE_FOR_MMC:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MAX_SAVING_TASK_QUEUE_SIZE_FOR_MMC:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/4 v5, 0x3

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MAX_SEAMLESS_ZOOM_RECORDING_TIME_LIMIT_IN_OVERHEAT_CONDITION:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MAX_SEAMLESS_ZOOM_RECORDING_TIME_LIMIT_IN_OVERHEAT_CONDITION:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/16 v5, 0x384

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MIN_RECORDING_TIME_TO_ENABLE_LOW_POWER_MODE:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MIN_RECORDING_TIME_TO_ENABLE_LOW_POWER_MODE:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/16 v5, 0x258

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MOTION_PHOTO_RECORDING_FPS:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->MOTION_PHOTO_RECORDING_FPS:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/16 v5, 0xf

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SCREEN_ORIENTATION:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SINGLE_TAKE_CAPTURE_INTERVAL:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SINGLE_TAKE_CAPTURE_INTERVAL:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SINGLE_TAKE_CAPTURE_INTERVAL_FOR_OVERHEAT:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SINGLE_TAKE_CAPTURE_INTERVAL_FOR_OVERHEAT:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const/16 v5, 0x7d0

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SUPER_SLOW_MOTION_MAX_FRC_TIME:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->SUPER_SLOW_MOTION_MAX_FRC_TIME:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->NIGHT_SCREEN_FLASH_TRANSPARENCY:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v3, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_NIGHT_FRONT_DISPLAY_FLASH_TRANSPARENT"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DISPLAY_FRAME_RATE_IN_HZ:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->DISPLAY_FRAME_RATE_IN_HZ:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->values()[Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeIntegerFeatureMap : Tag size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->values()[Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeMapFeatureMap()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1072X1072:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1072X1072:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const/4 v3, 0x0

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1280X720:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1280X720:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_120FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_120FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824_120FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824_120FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X824_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2224X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2224X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2288X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2288X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2320X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2320X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2400X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2400X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2560X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_2560X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X1644:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X1644:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X1644_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X1644_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X1644_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X1644_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X3296:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X3296:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X3296_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X3296_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X4320:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X4320:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->BACK_CAMCORDER_RESOLUTION_FEATURE_MAP_7680X4320_24FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->DISPLAY_CUTOUT_ANIMATION_INFO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->DISPLAY_CUTOUT_ANIMATION_INFO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1072X1072:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1072X1072:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1280X720:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1280X720:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1440X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1080_AUTO_FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_1920X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2224X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2224X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2288X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2288X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2320X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2320X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2400X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2400X1080:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2560X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_2560X1440:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->FRONT_CAMCORDER_RESOLUTION_FEATURE_MAP_3840X2160_60FPS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_AR_DOODLE"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_DUAL_RECORDING"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_FOOD"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_HYPER_LAPSE"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_LIVE_FOCUS"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_LIVE_FOCUS_VIDEO"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_MULTI_RECORDING"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_NIGHT"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_PANORAMA"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_PHOTO"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_PRO"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_PRO_VIDEO"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_QR"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_SELFIE_FOCUS"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_SINGLE_TAKE_PHOTO"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_SINGLE_TAKE_VIDEO"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_SLOW_MOTION"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_SUPER_SLOW_MOTION"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    const-string v2, "SHOOTING_MODE_VIDEO"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getShootingModeFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->values()[Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeMapFeatureMap : Tag size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->values()[Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeStringFeatureMap()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_PICTURE_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v3, "4032x3024"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v2, "IQ_CUSTOM_MODE"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "3840x2160"

    const-string v6, "1920x1080"

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_PRO_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_PRO_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RECORDING_MIN_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RECORDING_MIN_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v7, "1280x720"

    invoke-direct {p0, v4, v7}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v8, ""

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_16BY9_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_1BY1_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_16BY9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_16BY9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_1BY1:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_1BY1:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_4BY3:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_4BY3:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_SECOND_PICTURE_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_WIDE_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v4, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_PICTURE_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v9, "3264x2448"

    invoke-direct {p0, v4, v9}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RECORDING_DEFAULT_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RECORDING_MIN_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RECORDING_MIN_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v7}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_16BY9_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_1BY1_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v9}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_MEDIUM:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_4BY3_SMALL:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_16BY9_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_1BY1_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v3, "2592x1944"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->PANORAMA_NORMAL_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->PANORAMA_NORMAL_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->PANORAMA_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->PANORAMA_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_1_1:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_1_1:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v3, "1088x1088"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_16_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_16_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_18DOT5_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_18DOT5_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v3, "2224x1080"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_19_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_19_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v3, "2288x1080"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_19DOT3_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_19DOT3_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v3, "2320x1080"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_20_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_20_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v3, "2400x1080"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_21_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_21_9:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v4, "1920x824"

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_4_3:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_4_3:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v5, "1440x1080"

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_CIF:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REAL_PREVIEW_SIZE_CIF:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v5, "352x288"

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_1_1_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_1_1_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v5, "1440x1440"

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO_8K:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_16_9_RATIO_8K:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v5, "7680x4320"

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_21_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_21_9_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_21_9_RATIO_8K:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_21_9_RATIO_8K:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v4, "7680x3296"

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_4_3_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_4_3_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    const-string v4, "1920x1440"

    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->REPRESENTATIVE_CAMCORDER_RESOLUTION_FOR_FULL_RATIO:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->TARGET_PLATFORM_VERSION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->TARGET_PLATFORM_VERSION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->SYSTEM_PLATFORM_VERSION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatingFeature:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v3, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_GALAXYRAW_PLATFORM_VERSION"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->values()[Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeStringFeatureMap : Tag size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->values()[Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isChina()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CHINA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isJapan()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JAPAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isKorea()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KOREA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isPanicModeSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Framework_ConfigActionForMultiPowerPress"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PanicMode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSmartBeautySupportedCountry()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "BANGLADESH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "THAILAND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "HONG KONG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "SINGAPORE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "VIETNAM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "MALAYSIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "NEPAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "INDIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "CHINA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "PHILIPPINES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "SRI LANKA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "TAIWAN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    move v3, v1

    goto :goto_0

    :sswitch_c
    const-string v0, "INDONESIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x797e4edc -> :sswitch_c
        -0x6cf27638 -> :sswitch_b
        -0x571ff547 -> :sswitch_a
        -0x2cf0d5f -> :sswitch_9
        0x3d1fd37 -> :sswitch_8
        0x4293117 -> :sswitch_7
        0x46bbb64 -> :sswitch_6
        0x329d873b -> :sswitch_5
        0x45dd5f18 -> :sswitch_4
        0x4c6d7304 -> :sswitch_3
        0x5af06d3d -> :sswitch_2
        0x69b6a187 -> :sswitch_1
        0x7829b1c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isStrongBeautySupportedCountry()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "BANGLADESH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "HONG KONG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "NEPAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "KOREA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "JAPAN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "INDIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "CHINA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "JP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v3, v1

    goto :goto_0

    :sswitch_8
    const-string v0, "SRI LANKA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x571ff547 -> :sswitch_8
        0x946 -> :sswitch_7
        0x3d1fd37 -> :sswitch_6
        0x4293117 -> :sswitch_5
        0x4318be6 -> :sswitch_4
        0x446088a -> :sswitch_3
        0x46bbb64 -> :sswitch_2
        0x5af06d3d -> :sswitch_1
        0x7829b1c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private loadFeature(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "defaultValue"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private loadFeature(Ljava/lang/String;F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customTag",
            "defaultValue"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private loadFeature(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "defaultValue"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private loadFeature(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customTag",
            "defaultValue"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private loadFeature(Lcom/samsung/android/app/galaxyraw/feature/StringTag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "defaultValue"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loadFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customTag",
            "defaultValue"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loadFeature(Lcom/samsung/android/app/galaxyraw/feature/MapTag;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "defaultValue"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private loadFeature(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customTag",
            "defaultValue"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private loadFeature(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "defaultValue"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private loadFeature(Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customTag",
            "defaultValue"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/feature/FeatureLoader;->getCameraFeature(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mFloatFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mIntegerFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mStringFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mMapFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;->mBooleanFeatureMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
