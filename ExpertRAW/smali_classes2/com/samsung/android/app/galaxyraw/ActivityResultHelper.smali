.class Lcom/samsung/android/app/galaxyraw/ActivityResultHelper;
.super Ljava/lang/Object;
.source "ActivityResultHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityResultHelper"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleActivityResult(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;IILandroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--handleActivityResult--requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityResultHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--handleActivityResult--resultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--handleActivityResult--data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7e6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7ea

    if-eq p1, v0, :cond_1

    const/16 p3, 0x7f3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/ActivityResultHelper;->handleCheckSettingResult(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;I)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/ActivityResultHelper;->handleLocationPermissionResult(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p2}, Lcom/samsung/android/app/galaxyraw/ActivityResultHelper;->handleMoreSettingResult(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;I)V

    :goto_0
    return-void
.end method

.method private static handleCheckSettingResult(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camera",
            "resultCode"
        }
    .end annotation

    const/4 v0, -0x1

    const-string v1, "ActivityResultHelper"

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "The user was asked to change settings, but chose not to"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    :cond_1
    const-string p1, "All required changes were successfully made"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method private static handleLocationPermissionResult(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;ILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "resultCode",
            "data"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "location_dialog_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->handleLocationPermissionResult(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static handleMoreSettingResult(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camera",
            "resultCode"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromApplicationSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "from-bixby"

    const/16 v3, 0xbb8

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const-string v0, "ActivityResultHelper"

    const-string v5, "Launched from application settings. Finish."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setIsReturnFromAppSettingByBixby(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finish()V

    goto :goto_0

    :cond_1
    if-eq p1, v3, :cond_3

    const/16 v0, 0xc1c

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setIsReturnFromAppSettingByBixby(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setIsResetFromSettingActivity(Z)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->resetShortcutInfo()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    return-void
.end method
