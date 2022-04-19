.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$V25i6Q7A4uSjiPv-5c5CngNt134;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$V25i6Q7A4uSjiPv-5c5CngNt134;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$V25i6Q7A4uSjiPv-5c5CngNt134;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$V25i6Q7A4uSjiPv-5c5CngNt134;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$V25i6Q7A4uSjiPv-5c5CngNt134;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->lambda$onCameraDeviceClosed$1$CallbackForwarder$CamDeviceStateCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
