.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;
.super Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.source "CallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneDetectionInfoCallbackForwarder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder<",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "handler"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onSceneDetectionInfo$0(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;->onSceneDetectionInfo(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public static newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "handler"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;-><init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onSceneDetectionInfo$1$CallbackForwarder$SceneDetectionInfoCallbackForwarder(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SceneDetectionInfoCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$PKracFlv72onrE2OWqWRephP0NM;-><init>(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSceneDetectionInfo(Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "timeStamp",
            "sceneIndex",
            "sceneDetectionInfo",
            "camDevice"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$SceneDetectionInfoCallbackForwarder$pd68Lgb5-c-TMVqa34Zm957gFdA;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$SceneDetectionInfoCallbackForwarder;Ljava/lang/Long;I[JLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
