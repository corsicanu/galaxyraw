.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CompositionGuideCallbackForwarder$_Y7oITzcKVUlywRaUT--4KnR3PI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CompositionGuideCallbackForwarder$_Y7oITzcKVUlywRaUT--4KnR3PI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CompositionGuideCallbackForwarder$_Y7oITzcKVUlywRaUT--4KnR3PI;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CompositionGuideCallbackForwarder$_Y7oITzcKVUlywRaUT--4KnR3PI;->f$0:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/-$$Lambda$CallbackForwarder$CompositionGuideCallbackForwarder$_Y7oITzcKVUlywRaUT--4KnR3PI;->f$1:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackForwarder$CompositionGuideCallbackForwarder;->lambda$onCompositionGuideEvent$0(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback;)V

    return-void
.end method
