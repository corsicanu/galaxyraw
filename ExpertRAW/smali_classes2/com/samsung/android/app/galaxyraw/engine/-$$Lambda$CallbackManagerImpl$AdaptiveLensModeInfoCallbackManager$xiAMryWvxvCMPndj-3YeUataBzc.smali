.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager$xiAMryWvxvCMPndj-3YeUataBzc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager$xiAMryWvxvCMPndj-3YeUataBzc;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager$xiAMryWvxvCMPndj-3YeUataBzc;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager$xiAMryWvxvCMPndj-3YeUataBzc;->f$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager$xiAMryWvxvCMPndj-3YeUataBzc;->f$1:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;->lambda$onAdaptiveLensModeInfoChanged$0$CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;)V

    return-void
.end method
