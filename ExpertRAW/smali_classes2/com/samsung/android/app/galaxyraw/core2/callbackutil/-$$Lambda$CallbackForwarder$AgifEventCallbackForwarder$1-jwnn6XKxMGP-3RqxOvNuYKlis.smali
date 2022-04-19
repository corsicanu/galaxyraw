.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$1-jwnn6XKxMGP-3RqxOvNuYKlis;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Landroid/util/Size;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$1-jwnn6XKxMGP-3RqxOvNuYKlis;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$1-jwnn6XKxMGP-3RqxOvNuYKlis;->f$1:Landroid/util/Size;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$1-jwnn6XKxMGP-3RqxOvNuYKlis;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$1-jwnn6XKxMGP-3RqxOvNuYKlis;->f$0:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$1-jwnn6XKxMGP-3RqxOvNuYKlis;->f$1:Landroid/util/Size;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AgifEventCallbackForwarder$1-jwnn6XKxMGP-3RqxOvNuYKlis;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AgifEventCallbackForwarder;->lambda$onCaptureResult$4(Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AgifEventCallback;)V

    return-void
.end method
