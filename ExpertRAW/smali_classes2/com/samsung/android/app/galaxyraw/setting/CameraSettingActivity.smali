.class public Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CameraSettingActivity.java"


# static fields
.field protected static final ADVANCED_RECORDING_OPTIONS:Ljava/lang/String; = "advanced_recording_options"

.field protected static final HDR_OPTION:Ljava/lang/String;

.field protected static final HOW_TO_USE:Ljava/lang/String; = "how_to_use"

.field protected static final SAVE_OPTIONS:Ljava/lang/String; = "save_options"

.field protected static final SCENE_OPTIMIZER:Ljava/lang/String;

.field protected static final SETTINGS_TO_KEEP:Ljava/lang/String; = "settings_to_keep"

.field protected static final SHOOTING_METHOD:Ljava/lang/String; = "shooting_method"

.field protected static final TAG:Ljava/lang/String; = "CameraSettingActivity"


# instance fields
.field private final CUSTOMIZATION_SERVICE_TARGET_PAGE_APPS:I

.field private final CUSTOMIZATION_SERVICE_TARGET_PAGE_MAIN:I

.field private final CUSTOMIZATION_SERVICE_TARGET_PAGE_SI:I

.field private final mActivityChooserGetterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

.field private mIsBackSuperResolutionSupported:Z

.field private mIsFromApplicationSettings:Z

.field private mIsFromSecureLocationSetting:Z

.field private mIsRecordingMode:Z

.field private mIsSecureCamera:Z

.field private mIsStartSubActivity:Z

.field private mLayoutRes:I

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNeedToShowLocationDialog:Z

.field private mPreferenceFragment:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->HDR_OPTION:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->SCENE_OPTIMIZER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsStartSubActivity:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsSecureCamera:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsRecordingMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsBackSuperResolutionSupported:Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mLayoutRes:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->CUSTOMIZATION_SERVICE_TARGET_PAGE_MAIN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->CUSTOMIZATION_SERVICE_TARGET_PAGE_APPS:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->CUSTOMIZATION_SERVICE_TARGET_PAGE_SI:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mActivityChooserGetterMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$1;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$2;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsStartSubActivity:Z

    return p0
.end method

.method private checkTimeForAppUpdate()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    const-string v0, "key_recent_app_update_check_time"

    invoke-static {p0, v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkTimeForAppUpdate : recent = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", diff = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraSettingActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x7b98a00

    cmp-long p0, v4, v2

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private hideStatusBarForLandscape(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private initActivityChooser()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mActivityChooserGetterMap:Ljava/util/Map;

    const-class v1, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;

    const-string v2, "save_options"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mActivityChooserGetterMap:Ljava/util/Map;

    const-class v1, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;

    const-string v2, "shooting_method"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mActivityChooserGetterMap:Ljava/util/Map;

    const-class v1, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;

    const-string v2, "advanced_recording_options"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mActivityChooserGetterMap:Ljava/util/Map;

    const-class v1, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;

    const-string v2, "how_to_use"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mActivityChooserGetterMap:Ljava/util/Map;

    const-class v0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;

    const-string v1, "settings_to_keep"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeLocationManager()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    :cond_0
    return-void
.end method

.method private launchCustomizationService()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getCustomizationServiceState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchCustomizationService - customizationServiceState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettingActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x78612ec7

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x6cbca816

    if-eq v1, v2, :cond_2

    const v2, -0x4e296d42

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9dc

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "USER_NOT_CONSENT_TO_COLLECT_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "ACCOUNT_NOT_SIGNED_IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v1, "USER_NOT_ENABLE_RUBIN_IN_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_5

    move v3, v4

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.rubin.CS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "targetPage"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private registerIntentFilter()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.CAMERA_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.UPDATE_CHECK_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MICRO_SD_SLOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private returnToCamera()V
    .locals 1

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    return-void
.end method

.method private startActivityWithFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragmentName",
            "bundle"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityWithFragment : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivityWithFragment(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method private startActivityWithFragment(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragmentName",
            "bundle",
            "requestCode"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsStartSubActivity:Z

    const-string v1, "CameraSettingActivity"

    if-eqz v0, :cond_0

    const-string p0, "startActivityWithFragment : Ignored. already sub activity was started"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsStartSubActivity:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mActivityChooserGetterMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p2, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->updateParcel()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    const-string v3, "setting"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsRecordingMode:Z

    const-string v3, "isRecordingMode"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "fragment_name"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "camera-parcel"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsBackSuperResolutionSupported:Z

    const-string v3, "isBackSuperResolutionSupported"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p3, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startActivityWithFragment: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private startPermissionsActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/PermissionsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraSettingActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private unregisterIntentFilter()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBroadcastReceiver isn\'t registered : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraSettingActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected getCameraSettings()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "camera-parcel"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "CameraSettingActivity"

    if-nez p0, :cond_0

    const-string p0, "Bundle is null."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "setting"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraSettings[Parcel] given by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preferenceKey"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object p0

    invoke-virtual {p0}, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isNetworkProviderEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->initializeLocationManager()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected isRecordingMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsRecordingMode:Z

    return p0
.end method

.method public synthetic lambda$onResume$0$CameraSettingActivity(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExecutorCommand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->returnToCamera()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7ea

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p1, v0, :cond_3

    const/16 p3, 0x7f3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eq p2, v3, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "The user was asked to change settings, but chose not to"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->setLocationTag(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "All required changes were successfully made"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->setLocationTag(Z)V

    goto :goto_0

    :cond_3
    if-ne p2, v3, :cond_6

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "location_dialog_id"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$SettingDialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v4, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->requestHighAccuracyLocationMode()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->setLocationTag(Z)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->hideStatusBarForLandscape(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "CameraSettingActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDimController()Lcom/samsung/android/app/galaxyraw/setting/DimController;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isSecureCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsSecureCamera:Z

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->checkRuntimePermission(Landroid/app/Activity;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "camera-parcel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "fromApplicationSettings"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    const-string p1, "isRecordingMode"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsRecordingMode:Z

    const-string p1, "isBackSuperResolutionSupported"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsBackSuperResolutionSupported:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->registerIntentFilter()V

    const p1, 0x7f0d0011

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->setContentView(I)V

    const p1, 0x7f0a02fc

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0a0175

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mLayoutRes:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->initActivityChooser()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->newInstance()Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mLayoutRes:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    :cond_4
    :goto_0
    const-string v0, "Finish. CameraSettings is null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "CameraSettingActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->unregisterIntentFilter()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-string p1, "CameraSettingActivity"

    const-string p2, "BACK KEY PRESSED!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "002"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const p2, 0x7f120435

    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "reverse_create"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finishAffinity()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isInMultiWindowMode"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onMultiWindowModeChanged(Z)V

    const-string v0, "CameraSettingActivity"

    const-string v1, "onMultiWindowModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12036d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120435

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "002"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v0, 0x7f120435

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const-string v0, "CameraSettingActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->deInitialize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const-string v0, "CameraSettingActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsFromApplicationSettings:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->updateParcel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsStartSubActivity:Z

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->isNetworkProviderEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->setLocationTag(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_CHINA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    :cond_4
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mNeedToShowLocationDialog:Z

    :cond_5
    const-string v1, "002"

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BIXBY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->setCurrentSettingActivity(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraExecutorManager:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingActivity$u33AlsTxRfP_bbJYYIAy4bJkmQc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$CameraSettingActivity$u33AlsTxRfP_bbJYYIAy4bJkmQc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager;->setExecutorCommandListener(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManager$ExecutorCommandListener;)V

    :cond_6
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->hideStatusBarForLandscape(I)V

    return-void
.end method

.method public requestHighAccuracyLocationMode()V
    .locals 3

    const-string v0, "CameraSettingActivity"

    const-string v1, "requestHighAccuracyLocationMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsSecureCamera:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsFromSecureLocationSetting:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->isNetworkProviderEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "network provider enabled is true. Set location tag on."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->setLocationTag(Z)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->requestHighAccuracyLocationMode(Landroid/app/Activity;)V

    return-void
.end method

.method public resetSetting()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getIsPermanentDeniedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->clearPreferences(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->setIsPermanentDeniedPermission(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HOME_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POWER_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CameraSettingActivity"

    const-string v1, "update setting db for double tab launch as default value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    const-string v2, "double_tab_launch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POWER_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lcd_curtain"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const/16 v0, 0xc1c

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    return-void
.end method

.method public setLocationTag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationTag"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mPreferenceFragment:Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->setLocationTag(Z)V

    :cond_0
    return-void
.end method

.method protected showSecondDepthFragment(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivityWithFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->HDR_OPTION:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivityWithFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startSelfieToneActivity()V

    :goto_0
    return-void
.end method

.method protected showSecondDepthFragment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefKey"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "shooting_method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "customization_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "permissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "how_to_use"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "save_options"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "about_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "advanced_recording_options"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "settings_to_keep"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->launchCustomizationService()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startPermissionsActivity()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startAboutCameraActivity()V

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivityWithFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7de4c553 -> :sswitch_7
        -0x4830888d -> :sswitch_6
        -0x5130be9 -> :sswitch_5
        0x3a6521dc -> :sswitch_4
        0x3ed93c92 -> :sswitch_3
        0x4392f484 -> :sswitch_2
        0x473a9249 -> :sswitch_1
        0x6c781d3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public startAboutCameraActivity()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsStartSubActivity:Z

    const-string v1, "CameraSettingActivity"

    if-eqz v0, :cond_0

    const-string p0, "startAboutCameraActivity : Ignored. already sub activity was started"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsStartSubActivity:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startContactUsActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "voc://view/contactUs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "packageName"

    const-string v2, "com.samsung.android.app.galaxyraw"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appId"

    const-string v2, "dsd5xe2604"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appName"

    const-string v2, "Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsStartSubActivity:Z

    :cond_0
    return-void
.end method

.method public startSelfieToneActivity()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.galaxyraw.Camera"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECURE_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "isSecure"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "selfie_tone_camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startActivity(Landroid/content/Intent;)V

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->mIsStartSubActivity:Z

    return-void
.end method
