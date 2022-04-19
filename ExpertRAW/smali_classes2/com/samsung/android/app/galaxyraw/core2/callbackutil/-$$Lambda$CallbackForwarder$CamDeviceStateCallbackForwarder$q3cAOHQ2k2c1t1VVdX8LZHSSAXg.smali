.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$q3cAOHQ2k2c1t1VVdX8LZHSSAXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$q3cAOHQ2k2c1t1VVdX8LZHSSAXg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$q3cAOHQ2k2c1t1VVdX8LZHSSAXg;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$q3cAOHQ2k2c1t1VVdX8LZHSSAXg;->f$0:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$q3cAOHQ2k2c1t1VVdX8LZHSSAXg;->f$1:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->lambda$onCameraDeviceError$4(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;ILcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;)V

    return-void
.end method
