.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$ZnYsuT-k_ehpjak5ZAu9U2D8unk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$ZnYsuT-k_ehpjak5ZAu9U2D8unk;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/device/-$$Lambda$CamDevicePrevCaptureCallback$ZnYsuT-k_ehpjak5ZAu9U2D8unk;->f$0:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/device/CamDevicePrevCaptureCallback;->lambda$onCaptureSequenceCompleted$5(ILcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)V

    return-void
.end method
