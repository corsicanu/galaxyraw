.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NormalKeyScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->startCenterButtonShrinkAnimation(FJLandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$scale"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;->val$scale:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;->val$scale:F

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setScaleX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;->val$scale:F

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setScaleY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;->centerButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;->val$scale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/NormalKeyScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setTranslationY(F)V

    return-void
.end method
