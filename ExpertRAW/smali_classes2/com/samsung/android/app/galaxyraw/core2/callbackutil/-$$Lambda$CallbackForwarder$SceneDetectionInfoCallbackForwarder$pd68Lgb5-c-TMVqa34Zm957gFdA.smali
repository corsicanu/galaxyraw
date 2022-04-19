.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:I

.field public final synthetic f$3:[J

.field public final synthetic f$4:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;->f$1:Ljava/lang/Long;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;->f$2:I

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;->f$3:[J

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;->f$4:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;->f$1:Ljava/lang/Long;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;->f$2:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;->f$3:[J

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;->f$4:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;->lambda$onSceneDetectionInfo$1$CallbackForwarder$SceneDetectionInfoCallbackForwarder(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
