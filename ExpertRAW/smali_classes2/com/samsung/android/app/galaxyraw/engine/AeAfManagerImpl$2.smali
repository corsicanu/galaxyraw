.class Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback;


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTouchAfResultReceived()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->isAfSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p0

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public synthetic lambda$onAeInfoChanged$0$AeAfManagerImpl$2()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AutoFocusEventListener;->onAeAfLocked()V

    :cond_0
    return-void
.end method

.method public onAeInfoChanged(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "aeInfo",
            "camDevice"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeMode()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeState()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAeInfoChanged : aeMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeMode()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeModeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " aeState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeState()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getAeStateString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AeAfManagerImpl"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeState()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p1, p3, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeState()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1102(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$600(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1302(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Z)Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1300(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1400(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1302(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Z)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$400(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$800(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$800(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1100(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->isTouchAfResultReceived()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$2$j0qkzt385WwU0gDPnNtXgGRY8rQ;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$AeAfManagerImpl$2$j0qkzt385WwU0gDPnNtXgGRY8rQ;-><init>(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, p2, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    :cond_5
    :goto_0
    return-void
.end method
