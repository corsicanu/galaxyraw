.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionInfoCallbackManager$s0dVn4k8jfHQ9DrrTkzgqv5dtGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:[J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;I[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionInfoCallbackManager$s0dVn4k8jfHQ9DrrTkzgqv5dtGI;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionInfoCallbackManager$s0dVn4k8jfHQ9DrrTkzgqv5dtGI;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionInfoCallbackManager$s0dVn4k8jfHQ9DrrTkzgqv5dtGI;->f$2:[J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionInfoCallbackManager$s0dVn4k8jfHQ9DrrTkzgqv5dtGI;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionInfoCallbackManager$s0dVn4k8jfHQ9DrrTkzgqv5dtGI;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionInfoCallbackManager$s0dVn4k8jfHQ9DrrTkzgqv5dtGI;->f$2:[J

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;->lambda$onSceneDetectionInfo$0$CallbackManagerImpl$SceneDetectionInfoCallbackManager(I[J)V

    return-void
.end method
