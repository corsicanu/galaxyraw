.class Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$2;
.super Ljava/lang/Object;
.source "ProControlPanelView.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$2;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$2;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView$2;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;->access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelView;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    return-void
.end method
