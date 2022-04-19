.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$OutFocusEventCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutFocusEventCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onCaptureProgress(IILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "maxProgress",
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
            "error",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onOutFocusCaptureResult(Ljava/io/File;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resultFile",
            "errorCode",
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
