.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$IntelligentGuideEventCallbackManager$1jTilJ1K8rVvR3sqszqWSNT_Als;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$IntelligentGuideEventCallbackManager$1jTilJ1K8rVvR3sqszqWSNT_Als;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$IntelligentGuideEventCallbackManager$1jTilJ1K8rVvR3sqszqWSNT_Als;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$IntelligentGuideEventCallbackManager$1jTilJ1K8rVvR3sqszqWSNT_Als;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$IntelligentGuideEventCallbackManager$1jTilJ1K8rVvR3sqszqWSNT_Als;->f$1:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$IntelligentGuideEventCallbackManager;->lambda$onIntelligentEvent$0$CallbackManagerImpl$IntelligentGuideEventCallbackManager(I)V

    return-void
.end method
