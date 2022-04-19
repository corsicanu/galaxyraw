.class Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$1;
.super Ljava/lang/Object;
.source "ShootingModeLayerView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->addView(Landroid/view/ViewGroup;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "left",
            "top",
            "right",
            "bottom",
            "oldLeft",
            "oldTop",
            "oldRight",
            "oldBottom"
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;->onOrientationChanged(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
