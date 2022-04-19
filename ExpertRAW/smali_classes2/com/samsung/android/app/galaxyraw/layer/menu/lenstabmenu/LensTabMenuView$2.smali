.class Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LensTabMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->startTabAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;

.field final synthetic val$isExpand:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$isExpand"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->val$isExpand:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->val$isExpand:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;F)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->val$isExpand:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->access$200(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;->onCollapseRequested()V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->val$isExpand:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->access$300(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTab:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->access$400(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$Presenter;->onCollapseRequested()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->val$isExpand:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->access$300(Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;)Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MenuLensTabMenuBinding;->lensTab:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
