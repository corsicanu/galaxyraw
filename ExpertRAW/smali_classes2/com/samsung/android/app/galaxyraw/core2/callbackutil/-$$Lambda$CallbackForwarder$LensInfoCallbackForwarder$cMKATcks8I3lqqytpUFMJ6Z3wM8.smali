.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensInfoCallbackForwarder$cMKATcks8I3lqqytpUFMJ6Z3wM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Long;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensInfoCallbackForwarder$cMKATcks8I3lqqytpUFMJ6Z3wM8;->f$0:Ljava/lang/Long;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensInfoCallbackForwarder$cMKATcks8I3lqqytpUFMJ6Z3wM8;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensInfoCallbackForwarder$cMKATcks8I3lqqytpUFMJ6Z3wM8;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensInfoCallbackForwarder$cMKATcks8I3lqqytpUFMJ6Z3wM8;->f$0:Ljava/lang/Long;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensInfoCallbackForwarder$cMKATcks8I3lqqytpUFMJ6Z3wM8;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$LensInfoCallbackForwarder$cMKATcks8I3lqqytpUFMJ6Z3wM8;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$LensInfoCallbackForwarder;->lambda$onLensInfoChanged$0(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback$LensInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$LensInfoCallback;)V

    return-void
.end method
