.class Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;
.super Ljava/lang/Object;
.source "PreviewSurfaceManager.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureAvailable : width="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " height="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreviewSurfaceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$502(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Z)Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$700(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$602(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->notifyWaitPreviewSurface()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    const-string p1, "PreviewSurfaceManager"

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$502(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Z)Z

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$4;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$State:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CONNECT_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->interruptRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :goto_0
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSurfaceTextureSizeChanged : mFixedSurfaceSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreviewSurfaceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$700(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$3;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->notifyChangePreviewSurfaceSize()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    return-void
.end method
