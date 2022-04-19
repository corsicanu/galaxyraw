.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$BxuuV-zTo9X1KQOmMY0juKfv5MM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[J

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$BxuuV-zTo9X1KQOmMY0juKfv5MM;->f$0:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$BxuuV-zTo9X1KQOmMY0juKfv5MM;->f$1:[J

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$BxuuV-zTo9X1KQOmMY0juKfv5MM;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$BxuuV-zTo9X1KQOmMY0juKfv5MM;->f$0:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$BxuuV-zTo9X1KQOmMY0juKfv5MM;->f$1:[J

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionEventCallbackForwarder$BxuuV-zTo9X1KQOmMY0juKfv5MM;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionEventCallbackForwarder;->lambda$onSceneDetectionEvent$0(I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;)V

    return-void
.end method
