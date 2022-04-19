.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;
    }
.end annotation


# virtual methods
.method public abstract getContentBurstGroupId()I
.end method

.method public abstract getContentType()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData$Type;
.end method

.method public abstract getContentUriForReading()Landroid/net/Uri;
.end method

.method public abstract getContentUriForWriting()Landroid/net/Uri;
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getPictureData()[B
.end method

.method public abstract getRawContentUriForReading()Landroid/net/Uri;
.end method

.method public abstract getRawContentUriForWriting()Landroid/net/Uri;
.end method

.method public abstract getThumbnail()Landroid/graphics/Bitmap;
.end method
