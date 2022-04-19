.class Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$4;
.super Lcom/samsung/android/sdk/bixby2/action/ActionHandler;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "actionId",
            "paramsBundle",
            "callback"
        }
    .end annotation

    const-string p0, "ActionStateSet"

    const-string v0, "action request"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1700()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {p4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1802(Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$1902(Landroid/content/Context;)Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->init(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$2000()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$2100()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string p2, "camera.action.EXECUTE_BIXBY"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$2200()Ljava/util/Map;

    move-result-object p0

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$2200()Ljava/util/Map;

    move-result-object p0

    const-string v0, "isParameterFilling"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$2200()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isCameraActivity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz p0, :cond_4

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$2200()Ljava/util/Map;

    move-result-object p0

    const-string v1, "currentMode"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, p3

    :goto_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->access$2200()Ljava/util/Map;

    move-result-object v1

    const-string v2, "isFrontCamera"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "front"

    goto :goto_1

    :cond_2
    const-string v1, "back"

    goto :goto_1

    :cond_3
    move-object v1, p3

    goto :goto_1

    :cond_4
    move-object p0, p3

    move-object v1, p0

    :goto_1
    if-nez v0, :cond_6

    if-nez p0, :cond_6

    const-string p0, "default"

    goto :goto_2

    :cond_5
    move-object p0, p3

    move-object v1, p0

    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PERMISSION_DENIED:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p3, p2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->sendResponse(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;->launchCameraActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
