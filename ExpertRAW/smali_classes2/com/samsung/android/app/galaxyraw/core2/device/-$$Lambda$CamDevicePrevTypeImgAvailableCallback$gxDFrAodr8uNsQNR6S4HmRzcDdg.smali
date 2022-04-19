.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevTypeImgAvailableCallback$gxDFrAodr8uNsQNR6S4HmRzcDdg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;

.field public final synthetic f$1:Landroid/media/Image;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevTypeImgAvailableCallback$gxDFrAodr8uNsQNR6S4HmRzcDdg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevTypeImgAvailableCallback$gxDFrAodr8uNsQNR6S4HmRzcDdg;->f$1:Landroid/media/Image;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevTypeImgAvailableCallback$gxDFrAodr8uNsQNR6S4HmRzcDdg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevTypeImgAvailableCallback$gxDFrAodr8uNsQNR6S4HmRzcDdg;->f$1:Landroid/media/Image;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevTypeImgAvailableCallback;->lambda$onImageAvailable$1$CamDevicePrevTypeImgAvailableCallback(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;)V

    return-void
.end method
