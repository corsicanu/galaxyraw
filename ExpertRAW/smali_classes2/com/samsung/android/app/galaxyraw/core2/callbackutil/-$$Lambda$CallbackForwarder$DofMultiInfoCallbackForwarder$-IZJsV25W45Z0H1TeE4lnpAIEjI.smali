.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DofMultiInfoCallbackForwarder$-IZJsV25W45Z0H1TeE4lnpAIEjI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DofMultiInfoCallbackForwarder;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DofMultiInfoCallbackForwarder;Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DofMultiInfoCallbackForwarder$-IZJsV25W45Z0H1TeE4lnpAIEjI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DofMultiInfoCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DofMultiInfoCallbackForwarder$-IZJsV25W45Z0H1TeE4lnpAIEjI;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DofMultiInfoCallbackForwarder$-IZJsV25W45Z0H1TeE4lnpAIEjI;->f$2:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DofMultiInfoCallbackForwarder$-IZJsV25W45Z0H1TeE4lnpAIEjI;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DofMultiInfoCallbackForwarder$-IZJsV25W45Z0H1TeE4lnpAIEjI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DofMultiInfoCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DofMultiInfoCallbackForwarder$-IZJsV25W45Z0H1TeE4lnpAIEjI;->f$1:Ljava/lang/Long;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DofMultiInfoCallbackForwarder$-IZJsV25W45Z0H1TeE4lnpAIEjI;->f$2:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$DofMultiInfoCallbackForwarder$-IZJsV25W45Z0H1TeE4lnpAIEjI;->f$3:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$DofMultiInfoCallbackForwarder;->lambda$onDofMultiInfoChanged$1$CallbackForwarder$DofMultiInfoCallbackForwarder(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
