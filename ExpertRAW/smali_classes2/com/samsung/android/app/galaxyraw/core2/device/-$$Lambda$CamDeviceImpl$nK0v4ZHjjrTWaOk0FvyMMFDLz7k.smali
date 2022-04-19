.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$nK0v4ZHjjrTWaOk0FvyMMFDLz7k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$nK0v4ZHjjrTWaOk0FvyMMFDLz7k;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$nK0v4ZHjjrTWaOk0FvyMMFDLz7k;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$nK0v4ZHjjrTWaOk0FvyMMFDLz7k;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceImpl$nK0v4ZHjjrTWaOk0FvyMMFDLz7k;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceImpl;->lambda$clearPicImageReader$4$CamDeviceImpl(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V

    return-void
.end method
