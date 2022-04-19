.class Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
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

    const-string v3, "CameraSettingActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->access$000(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    const-string v1, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne v0, p2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->setExternalSDStorageVolume(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isExternalSdStorageMounted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->access$100(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->access$000(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->refreshMenu()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->setExternalSDStorageVolume(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isExternalSdStorageMounted()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->access$100(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$1;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->access$000(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->refreshMenu()V

    :cond_3
    :goto_0
    return-void
.end method
