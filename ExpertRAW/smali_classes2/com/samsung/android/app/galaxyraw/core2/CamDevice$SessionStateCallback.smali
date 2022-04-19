.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;
.super Ljava/lang/Object;
.source "CamDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionStateCallback"
.end annotation


# virtual methods
.method public abstract onConfigureFailed()V
.end method

.method public abstract onConfigured()V
.end method

.method public abstract onDeviceClosed()V
.end method

.method public abstract onDisconnected()V
.end method

.method public abstract onReady()V
.end method

.method public abstract onSurfacePrepared(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation
.end method
