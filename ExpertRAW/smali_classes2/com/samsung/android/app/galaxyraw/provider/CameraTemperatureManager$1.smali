.class Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

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

    const-string v1, "CameraTemperatureMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->access$100(Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onReceive - ignore case, camera is not running"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->access$200(Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->handleBatteryChanged(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
