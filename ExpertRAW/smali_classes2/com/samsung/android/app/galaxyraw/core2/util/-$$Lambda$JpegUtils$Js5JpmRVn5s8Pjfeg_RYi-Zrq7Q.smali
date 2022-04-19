.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Js5JpmRVn5s8Pjfeg_RYi-Zrq7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

.field public final synthetic f$1:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Js5JpmRVn5s8Pjfeg_RYi-Zrq7Q;->f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Js5JpmRVn5s8Pjfeg_RYi-Zrq7Q;->f$1:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Js5JpmRVn5s8Pjfeg_RYi-Zrq7Q;->f$0:Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$JpegUtils$Js5JpmRVn5s8Pjfeg_RYi-Zrq7Q;->f$1:Landroid/hardware/camera2/CaptureResult;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils;->lambda$loadJpegMetadata$10(Lcom/samsung/android/app/galaxyraw/core2/util/JpegUtils$JpegMetadata;Landroid/hardware/camera2/CaptureResult;Ljava/lang/Integer;)V

    return-void
.end method
