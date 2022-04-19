.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendPictureDepthRunnable$6a9ysn93BxwXXuIm6Yzj-DewQk4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendPictureDepthRunnable$6a9ysn93BxwXXuIm6Yzj-DewQk4;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendPictureDepthRunnable$6a9ysn93BxwXXuIm6Yzj-DewQk4;->f$1:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendPictureDepthRunnable$6a9ysn93BxwXXuIm6Yzj-DewQk4;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendPictureDepthRunnable$6a9ysn93BxwXXuIm6Yzj-DewQk4;->f$1:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendPictureDepthRunnable;->lambda$run$0$CamDeviceSendPictureDepthRunnable(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V

    return-void
.end method
