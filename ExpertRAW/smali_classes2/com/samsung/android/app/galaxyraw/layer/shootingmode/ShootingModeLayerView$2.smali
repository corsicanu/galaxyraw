.class Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$2;
.super Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
.source "ShootingModeLayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;->onVolumeKeyDown(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;->onVolumeKeyUp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->access$200(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;->onBackKey()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
