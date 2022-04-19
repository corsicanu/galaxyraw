.class public Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

.field private final callback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

.field private final cameraParameter:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

.field private depthCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

.field private firstPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

.field private previewCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

.field private secondPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

.field private final surfaceConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;

.field private thirdPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

.field private thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceConfigCollector",
            "builderConfig",
            "cameraParameter",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "surfaceConfigCollector"

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "builderConfig"

    invoke-static {p2, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "cameraParameter"

    invoke-static {p3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback"

    invoke-static {p4, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->access$1000(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->access$1000(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;->getSurfaceSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/NativeUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->surfaceConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->cameraParameter:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->callback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;->access$2400()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SessionConfig\'s Builder Constructor is failed : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->ILLEGAL_ARGUMENT:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->surfaceConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->previewCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->firstPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->secondPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->thirdPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->depthCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->builderConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->cameraParameter:Lcom/samsung/android/app/galaxyraw/core2/local/parameter/SemCameraParameter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;)Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->callback:Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;-><init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$1;)V

    return-object v0
.end method

.method public setDepthCbConfigs(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "depthCbConfigCollector"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->depthCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;

    return-object p0
.end method

.method public setFirstPicCbConfigs(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firstPicCbConfigCollector"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->firstPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method public setPreviewCbConfigs(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewCbConfigCollector"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->previewCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;

    return-object p0
.end method

.method public setSecondPicCbConfigs(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondPicCbConfigCollector"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->secondPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method public setThirdPicCbConfigs(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thirdPicCbConfigCollector"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->thirdPicCbConfigCollector:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method public setThumbnailCbConfig(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailCbConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$Builder;->thumbnailCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method
