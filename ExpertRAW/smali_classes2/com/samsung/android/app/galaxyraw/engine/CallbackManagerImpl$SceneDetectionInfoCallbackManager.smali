.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SceneDetectionInfoCallbackManager"
.end annotation


# instance fields
.field private mSceneDetectionInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;

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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;->mSceneDetectionInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;->setSceneDetectionInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;)V

    return-void
.end method

.method private setSceneDetectionInfoListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;->mSceneDetectionInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSceneDetectionInfo$0$CallbackManagerImpl$SceneDetectionInfoCallbackManager(I[J)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;->mSceneDetectionInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionInfoListener;->onSceneDetectionInfo(I[J)V

    :cond_0
    return-void
.end method

.method public onSceneDetectionInfo(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "sceneIndex",
            "sceneDetectionInfo",
            "camDevice"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p4, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionInfoCallbackManager$s0dVn4k8jfHQ9DrrTkzgqv5dtGI;

    invoke-direct {p4, p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$SceneDetectionInfoCallbackManager$s0dVn4k8jfHQ9DrrTkzgqv5dtGI;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$SceneDetectionInfoCallbackManager;I[J)V

    invoke-virtual {p1, p4}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
