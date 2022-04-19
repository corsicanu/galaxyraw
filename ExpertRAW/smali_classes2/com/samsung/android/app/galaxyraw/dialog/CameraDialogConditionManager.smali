.class public Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;
.super Ljava/lang/Object;
.source "CameraDialogConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;,
        Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;
    }
.end annotation


# static fields
.field private static final KEY_CHANGE_STORAGE_SETTING_DIALOG_ENABLED:Ljava/lang/String; = "change_storage_setting_dialog_enabled"

.field private static final KEY_FORCED_SOUND_WAIVER_CONDITION_POPUP_ENABLED:Ljava/lang/String; = "forced_sound_waiver_condition_popup_enabled"

.field private static final KEY_LOCATION_TAG_POPUP_DISPLAY_COUNT:Ljava/lang/String; = "location_tag_popup_display_count_key"

.field private static final KEY_NEED_SHOW_INFORMATION_SECURITY_DIALOG:Ljava/lang/String; = "need_show_information_security_dialog"

.field private static final NUM_LOCATION_TAG_CAMERA_LAUNCH_COUNT_FOR_DISPLAY:I = 0x3

.field private static final NUM_LOCATION_TAG_POPUP_DISPLAY:I = 0x2

.field private static final PREF_KEY_HRM_SENSOR_CAPTURE_UNAVAILABLE_GUIDE_POPUP_ENABLED:Ljava/lang/String; = "hrm_sensor_capture_unavailable_guide_popup_enabled"

.field private static final TAG:Ljava/lang/String; = "CameraDialogUtil"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPropertyMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;",
            "Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->makePropertyMap()Ljava/util/EnumMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    return-void
.end method

.method private isChangeStorageSettingDialogEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    const-string v1, "change_storage_setting_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isLocationTagToastEnabled()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isLDUModel()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_UNPACK_BINARY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    const-string v2, "location_tag_popup_display_count_key"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x2

    if-ge v0, v5, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return v1

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method private isNeedShowInformationSecurityDialog()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    const-string v0, "need_show_information_security_dialog"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private makePropertyMap()Ljava/util/EnumMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;",
            "Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "change_storage_setting_dialog_enabled"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialogConditionManager$YawQjJOWwohHwiazyBVU0fRurXg;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialogConditionManager$YawQjJOWwohHwiazyBVU0fRurXg;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->setEnabledChecker(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;

    const-string v3, "forced_sound_waiver_condition_popup_enabled"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;

    const-string v3, "location_tag_first_launch_camera_key"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialogConditionManager$tRGD1FLChuHRWx3eMo6f70tOCpc;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialogConditionManager$tRGD1FLChuHRWx3eMo6f70tOCpc;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->setEnabledChecker(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;

    const-string v3, "hrm_sensor_capture_unavailable_guide_popup_enabled"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UNAVAILABLE_HRM_CAPTURE_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;

    const-string v3, "need_show_information_security_dialog"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialogConditionManager$UYcLNLassXjadU1xoZsM5_6pWjs;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialogConditionManager$UYcLNLassXjadU1xoZsM5_6pWjs;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->setEnabledChecker(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UPDATE_USING_DATA_INFORMATION_SECURITY_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {v0, p0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method isDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->getEnabledChecker()Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->getEnabledChecker()Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;->isEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method isLocationTagDialogEnabled(ZI)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isRestarted",
            "locationTagValue"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isLDUModel()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_UNPACK_BINARY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    const-string v0, "location_tag_launch_camera_count_key"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    const-string v2, "location_tag_first_launch_camera_key"

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 p2, p1, 0x1

    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method isNetworkConnectionAgreedInInformationSecurityDialog()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    const-string v0, "pref_network_connection_allowed_in_china_information_security_dialog"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNetworkConnectionAgreedInInformationSecurityDialog = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraDialogUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public synthetic lambda$makePropertyMap$0$CameraDialogConditionManager(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->isChangeStorageSettingDialogEnabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$makePropertyMap$1$CameraDialogConditionManager(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->isLocationTagToastEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$makePropertyMap$2$CameraDialogConditionManager(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->isNeedShowInformationSecurityDialog()Z

    move-result p0

    return p0
.end method

.method setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "enabled"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    xor-int/lit8 v2, p2, 0x1

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDialogEnabled id ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraDialogUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
