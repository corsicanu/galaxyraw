.class Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;
.super Ljava/lang/Object;
.source "PictureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;,
        Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;,
        Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PictureProcessor"


# instance fields
.field private final mBurstCaptureDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mDbUpdateCompleteListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mLastFileNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mBurstCaptureDataList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCameraContext()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mThumbnailProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mDbUpdateCompleteListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mBurstCaptureDataList:Ljava/util/List;

    return-object p0
.end method

.method private addLastFileName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getFileNameOfDateTaken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->getFileNameOfDateTaken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getFileExtension(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported picture saving type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, ".gif"

    return-object p0

    :pswitch_1
    const-string p0, ".dng"

    return-object p0

    :pswitch_2
    const-string p0, ".heic"

    return-object p0

    :pswitch_3
    const-string p0, ".jpg"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private regenerateFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "directory",
            "fileName"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v3, p2

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v3

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New file name created : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PictureProcessor"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    move v6, v3

    move-object v3, v0

    move v0, v6

    goto :goto_0
.end method

.method private regenerateFileNameForBurst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "directory",
            "fileName"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x5f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, 0x0

    move-object v4, p2

    move v5, v3

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mLastFileNameList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v4

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New burst file name created: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PictureProcessor"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v5, v4

    move-object v4, v2

    move-object v2, v6

    goto :goto_0
.end method


# virtual methods
.method createFileName(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "directory",
            "type",
            "dateTaken"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 p0, 0x7

    if-ne v0, p0, :cond_0

    const-string p0, "smart_scan_temp_image"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not supported picture saving type : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->createFileName(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getFileExtension(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->regenerateFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->addLastFileName(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method createFileNameForBurstCapture(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;JI)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "directory",
            "type",
            "dateTaken",
            "burstCaptureCount"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->createFileName(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 v0, 0x0

    aput-object p5, p4, v0

    const-string p5, "%03d"

    invoke-static {p5, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getFileExtension(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->regenerateFileNameForBurst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->addLastFileName(Ljava/lang/String;)V

    return-object p1
.end method

.method createFileNameForInsertToDb(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "dateTaken"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getPictureSavingStorage(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->createFileName(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getActiveCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getPictureSavingStorage(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->getRecordingStorage()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported picture saving type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0

    :pswitch_1
    return v1

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRawCaptureEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getQueuedTaskCount()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getThumbnailProcessor()Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mThumbnailProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    return-object p0
.end method

.method initialize()V
    .locals 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mThumbnailProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;)V

    return-void
.end method

.method insertToDb(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "PictureProcessor"

    const-string v1, "insertToDb : start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->createFileNameForInsertToDb(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getPictureSavingStorage(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2, v3, v1, p1}, Lcom/samsung/android/app/galaxyraw/util/DatabaseUtil;->insertToDb(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->clear()V

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForReading(Landroid/net/Uri;)V

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForWriting(Landroid/net/Uri;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentType(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setFilePath(Ljava/lang/String;)V

    const-string p0, "insertToDb : end"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method process(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "directory",
            "fileName",
            "dateTaken",
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "process : cannot execute."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v9, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result v7

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;Ljava/lang/String;Ljava/lang/String;JILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;JIIILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "picture",
            "dateTaken",
            "orientation",
            "groupId",
            "captureCount",
            "type"
        }
    .end annotation

    move-object v1, p0

    iget-object v9, v1, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v9, :cond_0

    const-string v0, "PictureProcessor"

    const-string v1, "process : cannot execute."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v10, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;Ljava/nio/ByteBuffer;JIIILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;JLcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "picture",
            "dateTaken",
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "process : cannot execute."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v8, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result v6

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;Ljava/nio/ByteBuffer;JILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;JLcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "picture",
            "dateTaken",
            "type",
            "info"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "process : cannot execute."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v9, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getOrientationForCapture()I

    move-result v6

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;Ljava/nio/ByteBuffer;JILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method processPicture(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mEngine:Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/util/Util;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPicture exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    move-wide v6, v0

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->process(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    return-void
.end method

.method release()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "PictureProcessor"

    if-nez v0, :cond_0

    const-string p0, "release : returned because executor has not been initialized."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "PictureSavingTask did not complete until 60 sec timeout."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "release : awaitTermination interrupted."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mThumbnailProcessor:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;->access$200(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$ThumbnailProcessor;)V

    return-void
.end method

.method setDbUpdateCompleteListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mDbUpdateCompleteListener:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;

    return-void
.end method

.method updateBurstPictureDB(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "updateBurstPictureDB : cannot execute."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v10, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->BURST_DB_UPDATE_ONLY:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    move-object v1, v10

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;Ljava/nio/ByteBuffer;JIIILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
