.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LiveHdrStateCallbackForwarder;
.super Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.source "CallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveHdrStateCallbackForwarder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder<",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;Landroid/os/Handler;)V
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

.method static synthetic lambda$onLiveHdrStateChanged$0(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;->onLiveHdrStateChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public static newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LiveHdrStateCallbackForwarder;
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
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LiveHdrStateCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LiveHdrStateCallbackForwarder;-><init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onLiveHdrStateChanged$1$CallbackForwarder$LiveHdrStateCallbackForwarder(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LiveHdrStateCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LiveHdrStateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LiveHdrStateCallbackForwarder$4wk7foZ2VjfXQiiXfa5awl5NpJo;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LiveHdrStateCallbackForwarder$4wk7foZ2VjfXQiiXfa5awl5NpJo;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLiveHdrStateChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "timeStamp",
            "hdrState",
            "camDevice"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LiveHdrStateCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LiveHdrStateCallbackForwarder$3ILJAVDf1cV62KF1TV-An5eTvD8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LiveHdrStateCallbackForwarder$3ILJAVDf1cV62KF1TV-An5eTvD8;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LiveHdrStateCallbackForwarder;Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
