.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CameraDeviceStateCallbacks$pM7RFe58_vm6oZE5BqStKsrGqQg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CameraDeviceStateCallbacks$pM7RFe58_vm6oZE5BqStKsrGqQg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CameraDeviceStateCallbacks$pM7RFe58_vm6oZE5BqStKsrGqQg;->f$1:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CameraDeviceStateCallbacks$pM7RFe58_vm6oZE5BqStKsrGqQg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$CameraDeviceStateCallbacks$pM7RFe58_vm6oZE5BqStKsrGqQg;->f$1:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->lambda$onOpened$0$CamDeviceImpl$CameraDeviceStateCallbacks(Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter$Builder;Ljava/lang/String;)V

    return-void
.end method
