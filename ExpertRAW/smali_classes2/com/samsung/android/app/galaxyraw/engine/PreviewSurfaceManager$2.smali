.class Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
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

    const/4 p1, 0x0

    if-le p4, p3, :cond_0

    const-string p2, "CreateSurface"

    invoke-static {p2, p1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Surface - CreateSurface : End["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GalaxyRaw/CameraPerformance"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceChanged : width="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " height="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PreviewSurfaceManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$400(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

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

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$502(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Z)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->notifyWaitPreviewSurface()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    const-string p1, "PreviewSurfaceManager"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$502(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;Z)Z

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$4;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Engine$State:[I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getCurrentState()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->addRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager$2;->this$0:Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;->access$100(Lcom/samsung/android/app/galaxyraw/engine/PreviewSurfaceManager;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getRequestQueue()Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CONNECT_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestQueue;->interruptRequest(Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    :goto_0
    return-void
.end method
