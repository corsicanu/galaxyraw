.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdaptiveLensModeInfoCallbackManager"
.end annotation


# instance fields
.field private mAdaptiveLensModeInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AdaptiveLensModeInfoListener;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;->mAdaptiveLensModeInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AdaptiveLensModeInfoListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdaptiveLensModeInfoChanged$0$CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;->mAdaptiveLensModeInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AdaptiveLensModeInfoListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->getAdaptiveLensCondition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->getAdaptiveLensModeState()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AdaptiveLensModeInfoListener;->onAdaptiveLensModeInfoChanged(II)V

    :cond_0
    return-void
.end method

.method public onAdaptiveLensModeInfoChanged(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "AdaptiveLensModeInfo",
            "camDevice"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->getAdaptiveLensCondition()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;->getAdaptiveLensModeState()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager$xiAMryWvxvCMPndj-3YeUataBzc;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager$xiAMryWvxvCMPndj-3YeUataBzc;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AdaptiveLensModeInfoCallback$AdaptiveLensModeInfo;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setAdaptiveLensModeInfoListenerListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AdaptiveLensModeInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$AdaptiveLensModeInfoCallbackManager;->mAdaptiveLensModeInfoListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$AdaptiveLensModeInfoListener;

    return-void
.end method
