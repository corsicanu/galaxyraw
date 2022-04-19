.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LatestMedia"
.end annotation


# static fields
.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1


# virtual methods
.method public abstract getCursorForQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "Projection",
            "Media_Projection",
            "includeVideo"
        }
    .end annotation
.end method

.method public abstract getDateTime()J
.end method

.method public abstract getGroupType()I
.end method

.method public abstract getImagePath()Ljava/lang/String;
.end method

.method public abstract getImageThumbnail()Landroid/graphics/Bitmap;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract getVideoThumbnail()Landroid/graphics/Bitmap;
.end method

.method public abstract isImageType()Z
.end method
