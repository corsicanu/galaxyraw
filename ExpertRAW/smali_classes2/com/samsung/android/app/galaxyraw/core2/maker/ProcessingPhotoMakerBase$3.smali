.class Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;
.super Ljava/lang/Object;
.source "ProcessingPhotoMakerBase.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessorActive()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->getPostProcessorStatusCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->getPostProcessorStatusCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PostProcessorStatusCallbackHelper;->onPostProcessorActive(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_0
    return-void
.end method

.method public onProcessorReady()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->getPostProcessorStatusCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->access$000(Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;)Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mMakerCallbackManager:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerCallbackManager;->getPostProcessorStatusCallback()Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase$3;->this$0:Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/maker/ProcessingPhotoMakerBase;->mCamDevice:Lcom/samsung/android/app/galaxyraw/core2/CamDevice;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/core2/callbackutil/CallbackHelper$PostProcessorStatusCallbackHelper;->onPostProcessorReady(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$PostProcessorStatusCallback;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V

    :cond_0
    return-void
.end method
