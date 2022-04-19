.class Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewAnimationLayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->hidePreviewChangeBlurAnimation()V
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Animation - HidePreviewAnimation : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalaxyRaw/CameraPerformance"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
