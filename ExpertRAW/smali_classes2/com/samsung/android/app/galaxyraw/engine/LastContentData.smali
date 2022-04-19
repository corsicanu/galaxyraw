.class Lcom/samsung/android/app/galaxyraw/engine/LastContentData;
.super Ljava/lang/Object;
.source "LastContentData.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LastContentData"


# instance fields
.field private mContentBurstGroupId:I

.field private mContentType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

.field private mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

.field private mDateTaken:J

.field private mFilePath:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mOrientation:I

.field private mPictureData:[B

.field private mThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;-><init>(Lcom/samsung/android/app/galaxyraw/engine/LastContentData;Lcom/samsung/android/app/galaxyraw/engine/LastContentData$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentBurstGroupId:I

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mFilePath:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mPictureData:[B

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mThumbnail:Landroid/graphics/Bitmap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentBurstGroupId:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mOrientation:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mDateTaken:J

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method clearPictureData()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mPictureData:[B

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getContentBurstGroupId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentBurstGroupId:I

    return p0
.end method

.method public getContentType()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    return-object p0
.end method

.method public getContentUriForReading()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mContentUriForReading:Landroid/net/Uri;

    return-object p0
.end method

.method public getContentUriForWriting()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mContentUriForWriting:Landroid/net/Uri;

    return-object p0
.end method

.method public getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mDateTaken:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mOrientation:I

    return p0
.end method

.method public getPictureData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mPictureData:[B

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRawContentUriForReading()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mRawContentUriForReading:Landroid/net/Uri;

    return-object p0
.end method

.method public getRawContentUriForWriting()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mRawContentUriForWriting:Landroid/net/Uri;

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mThumbnail:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setContentBurstGroupId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "burstGroupId"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentBurstGroupId:I

    return-void
.end method

.method setContentType(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentType:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    return-void
.end method

.method setContentUriForReading(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mContentUriForReading:Landroid/net/Uri;

    return-void
.end method

.method setContentUriForWriting(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mContentUriForWriting:Landroid/net/Uri;

    return-void
.end method

.method setDateTaken(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mDateTaken:J

    return-void
.end method

.method setFilePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method protected setOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mOrientation:I

    return-void
.end method

.method setPictureData([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pictureData"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mPictureData:[B

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setRawContentUriForReading(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mRawContentUriForReading:Landroid/net/Uri;

    return-void
.end method

.method setRawContentUriForWriting(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mContentUriSet:Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mRawContentUriForWriting:Landroid/net/Uri;

    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnail"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->mThumbnail:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;I)V
    .locals 0
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
            "pictureData",
            "filePath",
            "dateTaken",
            "orientation",
            "contentType",
            "burstGroupId"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setDateTaken(J)V

    invoke-virtual {p0, p5}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setOrientation(I)V

    invoke-virtual {p0, p6}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentType(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;)V

    invoke-virtual {p0, p7}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentBurstGroupId(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setPictureData([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "LastContentData"

    const-string p1, "setImageContentData : Out of memory while creating bitmap."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
