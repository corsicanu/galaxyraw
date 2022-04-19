.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceLandmarkEventCallbackForwarder$KtuEMld_b0QDAYMpMmysaE9F4PE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceLandmarkEventCallbackForwarder;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceLandmarkEventCallbackForwarder;[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceLandmarkEventCallbackForwarder$KtuEMld_b0QDAYMpMmysaE9F4PE;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceLandmarkEventCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceLandmarkEventCallbackForwarder$KtuEMld_b0QDAYMpMmysaE9F4PE;->f$1:[B

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceLandmarkEventCallbackForwarder$KtuEMld_b0QDAYMpMmysaE9F4PE;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceLandmarkEventCallbackForwarder$KtuEMld_b0QDAYMpMmysaE9F4PE;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceLandmarkEventCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceLandmarkEventCallbackForwarder$KtuEMld_b0QDAYMpMmysaE9F4PE;->f$1:[B

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FaceLandmarkEventCallbackForwarder$KtuEMld_b0QDAYMpMmysaE9F4PE;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FaceLandmarkEventCallbackForwarder;->lambda$onFaceLandmarkData$1$CallbackForwarder$FaceLandmarkEventCallbackForwarder([BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
