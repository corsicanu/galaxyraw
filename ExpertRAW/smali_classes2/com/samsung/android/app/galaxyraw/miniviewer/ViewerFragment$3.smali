.class Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->startAttentionAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$3;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$3;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$600(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lightRoomButton:Landroid/widget/ImageButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setTranslationY(F)V

    return-void
.end method
