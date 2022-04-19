.class public final Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$ThumbnailCallbackHelper;
.super Ljava/lang/Object;
.source "CallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThumbnailCallbackHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onDraftThumbnailTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userTag",
            "thumbnailCallback",
            "draftThumbnailData",
            "camDevice"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "ThumbnailCallbackHelper onDraftThumbnailTaken - ThumbnailCallback(%s), draftThumbnailData %s, camDevice %s"

    invoke-static {p0, v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "ThumbnailCallbackHelper onDraftThumbnailTaken - unsupported thumbnailFormat %d"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper;->access$100(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;-><init>(ILandroid/util/Size;)V

    invoke-interface {p1, p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;->onDraftThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onDraftThumbnailTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Ljava/nio/ByteBuffer;ILandroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userTag",
            "thumbnailCallback",
            "draftThumbnailData",
            "format",
            "size",
            "camDevice"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const-string v3, "ThumbnailCallbackHelper onDraftThumbnailTaken - thumbnailCallback(%s), camDevice: %s"

    invoke-static {p0, v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    const/16 v0, 0x23

    if-eq p3, v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "ThumbnailCallbackHelper onDraftThumbnailTaken - unsupported thumbnailFormat %d"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;-><init>(ILandroid/util/Size;)V

    invoke-interface {p1, p2, p0, p5}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;->onDraftThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onThumbnailTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userTag",
            "thumbnailCallback",
            "thumbnailData",
            "camDevice"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "ThumbnailCallbackHelper onThumbnailTaken - ThumbnailCallback(%s), thumbnailData %s, camDevice %s"

    invoke-static {p0, v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->getImageInfo()Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x100

    if-eq v3, v4, :cond_0

    const v4, 0x48454946

    if-eq v3, v4, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "ThumbnailCallbackHelper onThumbnailTaken - unsupported thumbnailFormat %d"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper;->access$000(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;-><init>(ILandroid/util/Size;)V

    invoke-interface {p1, p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;->onThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper;->access$100(Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getFormat()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;-><init>(ILandroid/util/Size;)V

    invoke-interface {p1, p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;->onThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static onThumbnailTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Ljava/nio/ByteBuffer;ILandroid/util/Size;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userTag",
            "thumbnailCallback",
            "thumbnailData",
            "format",
            "size",
            "camDevice"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const-string v3, "ThumbnailCallbackHelper onThumbnailTaken - thumbnailCallback(%s), camDevice %s"

    invoke-static {p0, v3, v0}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->i(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    const/16 v0, 0x23

    if-eq p3, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p3, v0, :cond_0

    const/16 v0, 0x100

    if-eq p3, v0, :cond_0

    const v0, 0x48454946

    if-eq p3, v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "ThumbnailCallbackHelper onThumbnailTaken - unsupported thumbnailFormat %d"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/CLog;->e(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;-><init>(ILandroid/util/Size;)V

    invoke-interface {p1, p2, p0, p5}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;->onThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback$DataInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_1
    :goto_0
    return-void
.end method
