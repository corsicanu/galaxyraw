.class public Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;
.super Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.source "CallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QRCodeDetectionEventCallbackForwarder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder<",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;Landroid/os/Handler;)V
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

.method static synthetic lambda$onError$0(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;->onError(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method static synthetic lambda$onQRCodeDetected$2(Ljava/lang/String;[ILandroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;->onQRCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public static newInstance(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;Landroid/os/Handler;)Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;
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
    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;-><init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onError$1$CallbackForwarder$QRCodeDetectionEventCallbackForwarder(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$PVEGprKWTHxEW8xteNcYoMwOwk8;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$PVEGprKWTHxEW8xteNcYoMwOwk8;-><init>(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$onQRCodeDetected$3$CallbackForwarder$QRCodeDetectionEventCallbackForwarder(Ljava/lang/String;[ILandroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$QRCodeDetectionEventCallback;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$5N9m9pwe1ivelUuOSpUmkIk1IMw;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$5N9m9pwe1ivelUuOSpUmkIk1IMw;-><init>(Ljava/lang/String;[ILandroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$MgaisiZAmaAXRo2mJGuYOQ1Ngi0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$MgaisiZAmaAXRo2mJGuYOQ1Ngi0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onQRCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x10
        }
        names = {
            "qrData",
            "qrPosition",
            "croppedQRImg",
            "camDevice"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$QRCodeDetectionEventCallbackForwarder$li7ymMLSqkwLeJfXI7A5H1Bm19M;-><init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$QRCodeDetectionEventCallbackForwarder;Ljava/lang/String;[ILandroid/graphics/Bitmap;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
