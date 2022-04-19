.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$Drlcpy_OaNxW5MMC5kShVZcF7Fc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AgifEventCallbackForwarder;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/util/Size;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AgifEventCallbackForwarder;Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$Drlcpy_OaNxW5MMC5kShVZcF7Fc;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AgifEventCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$Drlcpy_OaNxW5MMC5kShVZcF7Fc;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$Drlcpy_OaNxW5MMC5kShVZcF7Fc;->f$2:Landroid/util/Size;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$Drlcpy_OaNxW5MMC5kShVZcF7Fc;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$Drlcpy_OaNxW5MMC5kShVZcF7Fc;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AgifEventCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$Drlcpy_OaNxW5MMC5kShVZcF7Fc;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$Drlcpy_OaNxW5MMC5kShVZcF7Fc;->f$2:Landroid/util/Size;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$Drlcpy_OaNxW5MMC5kShVZcF7Fc;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AgifEventCallbackForwarder;->lambda$onCaptureResult$5$CallbackForwarder$AgifEventCallbackForwarder(Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
