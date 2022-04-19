.class public Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderConfig"
.end annotation


# instance fields
.field private final pictureRequestBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final previewRequestBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final recordRequestBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewRequestBuilderMap",
            "pictureRequestBuilderMap",
            "recordRequestBuilderMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->previewRequestBuilderMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->pictureRequestBuilderMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->recordRequestBuilderMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->previewRequestBuilderMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->pictureRequestBuilderMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->recordRequestBuilderMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getPictureRequestBuilderMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->pictureRequestBuilderMap:Ljava/util/Map;

    return-object p0
.end method

.method public getPreviewRequestBuilderMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->previewRequestBuilderMap:Ljava/util/Map;

    return-object p0
.end method

.method public getRecordRequestBuilderMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig$BuilderConfig;->recordRequestBuilderMap:Ljava/util/Map;

    return-object p0
.end method
