.class public Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;
.super Ljava/lang/Object;
.source "LayerPreviewTouchEventManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LayerPreviewTouchEventManager"


# instance fields
.field private mConsumeLayerTouchEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

.field private mPreviewGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;

.field private mPreviewScaleUpDownGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;

.field private mPreviewScaleZoomGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;

.field private final mTouchEventListenerAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V

    return-void
.end method

.method private sendCancelEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mConsumeLayerTouchEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->clear()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;->clear()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p0

    return-object p0
.end method

.method public getScaleUpDownGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->getScaleUpDownGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p0

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mConsumeLayerTouchEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mConsumeLayerTouchEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mConsumeLayerTouchEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->sendCancelEvent(Landroid/view/MotionEvent;)V

    :cond_3
    return v2
.end method

.method public registerTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "LayerPreviewTouchEventManager"

    const-string p1, "registerKeyEventListener parameter is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFlingEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerFlingEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;->setFlingEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerFlingEventListener;)V

    return-void
.end method

.method setOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;->setOrientation(I)V

    return-void
.end method

.method public setScaleEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->start()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->setScaleUpDownEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleUpDownGestureManager;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->start()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewScaleZoomGestureManager;->setLayerScaleZoomEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;)V

    :goto_0
    return-void
.end method

.method public setScrollEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScrollEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/PreviewGestureManager;->setScrollEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScrollEventListener;)V

    return-void
.end method

.method public unRegisterTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
