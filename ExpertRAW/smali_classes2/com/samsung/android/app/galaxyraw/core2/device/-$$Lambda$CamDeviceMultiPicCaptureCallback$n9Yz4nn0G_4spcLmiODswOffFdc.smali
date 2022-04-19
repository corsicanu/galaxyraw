.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$n9Yz4nn0G_4spcLmiODswOffFdc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

.field public final synthetic f$1:Landroid/hardware/camera2/CaptureFailure;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$n9Yz4nn0G_4spcLmiODswOffFdc;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$n9Yz4nn0G_4spcLmiODswOffFdc;->f$1:Landroid/hardware/camera2/CaptureFailure;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$n9Yz4nn0G_4spcLmiODswOffFdc;->f$2:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$n9Yz4nn0G_4spcLmiODswOffFdc;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$n9Yz4nn0G_4spcLmiODswOffFdc;->f$1:Landroid/hardware/camera2/CaptureFailure;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceMultiPicCaptureCallback$n9Yz4nn0G_4spcLmiODswOffFdc;->f$2:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceMultiPicCaptureCallback;->lambda$onCaptureFailed$1$CamDeviceMultiPicCaptureCallback(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceUtils$PictureRequestInfo;)V

    return-void
.end method
