.class public Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;,
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;,
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;,
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;,
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;,
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;,
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;,
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;,
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;,
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DefaultStreamConfig;,
        Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field public final builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

.field public final callback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

.field public final cameraParameter:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

.field public final depthCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

.field public final firstPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

.field public final previewCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

.field public final secondPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

.field public final surfaceConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;

.field public final thirdPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

.field public final thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->access$000(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->surfaceConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->access$100(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->previewCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->access$200(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    invoke-direct {v1, v2, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->firstPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->access$300(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    invoke-direct {v1, v2, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->secondPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->access$400(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    invoke-direct {v1, v2, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->thirdPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->access$500(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->access$600(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

    invoke-direct {v1, v2, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->depthCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->access$700(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->access$800(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->cameraParameter:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->access$900(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->callback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)V

    return-void
.end method

.method static synthetic access$2400()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object v0
.end method

.method public static checkValidImageCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageFormat()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;->getImageSize()Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static checkValidSurfaceConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->getSurface()Landroid/view/Surface;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static dumpSessionConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionConfig"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->surfaceConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->access$1000(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "dumpSessionConfig - mainPreviewSurfaceConfig : %s"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->access$1100(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v2

    const-string v3, "firstRecordSurfaceConfig"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->access$1200(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    move-result-object v2

    const-string v3, "secondRecordSurfaceConfig"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->access$1300(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    move-result-object v0

    const-string v2, "previewExtraSurfaceConfig"

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->previewCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->access$1400(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v2

    const-string v3, "mainPreviewCbConfig"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->access$1500(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    const-string v2, "subPreviewCbConfig"

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->firstPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->access$1600(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v2

    const-string v3, "first compPicCbConfig"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->access$1700(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v2

    const-string v3, "first unCompPicCbConfig"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->access$1800(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    const-string v2, "first rawPicCbConfig"

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->secondPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->access$1600(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v2

    const-string v3, "second compPicCbConfig"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->access$1700(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v2

    const-string v3, "second unCompPicCbConfig"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->access$1800(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    const-string v2, "second rawPicCbConfig"

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->thirdPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->access$1600(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v2

    const-string v3, "third compPicCbConfig"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->access$1700(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v2

    const-string v3, "third unCompPicCbConfig"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;->access$1800(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    const-string v2, "third rawPicCbConfig"

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    const-string v2, "thumbnailCbConfig"

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->depthCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->access$1900(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v2

    const-string v3, "previewDepthCbConfig"

    invoke-static {v3, v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->access$2000(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    move-result-object v0

    const-string v2, "pictureDepthCbConfig"

    invoke-static {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSessionConfig - previewRequestBuilderMap "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->access$2100(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSessionConfig - pictureRequestBuilderMap "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->access$2200(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSessionConfig - recordRequestBuilderMap "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->access$2300(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSessionConfig - cameraParameter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->cameraParameter:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSessionConfig - sessionStateCallback "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->callback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "imageCbConfig"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidImageCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "dumpSessionConfig - %s : %s"

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printSessionConfig(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "surfaceConfig"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->checkValidSurfaceConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-string v4, "dumpSessionConfig - %s : %s size %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    aput-object p1, v5, v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v0

    const-string p0, "dumpSessionConfig - %s : %s size unknown"

    invoke-static {v3, p0, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->dumpSessionConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V

    return-void
.end method
