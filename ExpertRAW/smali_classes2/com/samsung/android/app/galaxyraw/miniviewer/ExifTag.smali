.class public final Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final FLASH_FIRED_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExifTag"


# instance fields
.field public aperture:Ljava/lang/String;

.field public exposureTime:Ljava/lang/String;

.field public flash:Ljava/lang/Boolean;

.field public focalLength:Ljava/lang/String;

.field public iso:Ljava/lang/String;

.field public location:[F

.field public make:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public orientation:I

.field public originalTime:Ljava/lang/String;

.field public shutterSpeed:Ljava/lang/String;

.field public whiteBalance:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/media/ExifInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getFlash(Landroid/media/ExifInterface;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->flash:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getMake(Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->make:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getModel(Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->model:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getAperture(Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->aperture:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getIso(Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->iso:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getManualWhiteBalance(Landroid/media/ExifInterface;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->whiteBalance:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getExposureTime(Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->exposureTime:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getShutterSpeed(Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->shutterSpeed:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getFocalLength(Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->focalLength:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getLocation(Landroid/media/ExifInterface;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->location:[F

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getDateTimeOriginal(Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->originalTime:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getOrientation(Landroid/media/ExifInterface;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->orientation:I

    :cond_0
    return-void
.end method

.method public static getAperture(Landroid/media/ExifInterface;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "FNumber"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "F%.1f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAttribute(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "exif",
            "key"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getDateTimeOriginal(Landroid/media/ExifInterface;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExposureTime(Landroid/media/ExifInterface;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "ExposureTime"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->toReciprocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFlash(Landroid/media/ExifInterface;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "Flash"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->isFlashFired(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFocalLength(Landroid/media/ExifInterface;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "FocalLength"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double p0, v3, v1

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%.2fmm"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIso(Landroid/media/ExifInterface;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "ISOSpeedRatings"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLocation(Landroid/media/ExifInterface;)[F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLatLong failed e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExifTag"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMake(Landroid/media/ExifInterface;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "Make"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getManualWhiteBalance(Landroid/media/ExifInterface;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "WhiteBalance"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getModel(Landroid/media/ExifInterface;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "Model"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getOrientation(Landroid/media/ExifInterface;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x10e

    return p0

    :pswitch_1
    const/16 p0, 0x5a

    return p0

    :pswitch_2
    const/16 p0, 0xb4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getShutterSpeed(Landroid/media/ExifInterface;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    const-string v0, "ShutterSpeedValue"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->toReciprocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isFlashFired(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static toReciprocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    div-double/2addr v0, v5

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-gez p0, :cond_8

    div-double/2addr v5, v0

    add-double/2addr v5, v7

    double-to-long v0, v5

    const-wide/16 v5, 0x3b

    cmp-long p0, v0, v5

    if-nez p0, :cond_2

    const-wide/16 v0, 0x3c

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x5b

    cmp-long p0, v0, v5

    if-nez p0, :cond_3

    const-wide/16 v0, 0x5a

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0xb3

    cmp-long p0, v0, v5

    if-nez p0, :cond_4

    const-wide/16 v0, 0xb4

    goto :goto_1

    :cond_4
    const-wide/16 v5, 0x159

    cmp-long p0, v0, v5

    if-nez p0, :cond_5

    const-wide/16 v0, 0x15e

    goto :goto_1

    :cond_5
    const-wide/16 v5, 0x301

    cmp-long p0, v0, v5

    if-nez p0, :cond_6

    const-wide/16 v0, 0x2ee

    goto :goto_1

    :cond_6
    const-wide/16 v5, 0x595

    cmp-long p0, v0, v5

    if-nez p0, :cond_7

    const-wide/16 v0, 0x5dc

    :cond_7
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "%d/%d s"

    invoke-static {p0, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    double-to-long v9, v0

    long-to-double v11, v9

    sub-double/2addr v0, v11

    div-double/2addr v5, v0

    add-double/2addr v5, v7

    double-to-long v5, v5

    const-wide/16 v7, 0x1

    cmp-long p0, v5, v7

    if-nez p0, :cond_9

    add-long/2addr v9, v7

    const-wide/16 v0, 0x0

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v7, "\'\'"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v0, v7

    if-lez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, " %d/%d s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_a
    return-object p0
.end method
