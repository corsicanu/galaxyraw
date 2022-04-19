.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;
.super Ljava/lang/Object;
.source "ZoomPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleZoomEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->registerLayerScaleEventListener()V
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->scrollSlider(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScaleBegin()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->isSliderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->GESTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->GESTURE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->cancelZoomLevelAnimation()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->setTargetZoomRatio(F)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->setIgnoreScrollEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->removeZoomAutoHideMessage()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->extendNormalPositionArea()V

    return-void
.end method

.method public onScaleEnd()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->restartZoomAutoHideMessage()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->updateZoomValue(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->setIgnoreScrollEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->showZoomShortcut()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$600(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->PRO:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;->refreshExtendPosition()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;->access$700(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomPresenter;)V

    return-void
.end method
