.class public Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;
.super Ljava/lang/Object;
.source "CameraTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;
    }
.end annotation


# static fields
.field private static final MSG_FLASH_TEMPERATURE_CHECK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraTemperatureMgr"

.field private static mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

.field private static final mInstanceLock:Ljava/lang/Object;


# instance fields
.field private mBatteryLevel:I

.field private mBatteryTemperature:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mFlashLimitTemperature:I

.field private final mHandler:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;

.field private mIsFlashDisabledByOTG:Z

.field private mIsFlashTemperatureHighToUse:Z

.field private mIsTemperatureHighToRecordSeamlessZoom:Z

.field private mIsTuning:Z

.field private final mLowBatteryWarningLevel:I

.field private mOverheatLevel:I

.field private mThermistorDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
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

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBatteryTemperature:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBatteryLevel:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsFlashDisabledByOTG:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsTemperatureHighToRecordSeamlessZoom:Z

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mOverheatLevel:I

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsTuning:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsFlashTemperatureHighToUse:Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FLASH_OVERHEAT_LIMITATION_TEMP:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mFlashLimitTemperature:I

    const/16 v0, 0x1b58

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mThermistorDuration:I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mHandler:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_lowBatteryWarningLevel"

    const-string v2, "integer"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mLowBatteryWarningLevel:I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->handleSIOPLevelChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->checkFlashTemperature()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mThermistorDuration:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;)Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mHandler:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;

    return-object p0
.end method

.method private checkFlashTemperature()V
    .locals 3

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFlashTemperature : flashTempeprature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraTemperatureMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mFlashLimitTemperature:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsFlashTemperatureHighToUse:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsFlashTemperatureHighToUse:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->handleFlashLimit()V

    :cond_1
    return-void
.end method

.method public static clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->clearContext()V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearContext()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-void
.end method

.method public static getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getTemperatureFromPreference()V
    .locals 6

    const-string v0, "CameraTemperatureMgr"

    const-string v1, "getTemperatureFromPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pref_camera_flash_overheat_limitation_temp"

    const-string v2, "pref_camera_polling_time_temp"

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.camtemperaturetester"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "cam_temperature_tester_preferences"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->FLASH_OVERHEAT_LIMITATION_TEMP:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;)I

    move-result v4

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mFlashLimitTemperature:I

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mThermistorDuration:I

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mThermistorDuration:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTemperatureFromPreference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private handleCameraLimit()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->OVERHEAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->isCameraDialogVisible(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1204e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12046c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120207

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->OVERHEAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CameraTemperatureManager$YEMSJ1PgTybIydb1nrPsXJU1LI4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CameraTemperatureManager$YEMSJ1PgTybIydb1nrPsXJU1LI4;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleFlashLimit()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMERA_FLASH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->isFlashRestrictionRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->showFlashRestrictionToast()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleOverheatLevel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mOverheatLevel:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.OVERHEAT_LEVEL_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mOverheatLevel:I

    :cond_1
    return-void
.end method

.method private handleRecordingSeamlessZoomLimit(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabled"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsTemperatureHighToRecordSeamlessZoom:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.LIMIT_RECORDING_SEAMLESS_ZOOM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsTemperatureHighToRecordSeamlessZoom:Z

    :cond_0
    return-void
.end method

.method private handleSIOPLevelChanged(Landroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "camera_start_disable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "otg_flash_led_disable"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "dual_camera_disable"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "camera_recording_overheat_level"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "camera_uhd_video_low_power_mode"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSIOPLevelChanged : camera_start_disable="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",otg_flash_led_disable="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",seamlessZoomDisable="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",overheatLevel = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraTemperatureMgr"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->handleCameraLimit()V

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsFlashDisabledByOTG:Z

    if-eq p1, v2, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsFlashDisabledByOTG:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->handleFlashLimit()V

    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->handleRecordingSeamlessZoomLimit(Z)V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->handleOverheatLevel(I)V

    return-void
.end method

.method private isBatteryTemperatureLowToUseFlash()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBatteryTemperature:I

    const/16 v0, -0x32

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFlashRestrictionRequired()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->isLowBatteryStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->isBatteryTemperatureLowToUseFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsFlashTemperatureHighToUse:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsFlashDisabledByOTG:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isLowBatteryStatus()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBatteryLevel:I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mLowBatteryWarningLevel:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$YEMSJ1PgTybIydb1nrPsXJU1LI4(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startTemperatureCheckTimer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mHandler:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mHandler:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopTemperatureCheckTimer()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mHandler:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$TemperatureManagerHandler;->removeMessages(I)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterReceiver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraTemperatureMgr"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getOverheatLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mOverheatLevel:I

    return p0
.end method

.method protected handleBatteryChanged(Landroid/content/Intent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    if-ne v4, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    :cond_1
    :goto_0
    const-string v6, "temperature"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBatteryTemperature:I

    mul-int/lit8 p1, v3, 0x64

    div-int/2addr p1, v2

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBatteryLevel:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBatteryChanged : Level = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", Status = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", battPlugged = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", batteryTemperature = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBatteryTemperature:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", batteryLevel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mBatteryLevel:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", isCharging = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraTemperatureMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->handleFlashLimit()V

    return-void
.end method

.method public isTemperatureHighToDualRecord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsTemperatureHighToRecordSeamlessZoom:Z

    return p0
.end method

.method public showFlashRestrictionToast()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->isLowBatteryStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v0, 0x7f120396

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsFlashTemperatureHighToUse:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v0, 0x7f12046d

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->isBatteryTemperatureLowToUseFlash()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v0, 0x7f12030d

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsFlashDisabledByOTG:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const v0, 0x7f12029c

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V

    :cond_3
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "CameraTemperatureMgr"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->registerReceiver()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_THERMISTOR_TEMPERATURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->mIsTuning:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getTemperatureFromPreference()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->startTemperatureCheckTimer()V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "CameraTemperatureMgr"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->unregisterReceiver()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_THERMISTOR_TEMPERATURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->stopTemperatureCheckTimer()V

    :cond_0
    return-void
.end method
