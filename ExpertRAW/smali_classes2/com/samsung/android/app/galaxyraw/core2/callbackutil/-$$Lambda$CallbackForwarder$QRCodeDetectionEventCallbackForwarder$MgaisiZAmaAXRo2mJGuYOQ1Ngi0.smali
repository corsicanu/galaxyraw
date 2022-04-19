.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$MgaisiZAmaAXRo2mJGuYOQ1Ngi0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$MgaisiZAmaAXRo2mJGuYOQ1Ngi0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$MgaisiZAmaAXRo2mJGuYOQ1Ngi0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$MgaisiZAmaAXRo2mJGuYOQ1Ngi0;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$MgaisiZAmaAXRo2mJGuYOQ1Ngi0;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$MgaisiZAmaAXRo2mJGuYOQ1Ngi0;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$MgaisiZAmaAXRo2mJGuYOQ1Ngi0;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;->lambda$onError$1$CallbackForwarder$QRCodeDetectionEventCallbackForwarder(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
