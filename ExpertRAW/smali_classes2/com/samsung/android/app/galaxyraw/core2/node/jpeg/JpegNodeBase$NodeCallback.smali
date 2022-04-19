.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;
.super Ljava/lang/Object;
.source "JpegNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NodeCallback"
.end annotation


# virtual methods
.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract onProgress(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation
.end method

.method public abstract onThumbnail(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ILandroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format",
            "size"
        }
    .end annotation
.end method
