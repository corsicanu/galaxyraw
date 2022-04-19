.class public Lcom/samsung/android/app/galaxyraw/RequestUpdateActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RequestUpdateActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestUpdateActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->SYSTEM_PLATFORM_VERSION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->TARGET_PLATFORM_VERSION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "RequestUpdateActivity"

    if-eqz v1, :cond_0

    const-string p0, "PLATFORM VERSION is not defined for this binary, request mandatory system update"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->MANDATORY_SYSTEM_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    return-void

    :cond_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p0, v0, :cond_1

    const-string p0, "Binary is incompatible, request mandatory system update"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->MANDATORY_SYSTEM_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_1
    if-le p0, v0, :cond_2

    const-string p0, "Application is incompatible, request mandatory app update"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->MANDATORY_APP_UPDATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_2
    :goto_0
    return-void
.end method
