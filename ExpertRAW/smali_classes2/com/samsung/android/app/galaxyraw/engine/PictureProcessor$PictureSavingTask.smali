.class Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;
.super Ljava/lang/Object;
.source "PictureProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureSavingTask"
.end annotation


# instance fields
.field private mBurstCaptureCount:I

.field private mBurstCaptureGroupId:I

.field private final mDateTaken:J

.field private final mDirectory:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private final mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

.field private final mIsMotionPhotoEnabled:Z

.field private mOrientation:I

.field private mPicture:Ljava/nio/ByteBuffer;

.field private final mStorage:I

.field private final mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;Ljava/lang/String;Ljava/lang/String;JILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "directory",
            "fileName",
            "dateTaken",
            "orientation",
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p7}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getPictureSavingStorage(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)I

    move-result p7

    iput p7, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "/"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentUriForWriting()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;Ljava/nio/ByteBuffer;JIIILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "picture",
            "dateTaken",
            "orientation",
            "groupId",
            "captureCount",
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    iput p6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    iput p7, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getPictureSavingStorage(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    sget-object p6, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->BURST:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    if-ne p8, p6, :cond_0

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    move-object v0, p1

    move-object v1, p2

    move-object v2, p8

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->createFileNameForBurstCapture(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;JI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->createFileName(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;Ljava/nio/ByteBuffer;JILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "picture",
            "dateTaken",
            "orientation",
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p6}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getPictureSavingStorage(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-virtual {p1, p2, p6, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->createFileName(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;Ljava/nio/ByteBuffer;JILcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "picture",
            "dateTaken",
            "orientation",
            "type",
            "info"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p6}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getPictureSavingStorage(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-direct {p0, p6}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->getDirectoryName(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-virtual {p1, p2, p6, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->createFileName(Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    return-void
.end method

.method private getDirectoryName(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->SMART_SCAN:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMimeType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported picture saving type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "image/gif"

    return-object p0

    :cond_2
    const-string p0, "image/x-adobe-dng"

    return-object p0

    :cond_3
    const-string p0, "image/heic"

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "image/jpeg"

    return-object p0
.end method

.method private getWideLensCorrectionSefData()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    const/4 v1, 0x0

    const-string v2, "PictureProcessor"

    if-nez v0, :cond_0

    const-string p0, "getWideLensCorrectionSefData : Returned because PictureDataInfo is invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_SWLENS_DISTORTION_CORRECTION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    const-string p0, "getWideLensCorrectionSefData : Returned because featureArray is invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v5, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mInfo:Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;->getProcessedOption()I

    move-result v6

    sget-object v7, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, v7}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/Capability;->getSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getWideLensCorrectionSefData : featureArray="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", wideLensCorrection="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", deviceId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sensorName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", processedOption="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    aget-object v8, v0, v7

    invoke-static {p0, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    if-ne v5, v7, :cond_4

    and-int/lit8 p0, v6, 0x1

    if-ne p0, v7, :cond_4

    return-object v1

    :cond_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4, p0}, Lcom/samsung/android/app/galaxyraw/core2/local/vendorkey/SemCaptureResult;->get(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWideLensCorrectionSefData : sefData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private initBurstCaptureData()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_0
    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%03d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->getFileExtension(Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/Util;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_display_name"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "datetaken"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v7, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "date_modified"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "media_type"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v7, "mime_type"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v7, "orientation"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "_data"

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "burst_group_id"

    invoke-virtual {v6, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v3, 0x9e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "sef_file_type"

    invoke-virtual {v6, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "group_type"

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;ILandroid/content/ContentValues;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private insertBurstCaptureDataToSef()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$800(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$700(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "burst_group_id"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$800(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "group_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;->addSefInfoForBurstShot(Ljava/util/List;I)V

    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;->addSefInfoForUTC(Ljava/util/List;J)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;->addSefInfoForMobileCountryCode(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;->insertSefDataList(Ljava/nio/ByteBuffer;Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private insertSefDataToBuffer()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;->addSefInfoForUTC(Ljava/util/List;J)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;->addSefInfoForMobileCountryCode(Landroid/content/Context;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->getWideLensCorrectionSefData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/16 v3, 0xb60

    const-string v4, "UltraWide_PhotoEditor_Data"

    invoke-direct {v2, v4, v1, v3}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils$SefDataInfo;-><init>(Ljava/lang/String;[BI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/SemExtendedFormatUtils;->insertSefDataList(Ljava/nio/ByteBuffer;Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private insertToDb(Landroid/content/ContentValues;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "InsertToDb"

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture - InsertToDb : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {v2, p1, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/DatabaseUtil;->insertToDb(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object p1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->clear()V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->RAW:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    if-ne v5, v6, :cond_0

    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setRawContentUriForReading(Landroid/net/Uri;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setRawContentUriForWriting(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForReading(Landroid/net/Uri;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForWriting(Landroid/net/Uri;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    if-nez p0, :cond_1

    const-string p0, "PictureProcessor"

    const-string p1, "insertToDb : fileUri is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Capture - InsertToDb : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "] ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private insertToDbForBurstCapture()V
    .locals 8

    const-string v0, "InsertToDbForBurstCapture"

    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - InsertToDbForBurstCapture : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GalaxyRaw/CameraPerformance"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Landroid/content/ContentValues;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    new-instance v6, Landroid/content/ContentValues;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$800(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mStorage:I

    invoke-static {v0, v3, v5}, Lcom/samsung/android/app/galaxyraw/util/DatabaseUtil;->insertToDbForBurstCapture(Landroid/content/Context;[Landroid/content/ContentValues;I)[Landroid/util/Pair;

    move-result-object v0

    move v3, v4

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;

    aget-object v6, v0, v3

    invoke-static {v5, v6}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$900(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;Landroid/util/Pair;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    aget-object v3, v0, v4

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForReading(Landroid/net/Uri;)V

    aget-object v0, v0, v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->setContentUriForWriting(Landroid/net/Uri;)V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - InsertToDbForBurstCapture : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private isMotionPhotoImage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mIsMotionPhotoEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private saveBurstImageToUri()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->makeDirectory(Ljava/lang/String;)Z

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$1100(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->writeImageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;

    invoke-static {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$1200(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;Z)V

    goto :goto_0

    :cond_1
    const-string p0, "PictureProcessor"

    const-string v0, "saveBurstImageToUri : failed to writing image to file."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private saveImage()Z
    .locals 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->insertToDb(Landroid/content/ContentValues;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "saveImage"

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture - SaveImage : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->insertSefDataToBuffer()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->makeDirectory(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->writeImage()Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Capture - SaveImage : End["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->clearPictureData()V

    if-nez v2, :cond_0

    const-string p0, "PictureProcessor"

    const-string v0, "SaveImage : failed to writing image to file."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->updateToDb(Landroid/content/ContentValues;)V

    const/4 p0, 0x1

    return p0
.end method

.method private saveRawImage()Z
    .locals 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->insertToDb(Landroid/content/ContentValues;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture - SaveRawImage : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->makeDirectory(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->writeImage()Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Capture - SaveRawImage : End["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    const-string p0, "PictureProcessor"

    const-string v0, "saveRawImage : failed to writing image to file."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->updateToDbForRawImage(Landroid/content/ContentValues;)V

    const/4 p0, 0x1

    return p0
.end method

.method private saveSmartScanImage()Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - SaveSmartScanImage : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GalaxyRaw/CameraPerformance"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->makeDirectory(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->writeImage(Ljava/lang/String;Ljava/lang/String;JLjava/nio/ByteBuffer;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/util/ExifUtil;->addLocationExif(Ljava/lang/String;Landroid/location/Location;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capture - SaveSmartScanImage : End["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->clearPictureData()V

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string v0, "saveSmartScanImage : failed to writing image to file."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private setContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date_modified"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->GIF:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getAgifBurstCaptureController()Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/AgifCaptureController;->prepareDbUpdate(Landroid/content/ContentValues;)V

    :cond_0
    return-void
.end method

.method private updateToDb(Landroid/content/ContentValues;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const-string v0, "PictureProcessor"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "UpdateToDb"

    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capture - UpdateToDb : Start["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GalaxyRaw/CameraPerformance"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    :try_start_1
    const-string v6, "Input stream is null, return."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :cond_1
    :try_start_3
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, v3}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v7, "Orientation"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/ExifUtil;->convertExifOrientationToMediaOrientation(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mOrientation:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateToDb : Could not read exif tags - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->setContentValues(Landroid/content/ContentValues;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->isMotionPhotoImage()Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_7
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    const-string v7, "rw"

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getMotionPhotoController()Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/samsung/android/app/galaxyraw/engine/MotionPhotoController;->store(Landroid/content/ContentValues;Landroid/os/ParcelFileDescriptor;)Landroid/net/Uri;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catchall_2
    move-exception v6

    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    :try_start_b
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v6
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    const-string v3, "updateToDb : IOException"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getContentUriForReading()Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, v3, p0, p1}, Lcom/samsung/android/app/galaxyraw/util/DatabaseUtil;->updateToDb(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Capture - UpdateToDb : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "] ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private updateToDbForBurstCapture()V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "UpdateToDbForBurstCapture"

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture - UpdateToDbForBurstCapture : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/util/Pair;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ContentValues;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;

    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$1300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$1100(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v6

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$1400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    new-instance v9, Landroid/content/ContentValues;

    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$800(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)Landroid/content/ContentValues;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    aput-object v9, v5, v6

    :cond_0
    invoke-static {v8}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;->access$1500(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$BurstCaptureData;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v5, v7}, Lcom/samsung/android/app/galaxyraw/util/DatabaseUtil;->updateToDbForBurstCapture(Landroid/content/Context;[Landroid/util/Pair;[Landroid/content/ContentValues;I)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$BH55jJ9gILnzFx1EEI6twsiiKds;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$BH55jJ9gILnzFx1EEI6twsiiKds;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture - UpdateToDbForBurstCapture : End["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "] ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private updateToDbForRawImage(Landroid/content/ContentValues;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const-string v0, "Capture - updateToDbForRawImage : End["

    const-string v1, "PictureProcessor"

    const-string v2, "UpdateToDbForRawImage"

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture - UpdateToDbForRawImage : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->setContentValues(Landroid/content/ContentValues;)V

    :try_start_0
    const-string v2, "DB update"

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v2, "updateToDbForRawImage : DB update - start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;->getRawContentUriForReading()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v2, v5, v6, p1}, Lcom/samsung/android/app/galaxyraw/util/DatabaseUtil;->updateToDb(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string p1, "updateToDbForRawImage : DB update - end"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$1600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$AQLQh_zdpWDa-G7pw38yYtCAz1o;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$AQLQh_zdpWDa-G7pw38yYtCAz1o;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p0, "updateToDbForRawImage : ContentResolver update failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    goto :goto_1

    :catch_1
    :try_start_2
    const-string p1, "updateToDbForRawImage : Not enough space in database"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    const p1, 0x7f12030c

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->makeText(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;II)Lcom/samsung/android/app/galaxyraw/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/widget/CameraToast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    throw p0
.end method

.method private writeImage()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$1000(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->writeImageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public synthetic lambda$run$0$PictureProcessor$PictureSavingTask()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onPictureSavingFailed()V

    return-void
.end method

.method public synthetic lambda$run$1$PictureProcessor$PictureSavingTask(Lcom/samsung/android/app/galaxyraw/engine/LastContentData;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onPictureSaved(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;Z)V

    const-string p0, "TakePictureSequence"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Capture - TakePictureSequence : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalaxyRaw/CameraPerformance"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$updateToDbForBurstCapture$2$PictureProcessor$PictureSavingTask()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onPictureProcessingCompleted()V

    return-void
.end method

.method public synthetic lambda$updateToDbForRawImage$3$PictureProcessor$PictureSavingTask()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$1600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;->onDbUpdateCompleted(Ljava/io/File;)V

    return-void
.end method

.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$500(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->clearPictureData()V

    move v9, v2

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mType:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_3

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->saveSmartScanImage()Z

    move-result v1

    move v3, v2

    :goto_1
    move v2, v1

    goto :goto_3

    :pswitch_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->updateToDb(Landroid/content/ContentValues;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->saveRawImage()Z

    :goto_2
    move v3, v2

    goto :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$600(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->updateToDbForBurstCapture()V

    goto :goto_2

    :pswitch_4
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureCount:I

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->initBurstCaptureData()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->insertToDbForBurstCapture()V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->insertBurstCaptureDataToSef()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->saveBurstImageToUri()Z

    return-void

    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->updateToDb(Landroid/content/ContentValues;)V

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->saveImage()Z

    move-result v1

    goto :goto_1

    :goto_3
    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mUri:Landroid/net/Uri;

    invoke-static {v1, v4}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendNewPictureBroadcast(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_4
    move v9, v3

    :goto_4
    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$1nGDexkNl6paz8ZykK2NxQA9QJ4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$1nGDexkNl6paz8ZykK2NxQA9QJ4;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mPicture:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mFilePath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mDateTaken:J

    iget v6, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mOrientation:I

    sget-object v7, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;

    iget v8, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->mBurstCaptureGroupId:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData;->updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$snC-OY-6igAOwvrZ5SrBgXrnyPA;

    invoke-direct {v2, p0, v0, v9}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$snC-OY-6igAOwvrZ5SrBgXrnyPA;-><init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;Lcom/samsung/android/app/galaxyraw/engine/LastContentData;Z)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
