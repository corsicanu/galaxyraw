.class Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraLocalBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraLocalBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "camera.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "camera.action.UPDATE_CHECK_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "update_check_result"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->access$100(Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->OPTIONAL_APP_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;->access$100(Lcom/samsung/android/app/galaxyraw/CameraLocalBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->registerPreDrawListener()V

    :cond_2
    :goto_0
    return-void
.end method
