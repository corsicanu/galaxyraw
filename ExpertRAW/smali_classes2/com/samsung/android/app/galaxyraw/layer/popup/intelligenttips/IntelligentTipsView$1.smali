.class Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IntelligentTipsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->hideIntelligentTipsPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;->onPopupHideRequested()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsContract$Presenter;->onPopupHideRequested()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/intelligenttips/IntelligentTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
