.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CenterButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->centerButtonContainer:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopPauseButtonArea:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
