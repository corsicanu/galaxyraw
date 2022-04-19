.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$C9_l2DsyFMCITpOZt-R0sXruJOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionEventCallbackForwarder;

.field public final synthetic f$1:I

.field public final synthetic f$2:[J

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionEventCallbackForwarder;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$C9_l2DsyFMCITpOZt-R0sXruJOI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionEventCallbackForwarder;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$C9_l2DsyFMCITpOZt-R0sXruJOI;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$C9_l2DsyFMCITpOZt-R0sXruJOI;->f$2:[J

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$C9_l2DsyFMCITpOZt-R0sXruJOI;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$C9_l2DsyFMCITpOZt-R0sXruJOI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionEventCallbackForwarder;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$C9_l2DsyFMCITpOZt-R0sXruJOI;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$C9_l2DsyFMCITpOZt-R0sXruJOI;->f$2:[J

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$C9_l2DsyFMCITpOZt-R0sXruJOI;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionEventCallbackForwarder;->lambda$onSceneDetectionEvent$1$CallbackForwarder$SceneDetectionEventCallbackForwarder(I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
