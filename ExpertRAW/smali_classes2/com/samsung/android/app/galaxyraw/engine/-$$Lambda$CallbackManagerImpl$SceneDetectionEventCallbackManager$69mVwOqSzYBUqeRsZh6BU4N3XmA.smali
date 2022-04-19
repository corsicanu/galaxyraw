.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionEventCallbackManager$69mVwOqSzYBUqeRsZh6BU4N3XmA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:[J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;I[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionEventCallbackManager$69mVwOqSzYBUqeRsZh6BU4N3XmA;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionEventCallbackManager$69mVwOqSzYBUqeRsZh6BU4N3XmA;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionEventCallbackManager$69mVwOqSzYBUqeRsZh6BU4N3XmA;->f$2:[J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionEventCallbackManager$69mVwOqSzYBUqeRsZh6BU4N3XmA;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionEventCallbackManager$69mVwOqSzYBUqeRsZh6BU4N3XmA;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionEventCallbackManager$69mVwOqSzYBUqeRsZh6BU4N3XmA;->f$2:[J

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;->lambda$onSceneDetectionEvent$0$CallbackManagerImpl$SceneDetectionEventCallbackManager(I[J)V

    return-void
.end method
