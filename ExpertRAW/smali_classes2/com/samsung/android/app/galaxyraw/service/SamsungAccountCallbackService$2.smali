.class Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;
.super Ljava/lang/Object;
.source "SamsungAccountCallbackService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
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

    const-string p1, "GalaxyRaw/SACallbackService"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->access$102(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "additional"

    const-string v1, "cc"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->access$100(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v1

    const-string v2, "q78xkxlcnz"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->access$200(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)Lcom/msc/sa/aidl/ISACallback$Stub;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->access$002(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->access$100(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v0

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->access$000(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "camera.action.ACTION_UPDATE_SAMSUNG_ACCOUNT_CC_COMPLETED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    const-string p1, "GalaxyRaw/SACallbackService"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$2;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->access$102(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    return-void
.end method
