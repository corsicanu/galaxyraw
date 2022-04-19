.class Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;
.super Landroid/os/AsyncTask;
.source "AppUpdateCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$100(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "\\."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateCheckTask.onPostExecute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GalaxyRaw/AppUpdateCheckManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$200(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$300(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/galaxyraw/util/AppsStubUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$400(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "versionCode"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## currentVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", marketVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const-string v5, "update_badge_enabled"

    if-le v1, v3, :cond_0

    :try_start_1
    const-string v0, "case 1 : currentVersionCode > marketVersionCode"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$200(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v4}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    const-string v0, "case 2 : currentVersionCode == marketVersionCode"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$200(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v4}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->SYSTEM_PLATFORM_VERSION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$400(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "extraValue"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "## systemPlatformVersion : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updatePlatformVersion : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_2

    const-string v0, "case 3 : currentVersionCode < marketVersionCode, and app is compatible"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$200(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string p1, "case 4 : currentVersionCode < marketVersionCode, but app NOT compatible"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$200(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v4}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "UpdateCheckTask.onPostExecute : Number format exception."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.UPDATE_CHECK_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$200(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "key_recent_app_update_check_time"

    invoke-static {v1, v4, v2, v3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;J)V

    const-string v1, "update_check_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->this$0:Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->access$200(Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager$UpdateCheckTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
