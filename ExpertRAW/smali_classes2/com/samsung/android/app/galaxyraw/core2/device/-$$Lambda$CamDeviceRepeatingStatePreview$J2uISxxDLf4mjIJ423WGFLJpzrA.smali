.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$J2uISxxDLf4mjIJ423WGFLJpzrA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$J2uISxxDLf4mjIJ423WGFLJpzrA;->f$0:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceRepeatingStatePreview$J2uISxxDLf4mjIJ423WGFLJpzrA;->f$0:Landroid/hardware/camera2/CaptureRequest$Builder;

    check-cast p1, Landroid/view/Surface;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceRepeatingStatePreview;->lambda$J2uISxxDLf4mjIJ423WGFLJpzrA(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;)V

    return-void
.end method
