.class Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$2;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

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

    const-string v1, "onReceive ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->access$000(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "camera.action.UPDATE_CHECK_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "camera.action.CAMERA_START"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->access$200(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const-string v0, "update_check_result"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity$2;->this$0:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->access$000(Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;)Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updateAboutCameraBadge()V

    :cond_3
    :goto_0
    return-void
.end method
