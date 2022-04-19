.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$Jp4WWChzUStSbryOQQVnRqeI6Rk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/nio/ByteBuffer;

.field public final synthetic f$1:Landroid/util/Size;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$Jp4WWChzUStSbryOQQVnRqeI6Rk;->f$0:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$Jp4WWChzUStSbryOQQVnRqeI6Rk;->f$1:Landroid/util/Size;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$Jp4WWChzUStSbryOQQVnRqeI6Rk;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$Jp4WWChzUStSbryOQQVnRqeI6Rk;->f$0:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$Jp4WWChzUStSbryOQQVnRqeI6Rk;->f$1:Landroid/util/Size;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$Jp4WWChzUStSbryOQQVnRqeI6Rk;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewSnapShotCallbackForwarder;->lambda$onPreviewSnapShotTaken$2(Ljava/nio/ByteBuffer;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;)V

    return-void
.end method
