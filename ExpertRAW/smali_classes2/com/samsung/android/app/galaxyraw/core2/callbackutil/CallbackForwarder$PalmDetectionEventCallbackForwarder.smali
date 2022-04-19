.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;
.super Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.source "CallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PalmDetectionEventCallbackForwarder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder<",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;Landroid/os/Handler;)V
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

.method static synthetic lambda$onPalmDetection$0(Ljava/lang/Long;Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;->onPalmDetection(Ljava/lang/Long;Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public static newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;
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
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;-><init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onPalmDetection$1$CallbackForwarder$PalmDetectionEventCallbackForwarder(Ljava/lang/Long;Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PalmDetectionEventCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$N-iivS-HCVA_wDev6LDvzi5jHtE;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$N-iivS-HCVA_wDev6LDvzi5jHtE;-><init>(Ljava/lang/Long;Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPalmDetection(Ljava/lang/Long;Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "timestamp",
            "palm",
            "camDevice"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PalmDetectionEventCallbackForwarder$WQ6vrALUExpdK7WfM_1vbgENZ60;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PalmDetectionEventCallbackForwarder;Ljava/lang/Long;Landroid/graphics/Rect;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
