.class Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleEmergencyStateChanged(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "reason"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "CameraBroadcastReceiver"

    const-string v0, "as simple camera camera enabled, previous camera finish"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    const/16 v0, 0x7e6

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finishActivity(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method private handleUserPresentEvent()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isSecure"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECURE_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateLatestMedia()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateThumbnail()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setShowWhenLocked(Z)V

    :cond_0
    return-void
.end method

.method private handleVolumeStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
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

    const-string v0, "android.os.storage.extra.VOLUME_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->setExternalSDStorageVolume(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->semIsResumed()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecording()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->checkExternalSdStorage()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateLatestMedia()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateThumbnail()V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x5

    if-eq v0, p2, :cond_2

    const/4 v0, 0x7

    if-ne v0, p2, :cond_5

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->setExternalSDStorageVolume(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isExternalSdStorageMounted()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    new-instance p2, Landroid/content/Intent;

    const-string v1, "camera.action.MEDIA_UNMOUNTED"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->semIsResumed()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateLatestMedia()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateThumbnail()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->isCameraDialogVisible(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->this$0:Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;->access$000(Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
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

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraBroadcastReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "0195"

    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->handleUserPresentEvent()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->handleEmergencyStateChanged(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/CameraBroadcastReceiver$3;->handleVolumeStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54155685 -> :sswitch_3
        -0x8cbe44f -> :sswitch_2
        0x311a1d6c -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
