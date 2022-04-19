.class Lcom/samsung/android/app/galaxyraw/CameraWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/CameraWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/CameraWindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

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

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive action : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraWindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "camera.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->access$000(Lcom/samsung/android/app/galaxyraw/CameraWindowManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->access$000(Lcom/samsung/android/app/galaxyraw/CameraWindowManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/CameraWindowManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/CameraWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/CameraWindowManager;->registerPreDrawListener()V

    :cond_1
    :goto_0
    return-void
.end method
