.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Landroid/graphics/Bitmap;

.field public final synthetic f$4:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;Ljava/lang/String;[ILandroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;->f$2:[I

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;->f$3:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;->f$4:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;->f$2:[I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;->f$3:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;->f$4:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;->lambda$onQRCodeDetected$3$CallbackForwarder$QRCodeDetectionEventCallbackForwarder(Ljava/lang/String;[ILandroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
