.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AutoFramingInfoCallbackForwarder$bGC_5P1GCJRvZmP7E58n9KUQ8NA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Long;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

.field public final synthetic f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AutoFramingInfoCallbackForwarder$bGC_5P1GCJRvZmP7E58n9KUQ8NA;->f$0:Ljava/lang/Long;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AutoFramingInfoCallbackForwarder$bGC_5P1GCJRvZmP7E58n9KUQ8NA;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AutoFramingInfoCallbackForwarder$bGC_5P1GCJRvZmP7E58n9KUQ8NA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AutoFramingInfoCallbackForwarder$bGC_5P1GCJRvZmP7E58n9KUQ8NA;->f$0:Ljava/lang/Long;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AutoFramingInfoCallbackForwarder$bGC_5P1GCJRvZmP7E58n9KUQ8NA;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$AutoFramingInfoCallbackForwarder$bGC_5P1GCJRvZmP7E58n9KUQ8NA;->f$2:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$AutoFramingInfoCallbackForwarder;->lambda$onAutoFramingInfoChanged$0(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback$AutoFramingInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AutoFramingInfoCallback;)V

    return-void
.end method
