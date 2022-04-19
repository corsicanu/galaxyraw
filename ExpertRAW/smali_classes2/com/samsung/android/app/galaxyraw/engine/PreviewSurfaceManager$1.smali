.class Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;
.super Ljava/lang/Object;
.source "PreviewSurfaceManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "width",
            "height"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "extraSurfaceChanged, width="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " height="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreviewSurfaceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_EXTRA_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->notifyRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$202(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Z)Z

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    const-string p1, "PreviewSurfaceManager"

    const-string v0, "extraSurfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$300(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$000(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-interface {p1, v0, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    const-string p1, "PreviewSurfaceManager"

    const-string v0, "extraSurfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$1;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$202(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Z)Z

    return-void
.end method
