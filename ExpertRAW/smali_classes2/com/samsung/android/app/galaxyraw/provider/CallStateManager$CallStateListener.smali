.class Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CallStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "incomingNumber"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCallStateChanged : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CallStateManager"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$000(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isOtherVTCallOngoing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$000(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$500(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$000(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$500(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$000(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isCalling(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$400(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$400(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$000(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "camera.action.CALL_STATE_IDLE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$400(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$400(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$000(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "camera.action.CALL_STATE_OFFHOOK"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCallStateChanged isPopupCallSupported : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$300(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$300(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$000(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->access$000(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "camera.action.CALL_STATE_RINGING"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void
.end method
