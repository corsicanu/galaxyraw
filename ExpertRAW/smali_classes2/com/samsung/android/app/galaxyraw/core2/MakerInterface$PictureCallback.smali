.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PictureCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback$ErrorReason;
    }
.end annotation


# static fields
.field public static final ERROR_REASON_ERROR:I = 0x0

.field public static final ERROR_REASON_FLUSHED:I = 0x1


# virtual methods
.method public abstract onDraftPostProcessingPictureTaken(Landroid/net/Uri;Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resultUri",
            "resultFile",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onError(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reason",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "info",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onPostProcessingError(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onPostProcessingFrameCollectionCompleted(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onPostProcessingFrameCollectionStopped(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onPostProcessingPictureTaken(Ljava/io/File;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultFile",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onProcessingFrameCollected(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onProcessingPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/container/PictureDataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pictureData",
            "info",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onProgress(ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onShutter(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "camDevice"
        }
    .end annotation
.end method
