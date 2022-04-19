.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;
.super Ljava/lang/Object;
.source "CamDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreviewCallback"
.end annotation


# virtual methods
.method public abstract onPreviewFrame(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewData",
            "camCapability"
        }
    .end annotation
.end method
