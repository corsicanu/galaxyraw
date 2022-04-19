.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BokehInfoCallbackManager$_NNGhLwLCzksa5qvQT5_IP3s4qw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BokehInfoCallbackManager$_NNGhLwLCzksa5qvQT5_IP3s4qw;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BokehInfoCallbackManager$_NNGhLwLCzksa5qvQT5_IP3s4qw;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BokehInfoCallbackManager$_NNGhLwLCzksa5qvQT5_IP3s4qw;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$BokehInfoCallbackManager$_NNGhLwLCzksa5qvQT5_IP3s4qw;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$BokehInfoCallbackManager;->lambda$onBokehInfoChanged$0$CallbackManagerImpl$BokehInfoCallbackManager(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$BokehInfoCallback$BokehInfo;)V

    return-void
.end method
