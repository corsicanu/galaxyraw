.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;
.super Ljava/lang/Object;
.source "AeAfView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->makeDivideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$300(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$400(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120193

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$2;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120192

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
