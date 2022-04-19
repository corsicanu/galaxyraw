.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$pRUxLqJREXnRXUfHGzPTZAzLLMk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$pRUxLqJREXnRXUfHGzPTZAzLLMk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$pRUxLqJREXnRXUfHGzPTZAzLLMk;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$pRUxLqJREXnRXUfHGzPTZAzLLMk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceBurstPicCaptureCallback$pRUxLqJREXnRXUfHGzPTZAzLLMk;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    check-cast p2, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceBurstPicCaptureCallback;->lambda$discardFreeBuffers$8$CamDeviceBurstPicCaptureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    return-void
.end method
