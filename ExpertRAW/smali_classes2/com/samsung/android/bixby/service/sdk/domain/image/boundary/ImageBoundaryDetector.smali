.class public Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;
.super Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;
.source "ImageBoundaryDetector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageBoundaryDetector"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/ImageBase;-><init>()V

    return-void
.end method

.method public static createInstance()Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;
    .locals 1

    new-instance v0, Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;

    invoke-direct {v0}, Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBoundaries(Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorOptions;)Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;
    .locals 5

    const-string v0, "ImageData cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;->checkPreConditions(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ImageBoundaryDetector"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorOptions;->getOptions()Lcom/samsung/android/bixby/service/sdk/common/Options;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string p2, "getBoundaries in SDK start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, p2, v4}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;->getImageService()Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;->getBoundaries(Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    const-string p1, "getBoundaries in SDK end"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    const-string p1, "Result of getBoundaries"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/common/Result;->getResultData()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    invoke-static {v3, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class p1, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/bixby/service/sdk/common/Result;->convertResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    const/4 v1, -0x1

    goto :goto_2

    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "exception"

    invoke-static {v3, p0, p1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xc8

    :cond_2
    :goto_2
    new-instance p0, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;->setResultCode(I)V

    return-object p0
.end method

.method public getLargestImageBoundary(Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorOptions;)Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;
    .locals 5

    const-string v0, "ImageData cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;->checkPreConditions(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ImageBoundaryDetector"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorOptions;->getOptions()Lcom/samsung/android/bixby/service/sdk/common/Options;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string p2, "getImagePosition in SDK start"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, p2, v4}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/domain/image/boundary/ImageBoundaryDetector;->getImageService()Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;->getLargestImagePosition(Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    const-string p1, "getImagePosition in SDK end"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    const-string p1, "Result of getLargestImageBoundary "

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/bixby/service/sdk/common/Result;->getResultData()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    invoke-static {v3, p1, p2}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class p1, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/bixby/service/sdk/common/Result;->convertResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    const/4 v1, -0x1

    goto :goto_2

    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "Exception in getImagePosition "

    invoke-static {v3, p0, p1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xc8

    :cond_2
    :goto_2
    new-instance p0, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;

    invoke-direct {p0}, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/bixby/service/sdk/common/image/detectboundary/ImageBoundaryDetectorResult;->setResultCode(I)V

    return-object p0
.end method
