.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;
.super Ljava/lang/Object;
.source "CamDeviceConfig.java"


# instance fields
.field private final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastCameraId:Ljava/lang/String;

.field private final mStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "stateCallback",
            "camCapability",
            "lastCameraId",
            "handler"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mLastCameraId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    return-object p0
.end method

.method getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getLastCameraId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mLastCameraId:Ljava/lang/String;

    return-object p0
.end method

.method getStateCallback()Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mStateCallback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    return-object p0
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method setLastCameraId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastCameraId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceConfig;->mLastCameraId:Ljava/lang/String;

    return-void
.end method
