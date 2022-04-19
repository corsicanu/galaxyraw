.class public Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewCbConfigCollector"
.end annotation


# instance fields
.field private final mainPreviewCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

.field private final subPreviewCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mainPreviewCbConfig",
            "subPreviewCbConfig"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->mainPreviewCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->subPreviewCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->mainPreviewCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->subPreviewCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method


# virtual methods
.method public getMainPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->mainPreviewCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method

.method public getSubPreviewCbConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewCbConfigCollector;->subPreviewCbConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method
