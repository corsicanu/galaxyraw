.class Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;
.super Ljava/lang/Object;
.source "ProRawPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/node/jpeg/JpegNodeBase$NodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$102(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;)Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    return-void
.end method

.method public onProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x5a

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onProgress(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method

.method public onThumbnail(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;ILandroid/util/Size;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "thumbnail",
            "format",
            "size"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mThumbnailCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;

    invoke-direct {v3, p3}, Lcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;-><init>(Landroid/util/Size;)V

    invoke-direct {v2, p3, p2, v3}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;-><init>(Landroid/util/Size;ILcom/samsung/android/app/galaxyraw/core2/util/StrideInfo;)V

    invoke-static {p1, v2}, Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;->wrap(Lcom/samsung/android/app/galaxyraw/core2/util/DirectBuffer;Lcom/samsung/android/app/galaxyraw/core2/util/ImageInfo;)Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$1;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$ThumbnailCallbackHelper;->onThumbnailTaken(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$ThumbnailCallback;Lcom/samsung/android/app/galaxyraw/core2/util/ImageBuffer;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
