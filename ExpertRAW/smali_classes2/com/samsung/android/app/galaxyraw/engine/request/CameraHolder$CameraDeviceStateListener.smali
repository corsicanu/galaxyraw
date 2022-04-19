.class public interface abstract Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder$CameraDeviceStateListener;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraDeviceStateListener"
.end annotation


# virtual methods
.method public abstract onClosed()V
.end method

.method public abstract onDisconnected()V
.end method

.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation
.end method

.method public abstract onOpened()V
.end method
