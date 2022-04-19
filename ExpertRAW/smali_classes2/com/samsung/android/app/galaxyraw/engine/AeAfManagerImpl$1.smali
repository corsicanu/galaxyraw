.class Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAfInfo(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "afInfo"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfMode()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfState()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfMode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfState()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$300(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private handleContinuousAfStateChangedEvent()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$XsJdSq7aW_GdlY9HKUZYzbzGIB8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$XsJdSq7aW_GdlY9HKUZYzbzGIB8;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private handleSingleAfStateChangedEvent()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$3dCUSBWR7AtbpPTO0vEoBKPcQWo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$3dCUSBWR7AtbpPTO0vEoBKPcQWo;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$szxPrGK9SY9Ja967M3A6elqlW2A;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$szxPrGK9SY9Ja967M3A6elqlW2A;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AF_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$GFP_U0gXKgXkx-g7ZROFdF8ZOHk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$GFP_U0gXKgXkx-g7ZROFdF8ZOHk;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic lambda$onAfInfoChanged$0(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;->onChange(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$handleContinuousAfStateChangedEvent$1$AeAfManagerImpl$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;->onContinuousAfFocused()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleSingleAfStateChangedEvent$2$AeAfManagerImpl$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;->onTouchAfFocused()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleSingleAfStateChangedEvent$3$AeAfManagerImpl$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;->onTouchAfFocused()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleSingleAfStateChangedEvent$4$AeAfManagerImpl$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;->onAeAfLocked()V

    :cond_0
    return-void
.end method

.method public onAfInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "afInfo",
            "camDevice"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->checkAfInfo(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAfInfoChanged : afMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfMode()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfModeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " afState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfState()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAfStateString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AeAfManagerImpl"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfMode()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$102(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfState()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$202(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->handleContinuousAfStateChangedEvent()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->handleSingleAfStateChangedEvent()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$300(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p3, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->CANCEL_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, p3, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$302(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)I

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, p3, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$500(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$600(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, p3, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$800(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$800(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$900(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AfInfoListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$oJ3OP8BVOIPIzXkAHT9cM2Agbf0;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$1$oJ3OP8BVOIPIzXkAHT9cM2Agbf0;-><init>(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AfInfoCallback$AfInfo;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
