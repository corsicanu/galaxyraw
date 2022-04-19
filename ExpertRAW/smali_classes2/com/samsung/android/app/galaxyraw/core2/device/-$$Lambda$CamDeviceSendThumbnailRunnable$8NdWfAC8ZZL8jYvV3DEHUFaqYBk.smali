.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendThumbnailRunnable$8NdWfAC8ZZL8jYvV3DEHUFaqYBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendThumbnailRunnable;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendThumbnailRunnable;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendThumbnailRunnable$8NdWfAC8ZZL8jYvV3DEHUFaqYBk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendThumbnailRunnable;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendThumbnailRunnable$8NdWfAC8ZZL8jYvV3DEHUFaqYBk;->f$1:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendThumbnailRunnable$8NdWfAC8ZZL8jYvV3DEHUFaqYBk;->f$0:Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendThumbnailRunnable;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDeviceSendThumbnailRunnable$8NdWfAC8ZZL8jYvV3DEHUFaqYBk;->f$1:Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDeviceSendThumbnailRunnable;->lambda$run$0$CamDeviceSendThumbnailRunnable(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;)V

    return-void
.end method
