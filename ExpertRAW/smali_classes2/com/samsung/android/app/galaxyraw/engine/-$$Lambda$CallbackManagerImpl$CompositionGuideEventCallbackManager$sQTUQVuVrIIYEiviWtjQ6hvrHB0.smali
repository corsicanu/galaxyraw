.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$CompositionGuideEventCallbackManager$sQTUQVuVrIIYEiviWtjQ6hvrHB0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$CompositionGuideEventCallbackManager$sQTUQVuVrIIYEiviWtjQ6hvrHB0;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$CompositionGuideEventCallbackManager$sQTUQVuVrIIYEiviWtjQ6hvrHB0;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$CompositionGuideEventCallbackManager$sQTUQVuVrIIYEiviWtjQ6hvrHB0;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$CompositionGuideEventCallbackManager$sQTUQVuVrIIYEiviWtjQ6hvrHB0;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$CompositionGuideEventCallbackManager;->lambda$onCompositionGuideEvent$0$CallbackManagerImpl$CompositionGuideEventCallbackManager(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;)V

    return-void
.end method
