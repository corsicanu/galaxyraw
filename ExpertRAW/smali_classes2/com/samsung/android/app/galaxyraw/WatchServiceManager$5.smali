.class Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;
.super Ljava/lang/Object;
.source "WatchServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/WatchServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "iBinder"
        }
    .end annotation

    const/16 v0, 0x3e8

    const-string v1, "WatchServiceManager"

    if-nez p2, :cond_0

    const-string p1, "onServiceConnected : Returned because iBinder is not available."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3002(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;I)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$1500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3102(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    move-result-object p2

    if-eqz p2, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3100(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3200(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;->registerCallback(Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;)Z

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3300(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2202(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;I)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", version : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2200(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const/16 p2, 0x3e9

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3002(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;I)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3400(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/app/Presentation;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2700(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)Landroid/app/Presentation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Presentation;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3500(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "onServiceConnected fail : RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "onServiceConnected fail : CameraControlService is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "onServiceConnected : Returned because camera is not running."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3002(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;I)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchServiceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3102(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$3002(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;I)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/WatchServiceManager$5;->this$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->access$2202(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;I)I

    return-void
.end method
