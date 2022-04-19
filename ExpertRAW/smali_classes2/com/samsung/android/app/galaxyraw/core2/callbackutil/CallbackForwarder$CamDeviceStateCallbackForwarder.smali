.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;
.super Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.source "CallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamDeviceStateCallbackForwarder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder<",
        "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Landroid/os/Handler;)V
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

.method static synthetic lambda$onCameraDeviceClosed$0(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;->onCameraDeviceClosed(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method static synthetic lambda$onCameraDeviceDisconnected$2(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;->onCameraDeviceDisconnected(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method static synthetic lambda$onCameraDeviceError$4(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;ILcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;->onCameraDeviceError(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;I)V

    return-void
.end method

.method static synthetic lambda$onCameraDeviceOpened$6(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;->onCameraDeviceOpened(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public static newInstance(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;
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
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onCameraDeviceClosed$1$CallbackForwarder$CamDeviceStateCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$Z928w5I04QsWtTbbzrggRKCjCuo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$Z928w5I04QsWtTbbzrggRKCjCuo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$onCameraDeviceDisconnected$3$CallbackForwarder$CamDeviceStateCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$78DTJD767JGt4fihQlWahSH9uQc;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$78DTJD767JGt4fihQlWahSH9uQc;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$onCameraDeviceError$5$CallbackForwarder$CamDeviceStateCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$q3cAOHQ2k2c1t1VVdX8LZHSSAXg;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$q3cAOHQ2k2c1t1VVdX8LZHSSAXg;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$onCameraDeviceOpened$7$CallbackForwarder$CamDeviceStateCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$7eBoxILE-IQEJqAqhILpMKRl_zo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$7eBoxILE-IQEJqAqhILpMKRl_zo;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCameraDeviceClosed(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "camDevice"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$V25i6Q7A4uSjiPv-5c5CngNt134;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$V25i6Q7A4uSjiPv-5c5CngNt134;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCameraDeviceDisconnected(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "camDevice"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$S6_kLglEJGFYRkPwvLe6RbsEYAU;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$S6_kLglEJGFYRkPwvLe6RbsEYAU;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCameraDeviceError(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "camDevice",
            "errorCode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$i5hyYPelI1Q6LaCRx88oWSnXrvM;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$i5hyYPelI1Q6LaCRx88oWSnXrvM;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCameraDeviceOpened(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "camDevice"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$QQft5T9IOO_EllJh_KCRnRWKbSE;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CamDeviceStateCallbackForwarder$QQft5T9IOO_EllJh_KCRnRWKbSE;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CamDeviceStateCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
