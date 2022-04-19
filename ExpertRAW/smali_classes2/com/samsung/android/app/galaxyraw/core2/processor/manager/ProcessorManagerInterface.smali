.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface;
.super Ljava/lang/Object;
.source "ProcessorManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;
    }
.end annotation


# virtual methods
.method public abstract deinitialize()V
.end method

.method public abstract deinitializePPP()V
.end method

.method public abstract getNumberOfPostProcessorSequenceStacked()I
.end method

.method public abstract initialize(Lcom/samsung/android/app/galaxyraw/core2/CamCapability;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camCapability",
            "context"
        }
    .end annotation
.end method

.method public abstract initializePPP(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract isPPPInitialized()Z
.end method

.method public abstract pausePPP()V
.end method

.method public abstract process(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resumePPP()V
.end method

.method public abstract setImmediateProcessCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$ImmediateProcessCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "immediateProcessCallback"
        }
    .end annotation
.end method

.method public abstract setPPPStatusCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pppStatusCallback"
        }
    .end annotation
.end method

.method public abstract setPostProcessCallback(Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PostProcessCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postProcessCallback"
        }
    .end annotation
.end method
