.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SceneDetectionEventListener;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SceneDetectionEventListener"
.end annotation


# virtual methods
.method public abstract onSceneDetectionEvent(I[J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sceneIndex",
            "sceneDetectionInfo"
        }
    .end annotation
.end method
