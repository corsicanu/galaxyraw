.class Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewAnimationLayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->startSwitchFacingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$5;->this$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$5;->this$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p0, "PreviewLayerView"

    const-string p1, "startSwitchFacingAnimation : onAnimationEnd"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
