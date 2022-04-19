.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessCallback;
.super Ljava/lang/Object;
.source "ProcessCallback.java"


# virtual methods
.method public abstract onDraftPictureSaved(ILandroid/net/Uri;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sequenceId",
            "uri",
            "resultFile"
        }
    .end annotation
.end method

.method public abstract onProcessCompleted(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processResult",
            "resultFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onProcessError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation
.end method

.method public abstract onProcessProgress(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "processResult",
            "progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onRequestCollectionCompleted(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation
.end method

.method public abstract onRequestCollectionStopped(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceId"
        }
    .end annotation
.end method
