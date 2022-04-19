.class public Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;,
        Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$PictureEncodeFormat;,
        Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$DeviceUsageType;
    }
.end annotation


# static fields
.field public static final DEVICE_USAGE_TYPE_MULTI:I = 0x1

.field public static final DEVICE_USAGE_TYPE_SINGLE:I = 0x0

.field public static final PICTURE_ENCODE_FORMAT_HEIF:I = 0x48454946

.field public static final PICTURE_ENCODE_FORMAT_JPEG:I = 0x100


# instance fields
.field private deviceUsageType:I

.field private firstPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

.field private firstRecorderSurface:Landroid/view/Surface;

.field private mainPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

.field private mainPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

.field private mainPreviewSurfaceSize:Landroid/util/Size;

.field private mainPreviewSurfaceSource:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private parameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

.field private pictureEncodeFormat:I

.field private previewExtraSurface:Landroid/view/Surface;

.field private secondPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

.field private secondRecorderSurface:Landroid/view/Surface;

.field private subPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

.field private thirdPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->deviceUsageType:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->pictureEncodeFormat:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;Landroid/util/Size;Ljava/lang/Class;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;IILcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainPreviewSurfaceData",
            "mainPreviewSurfaceSize",
            "mainPreviewSurfaceSource",
            "firstRecorderSurface",
            "secondRecorderSurface",
            "previewExtraSurface",
            "deviceUsageType",
            "pictureEncodeFormat",
            "mainPreviewCbImgSizeConfig",
            "subPreviewCbImgSizeConfig",
            "firstPicCbImgSizeConfig",
            "secondPicCbImgSizeConfig",
            "thirdPicCbImgSizeConfig",
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "II",
            "Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;",
            "Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->deviceUsageType:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->pictureEncodeFormat:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSize:Landroid/util/Size;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSource:Ljava/lang/Class;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstRecorderSurface:Landroid/view/Surface;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondRecorderSurface:Landroid/view/Surface;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->previewExtraSurface:Landroid/view/Surface;

    iput p7, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->deviceUsageType:I

    iput p8, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->pictureEncodeFormat:I

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    iput-object p10, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->subPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    iput-object p11, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    iput-object p12, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    iput-object p13, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->thirdPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    iput-object p14, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->parameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    return-void
.end method

.method private isSameConfig(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->subPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->subPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->thirdPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->thirdPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSameSurface(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSize:Landroid/util/Size;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSize:Landroid/util/Size;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSource:Ljava/lang/Class;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSource:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstRecorderSurface:Landroid/view/Surface;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstRecorderSurface:Landroid/view/Surface;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondRecorderSurface:Landroid/view/Surface;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondRecorderSurface:Landroid/view/Surface;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->previewExtraSurface:Landroid/view/Surface;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->previewExtraSurface:Landroid/view/Surface;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$toString$0(Ljava/lang/StringBuilder;Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "mainPreviewSurfaceData = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$1(Ljava/lang/StringBuilder;Landroid/util/Size;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", mainPreviewSurfaceSize = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$10(Ljava/lang/StringBuilder;Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", thirdPicCbImgSizeConfig = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$11(Ljava/lang/StringBuilder;Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", parameters = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$2(Ljava/lang/StringBuilder;Ljava/lang/Class;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", mainPreviewSurfaceSource = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$3(Ljava/lang/StringBuilder;Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", firstRecorderSurface = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$4(Ljava/lang/StringBuilder;Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", secondRecorderSurface = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$5(Ljava/lang/StringBuilder;Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", previewExtraSurface = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$6(Ljava/lang/StringBuilder;Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", mainPreviewCbImgSizeConfig = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$7(Ljava/lang/StringBuilder;Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", subPreviewCbImgSizeConfig = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$8(Ljava/lang/StringBuilder;Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", firstPicCbImgSizeConfig = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$toString$9(Ljava/lang/StringBuilder;Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", secondPicCbImgSizeConfig = %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->isSameSurface(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->isSameConfig(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->deviceUsageType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->deviceUsageType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->pictureEncodeFormat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->pictureEncodeFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->parameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->parameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDeviceUsageType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->deviceUsageType:I

    return p0
.end method

.method public getFirstPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    return-object p0
.end method

.method public getFirstRecorderSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstRecorderSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getMainPreviewCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    return-object p0
.end method

.method public getMainPreviewSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMainPreviewSurfaceData()Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    return-object p0
.end method

.method public getMainPreviewSurfaceSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSize:Landroid/util/Size;

    return-object p0
.end method

.method public getMainPreviewSurfaceSource()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSource:Ljava/lang/Class;

    return-object p0
.end method

.method public getMainPreviewSurfaceUsageType()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;->getSurfaceUsageType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getParameters()Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->parameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    return-object p0
.end method

.method public getPictureEncodeFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->pictureEncodeFormat:I

    return p0
.end method

.method public getPreviewExtraSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->previewExtraSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSecondPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    return-object p0
.end method

.method public getSecondRecorderSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondRecorderSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSubPreviewCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->subPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    return-object p0
.end method

.method public getThirdPicCbImgSizeConfig()Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->thirdPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public setDeviceUsageType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceUsageType"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->deviceUsageType:I

    return-void
.end method

.method public setFirstPicCbImgSizeConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstPicCbImgSizeConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    return-void
.end method

.method public setFirstRecorderSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstRecorderSurface"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstRecorderSurface:Landroid/view/Surface;

    return-void
.end method

.method public setMainPreviewCbImgSizeConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainPreviewCbImgSizeConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    return-void
.end method

.method public setMainPreviewSurfaceData(Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainPreviewSurfaceData"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    return-void
.end method

.method public setMainPreviewSurfaceSize(Landroid/util/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainPreviewSurfaceSize"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSize:Landroid/util/Size;

    return-void
.end method

.method public setMainPreviewSurfaceSource(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainPreviewSurfaceSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSource:Ljava/lang/Class;

    return-void
.end method

.method public setParameters(Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->parameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    return-void
.end method

.method public setPictureEncodeFormat(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureEncodeFormat"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->pictureEncodeFormat:I

    return-void
.end method

.method public setPreviewExtraSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewExtraSurface"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->previewExtraSurface:Landroid/view/Surface;

    return-void
.end method

.method public setSecondPicCbImgSizeConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondPicCbImgSizeConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    return-void
.end method

.method public setSecondRecorderSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondRecorderSurface"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondRecorderSurface:Landroid/view/Surface;

    return-void
.end method

.method public setSubPreviewCbImgSizeConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subPreviewCbImgSizeConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->subPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    return-void
.end method

.method public setThirdPicCbImgSizeConfig(Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thirdPicCbImgSizeConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->thirdPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceData:Lcom/samsung/android/app/galaxyraw/core2/container/SurfaceData;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$SximlnjvLxcpLni6tId1omlla6M;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$SximlnjvLxcpLni6tId1omlla6M;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSize:Landroid/util/Size;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$Cr1kOJz2M8J2ATrb7ZcuBE2B0oE;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$Cr1kOJz2M8J2ATrb7ZcuBE2B0oE;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewSurfaceSource:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$Qo8Xto177lSSFPd_nUzesFcDaHU;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$Qo8Xto177lSSFPd_nUzesFcDaHU;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstRecorderSurface:Landroid/view/Surface;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$5S31ngKbawDNea1eSgt9mHobh9U;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$5S31ngKbawDNea1eSgt9mHobh9U;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondRecorderSurface:Landroid/view/Surface;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$RHhkqvxlzWfF47VvEDYAfWP7wDQ;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$RHhkqvxlzWfF47VvEDYAfWP7wDQ;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->previewExtraSurface:Landroid/view/Surface;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$ak3Iy7M8L4OOb0oMggv-rkrMr2Q;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$ak3Iy7M8L4OOb0oMggv-rkrMr2Q;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->pictureEncodeFormat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, ", pictureEncodeFormat = %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->mainPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$qxn8jZdsp1D9wJh6TRsDl9U8-wA;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$qxn8jZdsp1D9wJh6TRsDl9U8-wA;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->subPreviewCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PreviewCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$2xf28CT3Lqm9Qly6HMblbI6DJts;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$2xf28CT3Lqm9Qly6HMblbI6DJts;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->firstPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$dwnhYZaTX6ud6-atzu4zzv0vyyw;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$dwnhYZaTX6ud6-atzu4zzv0vyyw;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->secondPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$uqLJzd2b-j7udeuL9RcJaWtvtaE;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$uqLJzd2b-j7udeuL9RcJaWtvtaE;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->thirdPicCbImgSizeConfig:Lcom/samsung/android/app/galaxyraw/core2/container/PicCbImgSizeConfig;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$hARNu-HEawgmTx0_MjMQSx52FEI;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$hARNu-HEawgmTx0_MjMQSx52FEI;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration;->parameters:Lcom/samsung/android/app/galaxyraw/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$4rLoPFFoW0yL3XtMlJh29mvfzGs;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/-$$Lambda$DeviceConfiguration$4rLoPFFoW0yL3XtMlJh29mvfzGs;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
