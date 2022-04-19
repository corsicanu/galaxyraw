.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewSnapShotCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreviewSnapShotCallback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onPreviewSnapShotTaken(Ljava/nio/ByteBuffer;Landroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewSnapData",
            "previewSnapSize",
            "camDevice"
        }
    .end annotation
.end method
