.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SceneDetectionEventCallbackManager"
.end annotation


# instance fields
.field private mSceneDetectionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;->mSceneDetectionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;->setSceneDetectionEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;)V

    return-void
.end method

.method private setSceneDetectionEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;->mSceneDetectionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSceneDetectionEvent$0$CallbackManagerImpl$SceneDetectionEventCallbackManager(I[J)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;->mSceneDetectionEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;->onSceneDetectionEvent(I[J)V

    :cond_0
    return-void
.end method

.method public onSceneDetectionEvent(I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sceneIndex",
            "sceneDetectionInfo",
            "camDevice"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionEventCallbackManager$69mVwOqSzYBUqeRsZh6BU4N3XmA;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionEventCallbackManager$69mVwOqSzYBUqeRsZh6BU4N3XmA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionEventCallbackManager;I[J)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
