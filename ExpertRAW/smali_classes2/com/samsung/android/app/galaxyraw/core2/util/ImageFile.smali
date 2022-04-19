.class public Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;
.super Ljava/io/File;
.source "ImageFile.java"


# instance fields
.field private final mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;


# direct methods
.method protected constructor <init>(Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "imageInfo"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "child",
            "imageInfo"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pathname",
            "imageInfo"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "child",
            "imageInfo"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "imageInfo"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-direct {p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    :cond_0
    return-void
.end method

.method public static wrap(Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "imageInfo"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ConditionChecker;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;-><init>(Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    return-object v0
.end method


# virtual methods
.method public getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    return-object p0
.end method

.method public setImageInfo(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageInfo"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->clear()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->copyFrom(Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-super {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/ImageFile;->mImageInfo:Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "%s - path(%s), size(%s), format(%s), timestamp(%d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
