.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$StateCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateCallback"
.end annotation


# virtual methods
.method public abstract onCamDeviceConnectFailed(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maker",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onCamDeviceConnected(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maker",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onCamDeviceDisconnected(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maker",
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onCamDeviceReady(Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maker",
            "camDevice"
        }
    .end annotation
.end method
