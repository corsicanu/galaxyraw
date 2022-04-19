.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback;
.super Ljava/lang/Object;
.source "MakerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/MakerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreviewCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;
    }
.end annotation


# virtual methods
.method public abstract onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PreviewCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewData",
            "info",
            "camDevice"
        }
    .end annotation
.end method
