.class public Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DepthCbConfigCollector"
.end annotation


# instance fields
.field private final pictureDepthCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

.field private final previewDepthCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewDepthCbConfig",
            "pictureDepthCbConfig"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->previewDepthCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->pictureDepthCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->previewDepthCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->pictureDepthCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method


# virtual methods
.method public getPictureDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->pictureDepthCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method

.method public getPreviewDepthCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$DepthCbConfigCollector;->previewDepthCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method
