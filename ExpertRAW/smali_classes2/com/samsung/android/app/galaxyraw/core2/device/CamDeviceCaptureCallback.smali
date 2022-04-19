.class Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CamDeviceCaptureCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ForwardCallback_T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;"
    }
.end annotation


# instance fields
.field protected final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

.field private mCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TForwardCallback_T;"
        }
    .end annotation
.end field

.field protected final mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

.field protected final mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceImpl",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;",
            "TForwardCallback_T;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;->mCamCapability:Lcom/samsung/android/app/galaxyraw/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->getTAG()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;->mCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method disableForwardCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;->mCallback:Ljava/lang/Object;

    return-void
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;->mCamDeviceImpl:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->unregisterCamDeviceCaptureCallback(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;)V

    return-void
.end method

.method getForwardCallback()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TForwardCallback_T;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceCaptureCallback;->mCallback:Ljava/lang/Object;

    return-object p0
.end method
