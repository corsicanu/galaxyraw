.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Sequence;
.super Ljava/lang/Object;
.source "ProcessRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data_T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract errorRequest(ILjava/lang/String;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "reason"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "TData_T;>;"
        }
    .end annotation
.end method

.method public abstract get(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)Ljava/lang/Object;
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
            "Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getCurrentProcessCount()I
.end method

.method public abstract getCurrentSequenceCount()I
.end method

.method public abstract getError()I
.end method

.method public abstract getErrorReason()Ljava/lang/String;
.end method

.method public abstract getExtraInfo()I
.end method

.method public abstract getId()I
.end method

.method public abstract getMode()I
.end method

.method public abstract getProcessType()Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;
.end method

.method public abstract getResultFormat()I
.end method

.method public abstract getResultSize()Landroid/util/Size;
.end method

.method public abstract getTotalProcessCount()I
.end method

.method public abstract getTotalSequenceCount()I
.end method

.method public abstract isDone()Z
.end method

.method public abstract isError()Z
.end method

.method public abstract isInvalid()Z
.end method

.method public abstract needDepth()Z
.end method

.method public abstract nextRequest(Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;Ljava/lang/Object;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "usage",
            "data",
            "camCapability"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$Usage;",
            "TData_T;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamCapability;",
            ")",
            "Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest<",
            "TData_T;>;"
        }
    .end annotation
.end method

.method public abstract remove(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract set(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key;Ljava/lang/Object;)V
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
            "Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle$Key<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method
