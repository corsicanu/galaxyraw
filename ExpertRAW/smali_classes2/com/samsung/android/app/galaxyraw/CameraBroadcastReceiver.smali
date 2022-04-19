.class Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;
.super Ljava/lang/Object;
.source "CameraBroadcastReceiver.java"


# static fields
.field private static final ACTION_BUTTON_DOUBLE_CLICK:Ljava/lang/String; = "com.samsung.android.action.DOUBLE_CLICK"

.field private static final ACTION_EMERGENCY_STATE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

.field private static final ACTION_INCOMINGCALL_DURING_RECORDING:Ljava/lang/String; = "com.samsung.telecom.IncomingCallAnsweredDuringRecord"

.field private static final ACTION_POWER_OFF_ANIMATION_START:Ljava/lang/String; = "POWER_OFF_ANIMATION_START"

.field private static final ACTION_SCREEN_MIRRORING_NOT_ALLOWED:Ljava/lang/String; = "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

.field private static final ACTION_SCREEN_RATIO_VALUE:Ljava/lang/String; = "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

.field private static final ACTION_SKT_DCMO_SET:Ljava/lang/String; = "com.sktelecom.dmc.intent.action.DCMO_SET"

.field private static final ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field private static final ACTION_VIDEO_CAPABILITY:Ljava/lang/String; = "android.intent.action.VIDEOCAPABILITY"

.field private static final ACTION_WIFI_DISPLAY_NOT_ALLOWED:Ljava/lang/String; = "com.samsung.intent.action.WIFI_DISPLAY_NOT_ALLOWED"

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field private static final SMART_VIEW_CONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraBroadcastReceiver"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

.field private final mEntireLifetimeReceiver:Landroid/content/BroadcastReceiver;

.field private final mForegroundLifetimeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$1;-><init>(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mForegroundLifetimeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$2;-><init>(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;-><init>(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mEntireLifetimeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-object p0
.end method


# virtual methods
.method registerEntireLifetimeReceiver()V
    .locals 3

    const-string v0, "CameraBroadcastReceiver"

    const-string v1, "registerEntireLifetimeReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mEntireLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.adobe.lrmobile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mEntireLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method registerForegroundLifetimeReceiver()V
    .locals 4

    const-string v0, "CameraBroadcastReceiver"

    const-string v1, "registerForegroundLifetimeReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.VIDEOCAPABILITY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SECURITY_MDM_SERVICE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string v2, "com.samsung.telecom.IncomingCallAnsweredDuringRecord"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.samsung.android.action.DOUBLE_CLICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string v2, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mForegroundLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mForegroundLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "registerReceivers done"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method registerShutdownReceiver()V
    .locals 2

    const-string v0, "CameraBroadcastReceiver"

    const-string v1, "registerShutdownReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method unregisterEntireLifetimeReceiver()V
    .locals 3

    const-string v0, "CameraBroadcastReceiver"

    const-string v1, "unregisterEntireLifetimeReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mEntireLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEntireLifetimeReceiver isn\'t registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method unregisterForegroundLifetimeReceiver()V
    .locals 3

    const-string v0, "CameraBroadcastReceiver"

    const-string v1, "unregisterForegroundLifetimeReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mForegroundLifetimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mForegroundLifetimeReceiver isn\'t registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method unregisterShutdownReceiver()V
    .locals 3

    const-string v0, "CameraBroadcastReceiver"

    const-string v1, "unregisterShutdownReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutdownReceiver isn\'t registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
