.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;
.super Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.source "CallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacialAttributeEventCallbackForwarder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder<",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;Landroid/os/Handler;)V
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

.method static synthetic lambda$onError$0(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;->onError(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method static synthetic lambda$onFacialAttributeResult$2(J[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;->onFacialAttributeResult(J[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public static newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;
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
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;-><init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onError$1$CallbackForwarder$FacialAttributeEventCallbackForwarder(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$u8S2JRVqVd3tOlhIv15ag24yNvc;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$u8S2JRVqVd3tOlhIv15ag24yNvc;-><init>(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$onFacialAttributeResult$3$CallbackForwarder$FacialAttributeEventCallbackForwarder(J[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FacialAttributeEventCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$pzMz171H7gD7maV3SztttvTr3EY;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$pzMz171H7gD7maV3SztttvTr3EY;-><init>(J[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onError(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "error",
            "camDevice"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$6xkxiFIemcCXM9xy3QyNutDWprw;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$6xkxiFIemcCXM9xy3QyNutDWprw;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFacialAttributeResult(J[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "timestamp",
            "result",
            "camDevice"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$FacialAttributeEventCallbackForwarder$YHdsYqZXhWlX9xfSmBHWzbYy_Cc;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$FacialAttributeEventCallbackForwarder;J[BLcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
