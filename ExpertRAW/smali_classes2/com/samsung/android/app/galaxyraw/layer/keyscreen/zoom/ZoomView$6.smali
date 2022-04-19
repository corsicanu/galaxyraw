.class Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->handleZoomLevelChangeAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

.field final synthetic val$targetZoomValue:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$targetZoomValue"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$6;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$6;->val$targetZoomValue:I

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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$6;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$600(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$6;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$6;->val$targetZoomValue:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->updateZoomValue(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$6;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$700(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$6;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->access$800(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    return-void
.end method
