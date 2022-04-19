.class Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "SamsungAccountCallbackService.java"


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "isSuccess",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveAccessToken : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRaw/SACallbackService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const-string p1, "cc"

    const-string v0, "FAIL"

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    const-string p2, "error_code"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveAccessToken error_code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceiveAccessToken error_message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "error_message"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "samsung_account_cc_value"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-string v0, "samsung_account_cc_time"

    invoke-static {p1, v0, p2, p3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->access$100(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->access$000(Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->stopService(Landroid/content/Intent;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService$1;->this$0:Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/service/SamsungAccountCallbackService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "camera.action.ACTION_UPDATE_SAMSUNG_ACCOUNT_CC_COMPLETED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "b",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "b",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "b",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "b",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveRLControlFMM(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "b",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveRubinRequest(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "b",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "b",
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
