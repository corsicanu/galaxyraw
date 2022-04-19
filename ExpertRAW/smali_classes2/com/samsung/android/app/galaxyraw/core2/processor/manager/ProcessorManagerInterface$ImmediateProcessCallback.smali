.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;
.super Ljava/lang/Object;
.source "ProcessorManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImmediateProcessCallback"
.end annotation


# virtual methods
.method public abstract onProcessCompleted(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessResult<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)V"
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
