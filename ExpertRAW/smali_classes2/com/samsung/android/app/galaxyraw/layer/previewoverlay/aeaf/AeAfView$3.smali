.class Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$3;
.super Ljava/lang/Object;
.source "AeAfView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->showTouchAeAfAnimation()V
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

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
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
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;->access$100(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->showAeAfGroup()V

    return-void
.end method
