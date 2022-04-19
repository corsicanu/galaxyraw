.class Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;
.super Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;
.source "CameraExecutorManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateRequested()Ljava/lang/String;
    .locals 12

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    const-string v2, "viv.cameraApp.AppContext"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "isCameraActivity"

    invoke-virtual {v2, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$500(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, " "

    const-string v7, "_"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "mode"

    invoke-virtual {v2, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$600(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)I

    move-result v3

    const/16 v8, 0xb

    if-eq v3, v8, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v9, "isUsingFlashAvailable"

    invoke-virtual {v2, v9, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecordingAvailable(Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v9, "isRecordingAvailable"

    invoke-virtual {v2, v9, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$200(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isCaptureAvailable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v9, "isCaptureAvailable"

    invoke-virtual {v2, v9, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$700(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v9, "isChangeShootingModeAvailable"

    invoke-virtual {v2, v9, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$800(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v9, "isLaunchSettingAvailable"

    invoke-virtual {v2, v9, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$500(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)I

    move-result v3

    const/16 v9, 0x1d

    const-string v10, "isCurrentFlashMode"

    if-ne v3, v9, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$500(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)I

    move-result v3

    if-ne v3, v8, :cond_3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$900(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1000(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v8, "isLimitedCameraMode"

    invoke-virtual {v2, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "true"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "+"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "LimitedCameraModeList"

    invoke-virtual {v2, v8, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$900(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "isFrontCamera"

    invoke-virtual {v2, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$900(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShootingModeForSwitchCamera()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "oppositeMode"

    invoke-virtual {v2, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1100(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$1100(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getMaxZoomLevel()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "getMaxZoomStep"

    invoke-virtual {v2, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$100(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_7

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$100(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl$3;->this$0:Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;->access$100(Lcom/samsung/android/app/galaxyraw/executor/CameraExecutorManagerImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Ver"

    invoke-virtual {v2, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p0, "CameraExecutorManager"

    const-string v3, "Unable to get the camera version"

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string p0, "values"

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance p0, Lcom/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "concepts"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
