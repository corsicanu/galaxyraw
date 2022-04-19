.class public Lcom/samsung/android/app/galaxyraw/util/BurstShotUtil;
.super Ljava/lang/Object;
.source "BurstShotUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BurstShotUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBurstShotRestrictionToastString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cameraSettings",
            "burstCaptureFps"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    if-eqz p2, :cond_1

    const p1, 0x7f12020f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilter()I

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x7f12020d

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->getMegaPixelSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result p1

    if-eq p1, v2, :cond_a

    const p1, 0x7f120218

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_4
    :goto_0
    const p1, 0x7f12020e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f120217

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilter()I

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const p2, 0x7f120215

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->getMegaPixelSize(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result p1

    if-eq p1, v2, :cond_9

    const p1, 0x7f120369

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_9
    if-nez p2, :cond_a

    const p1, 0x7f1201fd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_a
    :goto_1
    const/4 p0, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const p1, 0x7f120216

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static isBurstShotAvailable(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cameraSettings"
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "BurstShotUtil"

    const-string p1, "BurstShot is not available - VTCallOngoing is true."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method
