.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$aEeM3mwAVSnUC31Z6XVpyiw9lcU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewSnapShotCallbackForwarder;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewSnapShotCallbackForwarder;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$aEeM3mwAVSnUC31Z6XVpyiw9lcU;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewSnapShotCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$aEeM3mwAVSnUC31Z6XVpyiw9lcU;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$aEeM3mwAVSnUC31Z6XVpyiw9lcU;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewSnapShotCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PreviewSnapShotCallbackForwarder$aEeM3mwAVSnUC31Z6XVpyiw9lcU;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PreviewSnapShotCallbackForwarder;->lambda$onError$1$CallbackForwarder$PreviewSnapShotCallbackForwarder(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
