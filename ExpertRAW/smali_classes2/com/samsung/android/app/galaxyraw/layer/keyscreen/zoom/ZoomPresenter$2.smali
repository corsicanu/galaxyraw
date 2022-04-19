.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$2;
.super Ljava/lang/Object;
.source "ZoomPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleUpDownEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->registerLayerScaleUpDownEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleDown()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->GESTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    const/4 v1, 0x3

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->handleGestureEvent(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onScaleUp()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->GESTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    const/4 v1, 0x4

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->handleGestureEvent(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    return-void
.end method
