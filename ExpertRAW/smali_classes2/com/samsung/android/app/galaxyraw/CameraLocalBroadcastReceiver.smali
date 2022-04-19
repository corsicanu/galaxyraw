.class public Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;
.super Ljava/lang/Object;
.source "CameraLocalBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraLocalBroadcastReceiver"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;


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

    new-instance v0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver$1;-><init>(Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-object p0
.end method


# virtual methods
.method registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.UPDATE_CHECK_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method unregisterReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
