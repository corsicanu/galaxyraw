.class public Lcom/samsung/android/app/galaxyraw/WatchServiceManager;
.super Ljava/lang/Object;
.source "WatchServiceManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager$PreviewLayoutChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/WatchServiceManager$MinSupportedVersion;,
        Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventHandler;,
        Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl"

.field private static final CAMERA_WATCH_SERVICE_VERSION:I = 0x4

.field private static final CONNECTED:I = 0x3e9

.field private static final NO_CONNECTION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WatchServiceManager"

.field private static final THUMBNAIL_HEIGHT:F = 480.0f

.field private static final UNKNOWN_VERSION:I = -0x1

.field private static final WATCH_ZOOM_RATIO_FACTOR:I = 0xa


# instance fields
.field private final mAttachedDisplaySize:Landroid/graphics/Point;

.field private mBurstShotStarted:Z

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

.field private mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mConnectionState:I

.field private final mControllerServiceCallback:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;

.field private mControllerVersion:I

.field private final mDimArray:[Z

.field private final mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

.field private final mDisplayRotationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private final mEventHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;",
            "Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsMirroringCompleted:Z

.field private mIsNeedToSwitchToPhoto:Z

.field private mLightCondition:I

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientation:I

.field private mPackageName:Ljava/lang/String;

.field private mPresentationDialog:Landroid/app/Presentation;

.field private mPreviousOrientation:I

.field private final mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

.field private final mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

.field private mShootingModeString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "settings",
            "engine",
            "shootingActionProvider"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mConnectionState:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDimArray:[Z

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$pu5UDzClcyInf-B2vxqesFWKPwo;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$pu5UDzClcyInf-B2vxqesFWKPwo;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mLightCondition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mIsMirroringCompleted:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mBurstShotStarted:Z

    new-instance v1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDisplayRotationMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$2;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEventHandlerMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mIsNeedToSwitchToPhoto:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$3;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$4;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerServiceCallback:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->findServicePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyZoomRange()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyRecordingStopped()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyTimerStarted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyTimerCanceled()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifySpecificState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyStorageStatus()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isZoomAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isTouchAeAfAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCameraError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyRecordingPaused()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Landroid/graphics/PointF;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->requestTouchAeAfEvent(Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    return p0
.end method

.method static synthetic access$2202(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isCaptureAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mShootingActionProvider:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingActionProvider;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mIsNeedToSwitchToPhoto:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->changeShootingModeToPhoto()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/app/Presentation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->connectExtraPreviewToWatchDisplay()V

    return-void
.end method

.method static synthetic access$2902(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mIsMirroringCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyRecordingStarted()V

    return-void
.end method

.method static synthetic access$3002(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mConnectionState:I

    return p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerServiceCallback:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getControllerVersion()I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCameraStarted()V

    return-void
.end method

.method static synthetic access$3500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyPresentationInitialized()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyRecordingResumed()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCameraSettingActivityStarted()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyThumbnailUpdated()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCurrentState()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCameraTerminated()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->changeExtraSurfaceLayout(Z)V

    return-void
.end method

.method private bindService()V
    .locals 4

    const-string v0, "WatchServiceManager"

    const-string v1, "bindService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    const-string p0, "WatchServiceManager"

    const-string v0, "fail to bindService by null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private calculateScaleFactor(Landroid/graphics/Bitmap;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnail"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/high16 v1, 0x43f00000    # 480.0f

    if-le p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method private changeExtraSurfaceLayout(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNeedRecreateSurface"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "WatchServiceManager"

    const-string p1, "changeExtraSurfaceLayout : Returned because extra surfaceview is not created yet"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->setExtraSurfaceLayoutParams()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->setExtraSurfaceLayoutParams()V

    :goto_0
    return-void
.end method

.method private changeShootingModeToPhoto()V
    .locals 5

    const-string v0, "WatchServiceManager"

    const-string v1, "changeShootingModeToPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mIsNeedToSwitchToPhoto:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeShortcut;->translateList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->setCenterButtonProperty(Landroid/util/Pair;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->changeShootingMode(IZ)Z

    return-void
.end method

.method private connectExtraPreviewToWatchDisplay()V
    .locals 4

    const-string v0, "WatchServiceManager"

    const-string v1, "connectExtraPreviewToWatchDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const-string v2, "media_router"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v2, Landroid/app/Presentation;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$xNF8h-1x6Ky9L3P_k54H99j64g8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$xNF8h-1x6Ky9L3P_k54H99j64g8;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    invoke-virtual {v1, v2}, Landroid/app/Presentation;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$LVUKPApgewZFN2sfdoN7yZJjKgQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$LVUKPApgewZFN2sfdoN7yZJjKgQ;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    invoke-virtual {v1, v2}, Landroid/app/Presentation;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    const v2, 0x7f0d0091

    invoke-virtual {v1, v2}, Landroid/app/Presentation;->setContentView(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    const v3, 0x7f0a0099

    invoke-virtual {v2, v3}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->createExtraSurface(Landroid/view/SurfaceView;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->changeExtraSurfaceLayout(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "connectExtraPreviewToDisplay : Couldn\'t show presentation. Display was removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    :cond_1
    :goto_0
    return-void
.end method

.method private createBitmapForThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thumbnail",
            "matrix"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createBrokenBitmap()Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "createBrokenBitmap : thumbnail bitmap is invalid, so send the broken bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentType()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    if-ne p0, v1, :cond_0

    const p0, 0x7f080619

    goto :goto_0

    :cond_0
    const p0, 0x7f08061b

    :goto_0
    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createMatrixForThumbnail(IF)Landroid/graphics/Matrix;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "scaleFactor"
        }
    .end annotation

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object p0
.end method

.method private disconnectExtraPreviewFromWatchDisplay()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPresentationDialog:Landroid/app/Presentation;

    :cond_0
    return-void
.end method

.method private getCalculatedExtraSurfaceParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-le v3, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isReversePortrait()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isLandscapeBefore()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    return-object v0
.end method

.method private getCallStatus()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "call_state_on"

    goto :goto_0

    :cond_0
    const-string p0, "call_state_off"

    :goto_0
    return-object p0
.end method

.method private getCameraButtonToString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraButtonTo"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "burst_shots"

    return-object p0

    :cond_0
    const-string p0, "create_gif"

    return-object p0

    :cond_1
    const-string p0, "take_picture"

    return-object p0
.end method

.method private getControllerVersion()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->isSupportWatchApi(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->getVersion()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->isSupportWatchApi(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "WatchServiceManager"

    const-string v0, "getControllerVersion fail : RemoteException"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private getFlashState()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getTorch()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getTorchString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getFlashString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getFlashString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flash"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "auto_off"

    return-object p0

    :cond_0
    const-string p0, "on"

    return-object p0

    :cond_1
    const-string p0, "off"

    return-object p0
.end method

.method private getMaxZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMaxZoomLevel()I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private getMinZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMinZoomLevel()I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private getTimerString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timer"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDimArray:[Z

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v2

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDimArray:[Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_2

    :cond_1
    const-string p0, "disabled"

    return-object p0

    :cond_2
    if-eq p1, v1, :cond_5

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const-string p0, "0"

    return-object p0

    :cond_3
    const-string p0, "10"

    return-object p0

    :cond_4
    const-string p0, "5"

    return-object p0

    :cond_5
    const-string p0, "2"

    return-object p0
.end method

.method private getTorchString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "torch"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "auto_off"

    return-object p0

    :cond_0
    const-string p0, "on"

    return-object p0

    :cond_1
    const-string p0, "off"

    return-object p0
.end method

.method private getTotalZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getTotalZoomLevel()I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private getZoomValue()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getZoomValue()I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private isAutoFlashSetting()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getTorch()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isCaptureAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isSnapshotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isCaptureAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isConnected()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mConnectionState:I

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLandscape()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

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

.method private isLandscapeBefore()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPreviousOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

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

.method private isNotifyNotAvailable(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeSupportedCheck"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "WatchServiceManager"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isWatchModeSupported()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isNotifyNotAvailable : Returned because watch mode is not supported"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const-string p0, "isNotifyNotAvailable : Returned because service is not available"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isNotifyThumbnailAvailable()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mBurstShotStarted:Z

    if-eqz p0, :cond_1

    const-string p0, "WatchServiceManager"

    const-string v0, "notifyThumbnailUpdated : Returned because ignore during burst"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v0
.end method

.method private isOrientationLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getRequestedOrientation()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isReversePortrait()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mOrientation:I

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTouchAeAfAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isTrackingAfAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isZoomAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isZoomAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$5PoobYNvQe-LagDtMicA8tg7Dwg(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->createBrokenBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ZujOVoBCHiezyL0hHr1APLMHbsY(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Landroid/graphics/Bitmap;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->calculateScaleFactor(Landroid/graphics/Bitmap;)F

    move-result p0

    return p0
.end method

.method private notifyBurstShotStarted()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "WatchServiceManager"

    const-string v2, "notifyBurstShotStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v0, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mBurstShotStarted:Z

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onBurstModeStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyBurstShotStarted fail : RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyBurstShotStopped()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mBurstShotStarted:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyBurstShotStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLatestMedia()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getImagePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onBurstModeStop(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyBurstShotStopped fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyCameraError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorType"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyCameraError fail : RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyCameraFacing(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraFacing : facing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "back"

    goto :goto_0

    :cond_1
    const-string p1, "front"

    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onSetLensState(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "notifyCameraFacing fail : RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private notifyCameraSettingActivityStarted()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyCameraSettingActivityStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cameraSettingStatus"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private notifyCameraStarted()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const-string v1, "WatchServiceManager"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "notifyCameraStarted"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "apiVersion"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    const-string v2, "cameraVersion"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "notifyCameraStarted fail : JSONException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onCameraStarted(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "notifyCameraStarted fail : RemoteException"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->registerListener()V

    return-void

    :cond_3
    :goto_2
    const-string p0, "notifyCameraStarted : Returned because camera is not running"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyCameraTerminated()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isConnected()Z

    move-result v0

    const-string v1, "WatchServiceManager"

    if-nez v0, :cond_0

    const-string p0, "notifyCameraTerminated : Returned because service is not available"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "notifyCameraTerminated"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onCameraTerminated()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "notifyCameraTerminated fail : RemoteException"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->unregisterListener()V

    return-void
.end method

.method private notifyCancelCapture()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyCancelCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onCancelCapture()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyCancelCapture fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyCaptureInfo()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getEstimatedCaptureDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyDynamicShotCaptureDuration(I)V

    return-void
.end method

.method private notifyCaptureStarted()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCaptureInfo()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onStartCapture()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyCaptureStarted fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyCompleteQuickTakeRecording()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyCompleteQuickTakeRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onCompleteQuickTakeRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyCompleteQuickTakeRecording fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyCurrentState()V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v1

    const-string v2, "WatchServiceManager"

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mIsMirroringCompleted:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "notifyCurrentState : Returned because quick take recording running."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    const-string v1, "back"

    goto :goto_0

    :cond_2
    const-string v1, "front"

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isWatchModeSupported()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCurrentState : modeSupported = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mShootingModeString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mShootingModeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget v6, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    if-lt v6, v3, :cond_3

    const-string v3, "isRecordingMode"

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string v3, "holdShotType"

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v6, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getCameraButtonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v3, "modeName"

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mShootingModeString:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "isSupported"

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "lensState"

    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flashState"

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getFlashState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timerState"

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getTimerString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "zoomLevel"

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getZoomValue()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "zoomMin"

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getMinZoomLevel()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "zoomMax"

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getMaxZoomLevel()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "zoomStep"

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getTotalZoomLevel()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "previewWidth"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "previewHeight"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "orientation"

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mOrientation:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "callStatus"

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getCallStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isStorageAvailable"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onSetCurrentStates(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "notifyCurrentState fail : RemoteException"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    const-string p0, "notifyCurrentState fail : JSONException"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string p0, "notifyCurrentState : Returned because service is not ready."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyDynamicShotCaptureDuration(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "estimatedCaptureDurationTime"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDynamicShotCaptureDuration : estimatedCaptureDurationTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "dynamicShotCaptureDuration"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private notifyFlashState(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flashState"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFlashState : flashState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onSetFlashState(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyFlashState fail : RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyOrientationState(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOrientationState : orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WatchServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isOrientationLocked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->changeExtraSurfaceLayout(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDisplayRotationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDisplayRotationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOrientationState : display rotation = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {v1, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onSetDisplayRotation(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onSetOrientationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyOrientationState fail : RemoteException"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyPictureCount(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyPictureCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onPictureTakenCount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyPictureCount fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyPictureTaken()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mBurstShotStarted:Z

    const-string v1, "WatchServiceManager"

    if-eqz v0, :cond_1

    const-string p0, "notifyPictureTaken : Returned because burst shot is progressing"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "notifyPictureTaken"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onPictureTaken(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyPictureTaken fail : RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyPresentationInitialized()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyPresentationInitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onPresentationInitialized()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyPresentationInitialized fail: RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyPreviewState()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    const-string v2, "WatchServiceManager"

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "notifyPreviewState : Returned because previewSize is not available"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "notifyPreviewState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onSetPreviewState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyPreviewState fail : RemoteException"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyRecordingPaused()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyRecordingPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {v1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onPauseRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "notifyRecordingPaused fail : RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "recordingTime"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifySpecificState(Ljava/lang/String;)V

    return-void
.end method

.method private notifyRecordingResumed()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyRecordingResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onResumeRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyRecordingResumed fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyRecordingStarted()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyStartQuickTakeRecording()V

    goto :goto_0

    :cond_1
    const-string v1, "isRecordingSnapshotAvailable"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifySpecificState(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onStartRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyRecordingStarted fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyRecordingStopped()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyRecordingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->changeExtraSurfaceLayout(Z)V

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCompleteQuickTakeRecording()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onStopRecording(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyRecordingStopped fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifySpecificState(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateKey"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "callStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "isRecordingSnapshotAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "recordingTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string p0, "WatchServiceManager"

    const-string p1, "notifySpecificState : invalid state key!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "call_state_on"

    goto :goto_1

    :cond_3
    const-string v0, "call_state_off"

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->isSnapshotAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x31e21ba2 -> :sswitch_2
        -0xf6583c2 -> :sswitch_1
        0x5ea777f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateKey",
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySpecificState : stateKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "notifySpecificState fail : JSONException"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onSetSpecificStates(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "notifySpecificState fail : RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private notifyStartQuickTakeRecording()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyStartQuickTakeRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onStartQuickTakeRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyStartQuickTakeRecording fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyStopCapture()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyStopCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onStopCapture()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyStopCapture fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyStorageStatus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "isStorageAvailable"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private notifyThumbnailUpdated()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyThumbnailAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLatestMedia()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->isImageType()Z

    move-result v0

    const-string v1, "WatchServiceManager"

    if-eqz v0, :cond_0

    const-string v0, "notifyThumbnailUpdated : Image type"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLatestMedia()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getImageThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "notifyThumbnailUpdated : Video type"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLatestMedia()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/16 v1, 0x10e

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->updateThumbnail(Ljava/util/Optional;I)V

    :cond_1
    return-void
.end method

.method private notifyTimerCanceled()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyTimerCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onCancelTimer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyTimerCanceled fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyTimerStarted()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyTimerStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onTimerStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyTimerStarted fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyTimerState(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timerState"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyTimerState : timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onSetTimerState(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyTimerState fail : RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyUpdateThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "thumbnailContentType"
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerVersion:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0, p1, p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onUpdateThumbnail2(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onUpdateThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WatchServiceManager"

    const-string p1, "notifyThumbnailUpdated fail : RemoteException"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyZoomLevel(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyZoomLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    div-int/lit8 p1, p1, 0xa

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    int-to-double v2, p1

    invoke-interface {p0, v2, v3}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onSetZoomLevel(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyZoomLevel fail : RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyZoomRange()V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyZoomRange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getMinZoomLevel()I

    move-result v1

    int-to-double v3, v1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getMaxZoomLevel()I

    move-result v1

    int-to-double v5, v1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getTotalZoomLevel()I

    move-result p0

    int-to-double v7, p0

    invoke-interface/range {v2 .. v8}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->onSetZoomRange(DDD)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyZoomRange fail : RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private registerListener()V
    .locals 3

    const-string v0, "WatchServiceManager"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->registerPreviewLayoutChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager$PreviewLayoutChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->registerBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->registerAgifBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->registerLightConditionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->registerCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->registerListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.SHUTTER_TIMER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.SHUTTER_TIMER_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.RECORDING_START_TIMER_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private requestTouchAeAfEvent(Landroid/graphics/PointF;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusPoint"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float v10, v2, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestTouchAeAfEvent : posX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", posY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v0, v8

    move-wide v2, v8

    move v5, v10

    move v6, p1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->requestAeAfTouch(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    const/4 v4, 0x1

    move-wide v0, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;->requestAeAfTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private resetFlags()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mBurstShotStarted:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mIsNeedToSwitchToPhoto:Z

    return-void
.end method

.method private setExtraSurfaceLayoutParams()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getCalculatedExtraSurfaceParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExtraSurfaceLayoutParams : width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WatchServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private startCameraControllerService()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const-string v1, "WatchServiceManager"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "startCameraControllerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "startCameraControllerService fail."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p0, "startCameraControllerService : Returned because camera is not running"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopCameraControllerService()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "stopCameraControllerService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private unbindService()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    if-nez v0, :cond_0

    const-string p0, "WatchServiceManager"

    const-string v0, "unbindService : Returned because it is failed to unbind service because appContext is not existed."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mControllerServiceCallback:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->unregisterCallback(Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "WatchServiceManager"

    const-string v1, "unbindService fail : RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const-string v0, "WatchServiceManager"

    const-string v1, "unbindService fail : service is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mConnectionState:I

    return-void
.end method

.method private unregisterListener()V
    .locals 3

    const-string v0, "WatchServiceManager"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->unregisterListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->unregisterPreviewLayoutChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager$PreviewLayoutChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->unregisterBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->unregisterAgifBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->unregisterLightConditionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->unregisterCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateThumbnail(Ljava/util/Optional;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmapOrNull",
            "orientation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "WatchServiceManager"

    const-string v1, "updateThumbnail"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentType()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$ZujOVoBCHiezyL0hHr1APLMHbsY;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$ZujOVoBCHiezyL0hHr1APLMHbsY;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$SzYWzNd3xEBcYaVDq44A_zQzOOk;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$SzYWzNd3xEBcYaVDq44A_zQzOOk;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$LY9ZUQ_Hk1nIISyOKE8WE2HzdcM;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$LY9ZUQ_Hk1nIISyOKE8WE2HzdcM;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Ljava/util/Optional;)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$5PoobYNvQe-LagDtMicA8tg7Dwg;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$5PoobYNvQe-LagDtMicA8tg7Dwg;-><init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyUpdateThumbnail(Landroid/graphics/Bitmap;I)V

    return-void
.end method


# virtual methods
.method handleEvent(Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventId;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mEventHandlerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$EventHandler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$XZOa2qfKIZEWwZqz-iDyROhofiQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/-$$Lambda$XZOa2qfKIZEWwZqz-iDyROhofiQ;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$connectExtraPreviewToWatchDisplay$1$WatchServiceManager(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$connectExtraPreviewToWatchDisplay$2$WatchServiceManager(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "WatchServiceManager"

    const-string v0, "connectExtraPreviewToDisplay : Presentation dialog is shown."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyPresentationInitialized()V

    return-void
.end method

.method public synthetic lambda$new$0$WatchServiceManager(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mDimArray:[Z

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aput-boolean p2, p0, p1

    return-void
.end method

.method public synthetic lambda$updateThumbnail$3$WatchServiceManager(ILjava/lang/Float;)Landroid/graphics/Matrix;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->createMatrixForThumbnail(IF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateThumbnail$4$WatchServiceManager(Ljava/util/Optional;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->createBitmapForThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public notifyThumbnailUpdated(Landroid/graphics/Bitmap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "inputOrientation"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isNotifyThumbnailAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit16 p2, p2, 0x10e

    rem-int/lit16 p2, p2, 0x168

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->updateThumbnail(Ljava/util/Optional;I)V

    :cond_0
    return-void
.end method

.method public onBurstCaptureCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyBurstShotStopped()V

    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mBurstShotStarted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyPictureCount(I)V

    :cond_0
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyBurstShotStarted()V

    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->roundOrientation(I)I

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mOrientation:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraOrientationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mOrientation:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mPreviousOrientation:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyOrientationState(I)V

    :cond_0
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

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
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

    const-string v0, "WatchServiceManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$6;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyZoomLevel(I)V

    goto :goto_0

    :pswitch_1
    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getTorchString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyFlashState(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-ne p3, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getFlashString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyFlashState(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->getTimerString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyTimerState(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCaptureCancelled()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mIsNeedToSwitchToPhoto:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->changeShootingModeToPhoto()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCancelCapture()V

    return-void
.end method

.method public onCaptureCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyPictureTaken()V

    return-void
.end method

.method public onCaptureInterrupted()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCancelCapture()V

    return-void
.end method

.method public onCaptureRequested()V
    .locals 0

    return-void
.end method

.method public onCaptureStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCaptureStarted()V

    return-void
.end method

.method public onCaptureStopped()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyStopCapture()V

    return-void
.end method

.method public onLightConditionChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightCondition"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mLightCondition:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->isAutoFlashSetting()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mLightCondition:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    const-string p1, "auto_on"

    goto :goto_2

    :cond_4
    const-string p1, "auto_off"

    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyFlashState(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewLayoutChanged()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "onPreviewLayoutChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyPreviewState()V

    return-void
.end method

.method public onShootingModeChanged(IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shootingMode",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShootingModeChanged : shootingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", facing="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchServiceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeProvider()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->getCurrentShootingModeName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mShootingModeString:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeProvider()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    move-result-object p1

    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->isCurrentShootingModeId(I)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeProvider()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->isCurrentShootingModeId(I)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getShootingModeProvider()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeProvider;->isCurrentShootingModeId(I)Z

    move-result v1

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const v0, 0x7f1200db

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mShootingModeString:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const v0, 0x7f1200dc

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mShootingModeString:Ljava/lang/String;

    :cond_2
    if-eqz p3, :cond_3

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->notifyCameraFacing(I)V

    :cond_3
    return-void
.end method

.method public onShutter()V
    .locals 0

    return-void
.end method

.method start()V
    .locals 3

    const-string v0, "WatchServiceManager"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->startCameraControllerService()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->bindService()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->registerReceiver()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDoNotDisturbMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const-string v1, "camera launched from watch"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->requestDeviceWakeUp(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->requestDismissKeyguard(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method stop()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->unregisterReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->unbindService()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->stopCameraControllerService()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->resetFlags()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->disconnectExtraPreviewFromWatchDisplay()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    return-void
.end method
