.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Long;

.field public final synthetic f$1:I

.field public final synthetic f$2:[J

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;->f$0:Ljava/lang/Long;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;->f$2:[J

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;->f$0:Ljava/lang/Long;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;->f$2:[J

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;->lambda$onSceneDetectionInfo$0(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;)V

    return-void
.end method
