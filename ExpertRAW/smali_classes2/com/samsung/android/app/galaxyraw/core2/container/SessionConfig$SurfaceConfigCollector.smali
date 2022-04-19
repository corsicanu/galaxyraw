.class public Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceConfigCollector"
.end annotation


# instance fields
.field private final firstRecordSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

.field private final mainPreviewSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

.field private final previewExtraSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

.field private final secondRecordSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainPreviewSurfaceConfig",
            "firstRecordSurfaceConfig",
            "secondRecordSurfaceConfig",
            "previewExtraSurfaceConfig"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->mainPreviewSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->firstRecordSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->secondRecordSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->previewExtraSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->mainPreviewSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->firstRecordSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->secondRecordSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->previewExtraSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    return-object p0
.end method


# virtual methods
.method public getFirstRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->firstRecordSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    return-object p0
.end method

.method public getMainPreviewSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->mainPreviewSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewSurfaceConfig;

    return-object p0
.end method

.method public getPreviewExtraSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->previewExtraSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$PreviewExtraSurfaceConfig;

    return-object p0
.end method

.method public getSecondRecordSurfaceConfig()Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfigCollector;->secondRecordSurfaceConfig:Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$SurfaceConfig;

    return-object p0
.end method
