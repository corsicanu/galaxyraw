.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$kw3LtwsbNlhrfmXeZSqMOiBFoaY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/CaptureFailure;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$kw3LtwsbNlhrfmXeZSqMOiBFoaY;->f$0:Landroid/hardware/camera2/CaptureFailure;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$kw3LtwsbNlhrfmXeZSqMOiBFoaY;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$kw3LtwsbNlhrfmXeZSqMOiBFoaY;->f$0:Landroid/hardware/camera2/CaptureFailure;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$PhotoMakerBase$7$kw3LtwsbNlhrfmXeZSqMOiBFoaY;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$7;->lambda$onPreviewRequestError$1(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewStateCallback;)V

    return-void
.end method
