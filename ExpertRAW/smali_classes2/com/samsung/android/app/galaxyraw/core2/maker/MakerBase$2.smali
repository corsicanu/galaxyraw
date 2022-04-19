.class Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$2;
.super Ljava/lang/Object;
.source "MakerBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame(Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamCapability;)V
    .locals 1
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

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->TAG:Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mSubPreviewCallback:Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase$2;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {p2, v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PreviewCallbackHelper;->onPreviewFrame(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/callbackutil/BufferCallbackForwarder$PreviewBufferCallbackForwarder;Landroid/media/Image;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    return-void
.end method
