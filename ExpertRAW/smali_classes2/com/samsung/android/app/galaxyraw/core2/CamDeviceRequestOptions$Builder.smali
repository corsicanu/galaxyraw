.class public Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;
.super Ljava/lang/Object;
.source "CamDeviceRequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIsPicDepthRequested:Z

.field private mIsPreviewRequested:Z

.field private mIsThumbnailRequested:Z

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

.field private mRequestedPictureSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mOptions:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsPreviewRequested:Z

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mRequestedPictureSet:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsThumbnailRequested:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsPicDepthRequested:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v7, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mOptions:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsPreviewRequested:Z

    new-instance v0, Ljava/util/TreeSet;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mRequestedPictureSet:Ljava/util/Set;

    invoke-direct {v0, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsThumbnailRequested:Z

    iget-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsPicDepthRequested:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;-><init>(Ljava/util/Map;ZLjava/util/Set;ZZLcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->clearStreamOption()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearStreamOption()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsPreviewRequested:Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mRequestedPictureSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsThumbnailRequested:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsPicDepthRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mOptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPicDepth(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPicDepthRequested"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsPicDepthRequested:Z

    return-void
.end method

.method public setPicture(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pictureRequestType",
            "enable"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mRequestedPictureSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mRequestedPictureSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPictureRequestOption(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "picType",
            "picFormat",
            "enable"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;->getPictureRequestType(Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo$PicFormat;)Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;->access$200()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string p1, "No pictureRequestType for picType: %s, picFormat: %s"

    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->setPicture(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$PictureRequestType;Z)V

    return-void
.end method

.method public setPreview(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPreviewRequested"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsPreviewRequested:Z

    return-void
.end method

.method public setThumbnail(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isThumbnailRequested"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions$Builder;->mIsThumbnailRequested:Z

    return-void
.end method
