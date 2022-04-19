.class Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$2;
.super Landroid/content/BroadcastReceiver;
.source "CameraBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$2;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraBroadcastReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "received screen off intent!!!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$2;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "finish secure camera when screen turns off"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$2;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setShowWhenLocked(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$2;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finish()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$2;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    const/16 p2, 0x7e6

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finishActivity(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$2;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    const/16 p1, 0x7f5

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finishActivity(I)V

    :cond_0
    return-void
.end method
