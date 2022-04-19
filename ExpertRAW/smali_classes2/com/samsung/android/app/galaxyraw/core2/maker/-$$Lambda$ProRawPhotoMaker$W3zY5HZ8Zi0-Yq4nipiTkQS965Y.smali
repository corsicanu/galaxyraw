.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$W3zY5HZ8Zi0-Yq4nipiTkQS965Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$W3zY5HZ8Zi0-Yq4nipiTkQS965Y;->f$0:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/-$$Lambda$ProRawPhotoMaker$W3zY5HZ8Zi0-Yq4nipiTkQS965Y;->f$0:Landroid/hardware/camera2/CaptureResult;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->lambda$onPreviewResult$4(Landroid/hardware/camera2/CaptureResult;Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode;)V

    return-void
.end method
