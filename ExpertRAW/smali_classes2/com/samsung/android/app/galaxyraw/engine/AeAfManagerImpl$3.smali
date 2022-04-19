.class Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$TouchAeStateCallback;


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchAeStateChanged(Ljava/lang/Long;Ljava/lang/Integer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "touchAeState",
            "camDevice"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1500(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p1, p3, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onTouchAeStateChanged : touchAeState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/MakerParameter;->getTouchAeStateString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AeAfManagerImpl"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1502(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;I)I

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1500(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1700(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$800(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$800(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1500(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1602(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Z)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_DONE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1500(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1800(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/AeAfController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/AeAfController;->lockAeAwb()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1500(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;)I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;->access$1602(Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;Z)Z

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
