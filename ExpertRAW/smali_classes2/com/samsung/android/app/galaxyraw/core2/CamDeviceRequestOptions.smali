.class public Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;
.super Ljava/lang/Object;
.source "CamDeviceRequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;


# instance fields
.field private final mIsPicDepthRequested:Z

.field private final mIsPreviewRequested:Z

.field private final mIsThumbnailRequested:Z

.field private final mOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedPictureSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    const-class v1, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;ZLjava/util/Set;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "options",
            "isPreviewRequested",
            "requestedPictureSet",
            "isThumbnailRequested",
            "isPicDepthRequested"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mOptions:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPreviewRequested:Z

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mRequestedPictureSet:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsThumbnailRequested:Z

    iput-boolean p5, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPicDepthRequested:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;ZLjava/util/Set;ZZLcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;-><init>(Ljava/util/Map;ZLjava/util/Set;ZZ)V

    return-void
.end method

.method static synthetic access$200()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    return-object v0
.end method

.method public static createRequestOptions()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;-><init>(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$1;)V

    return-object v0
.end method

.method private static getPhysicalId(Ljava/util/List;Landroid/view/Surface;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputConfigList",
            "surface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/view/Surface;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$addTarget$1(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Landroid/view/Surface;)V
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->getPhysicalId(Ljava/util/List;Landroid/view/Surface;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$y4KzOUyXIgimVU-HcY5WwTeWNmM;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$y4KzOUyXIgimVU-HcY5WwTeWNmM;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$addTarget$2(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V
    .locals 1

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->getPhysicalId(Ljava/util/List;Landroid/view/Surface;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$y4KzOUyXIgimVU-HcY5WwTeWNmM;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$y4KzOUyXIgimVU-HcY5WwTeWNmM;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$addTarget$3(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V
    .locals 0

    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p4, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$3YfZAOVUt94m-9jWRToj97-HGGg;

    invoke-direct {p4, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$3YfZAOVUt94m-9jWRToj97-HGGg;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p0, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$removeTarget$4(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic lambda$removeTarget$5(Ljava/util/Map;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$XJD9LloaaQKxdty5JZz2s0mMDUQ;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$XJD9LloaaQKxdty5JZz2s0mMDUQ;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$toString$0(Ljava/lang/StringBuilder;Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ", %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addTarget(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "builderMap",
            "cameraId",
            "outputConfigList",
            "previewSurface",
            "picImageReaderMap",
            "thumbImageReader",
            "picDepthImageReader"
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
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils$NumComparator;

    invoke-direct {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils$NumComparator;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPreviewRequested:Z

    if-eqz v2, :cond_0

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$yoiqgknsZdHaQTc6uIo5TfemWY4;

    invoke-direct {v2, v0, p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$yoiqgknsZdHaQTc6uIo5TfemWY4;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p4, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mRequestedPictureSet:Ljava/util/Set;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$dyGuhsY7s3EHdB5ke8c9tSgPCzA;

    invoke-direct {v2, p5, v0, p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$dyGuhsY7s3EHdB5ke8c9tSgPCzA;-><init>(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)V

    invoke-interface {p4, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-boolean p4, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsThumbnailRequested:Z

    if-eqz p4, :cond_1

    invoke-virtual {p6}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p6}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->getPhysicalId(Ljava/util/List;Landroid/view/Surface;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p4

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$y4KzOUyXIgimVU-HcY5WwTeWNmM;

    invoke-direct {p5, v1}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$y4KzOUyXIgimVU-HcY5WwTeWNmM;-><init>(Ljava/util/Set;)V

    invoke-virtual {p4, p5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :try_start_2
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPicDepthRequested:Z

    if-eqz p0, :cond_2

    invoke-virtual {p7}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p7}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->getPhysicalId(Ljava/util/List;Landroid/view/Surface;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$y4KzOUyXIgimVU-HcY5WwTeWNmM;

    invoke-direct {p3, v1}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$y4KzOUyXIgimVU-HcY5WwTeWNmM;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    move-object p3, p4

    goto :goto_0

    :cond_3
    move-object p3, v1

    :goto_0
    invoke-direct {p0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->findBuilder(Ljava/util/Map;Landroid/util/Pair;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    :cond_4
    new-instance p1, Landroid/util/Pair;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    move-object v1, p4

    :cond_5
    invoke-direct {p1, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_REQUEST_BUILDER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    throw p0

    :catch_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PICTURE_DEPTH_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_THUMBNAIL_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    throw p0

    :catch_2
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PICTURE_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    throw p0
.end method

.method public getRequestedPictureTargetCnt()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mRequestedPictureSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public getRequestedTargetCnt()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->getRequestedPictureTargetCnt()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsThumbnailRequested:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPicDepthRequested:Z

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public isPicDepthRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPicDepthRequested:Z

    return p0
.end method

.method public isPicTypeRequested(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureRequestType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mRequestedPictureSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPreviewRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPreviewRequested:Z

    return p0
.end method

.method public isThumbnailRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsThumbnailRequested:Z

    return p0
.end method

.method public removeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "previewSurface",
            "picImageReaderMap",
            "thumbImageReader",
            "picDepthImageReader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;",
            "Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPreviewRequested:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mRequestedPictureSet:Ljava/util/Set;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$CZC7d-Dhf6NPrDz3l60hO7TyHGA;

    invoke-direct {v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$CZC7d-Dhf6NPrDz3l60hO7TyHGA;-><init>(Ljava/util/Map;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsThumbnailRequested:Z

    if-eqz p2, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :try_start_2
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPicDepthRequested:Z

    if-eqz p0, :cond_2

    invoke-virtual {p5}, Lcom/samsung/android/app/galaxyraw/core2/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catch_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PICTURE_DEPTH_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    throw p0

    :catch_1
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_THUMBNAIL_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    throw p0

    :catch_2
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;->NO_PICTURE_IMAGE_READER:Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException$Type;)V

    throw p0
.end method

.method public submitOptions(Landroid/util/Pair;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mOptions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backup oldOption key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->v(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureRequest;->set(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mOptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mOptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    array-length v8, v4

    sub-int/2addr v8, v7

    aget-object v4, v4, v8

    aput-object v4, v3, v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    const-string v2, "(%s : %s), "

    invoke-static {v5, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    array-length v9, v4

    sub-int/2addr v9, v7

    aget-object v4, v4, v9

    aput-object v4, v8, v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/core2/util/StringUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v3

    const-string v2, "(%s : %s[0x%X]), "

    invoke-static {v5, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPreviewRequested:Z

    if-eqz v1, :cond_3

    const-string v1, ", PREV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mRequestedPictureSet:Ljava/util/Set;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$3xeEhtXpkn0fQ15CRvEkWctNd9I;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/galaxyraw/core2/-$$Lambda$CamDeviceRequestOptions$3xeEhtXpkn0fQ15CRvEkWctNd9I;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsThumbnailRequested:Z

    if-eqz v1, :cond_4

    const-string v1, ", THUMB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->mIsPicDepthRequested:Z

    if-eqz p0, :cond_5

    const-string p0, ", PIC_DEPTH"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
