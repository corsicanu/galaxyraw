.class Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$2;
.super Ljava/lang/Object;
.source "ProRawPhotoMaker.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/node/MpiMfrpNode$NodeCallback;


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$000()Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mPictureCallback:Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PictureCallbackHelper;->onError(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PictureCallback;ILcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;->access$102(Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker;Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;)Lcom/samsung/android/app/galaxyraw/core2/maker/ProRawPhotoMaker$RawData;

    return-void
.end method

.method public onProgress(Lcom/samsung/android/app/galaxyraw/core2/ExtraBundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "progress"
        }
    .end annotation

    return-void
.end method
