.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PanoramaCallbackForwarder$YoCEZoxyz5NyIXarYcu-wyTG-gM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PanoramaCallbackForwarder$YoCEZoxyz5NyIXarYcu-wyTG-gM;->f$0:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$PanoramaCallbackForwarder$YoCEZoxyz5NyIXarYcu-wyTG-gM;->f$0:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$PanoramaCallbackForwarder;->lambda$onMoveSlowly$12(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PanoramaEventCallback;)V

    return-void
.end method
