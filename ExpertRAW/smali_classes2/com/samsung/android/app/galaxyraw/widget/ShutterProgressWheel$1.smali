.class Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;
.super Ljava/lang/Object;
.source "ShutterProgressWheel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setShutterProgressWithAnimation(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$progress"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->val$progress:F

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->access$002(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;F)F

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->val$progress:F

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->access$100(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;F)V

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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->val$progress:F

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->access$002(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;F)F

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;)Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->val$progress:F

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel$1;->this$0:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->access$200(Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;)Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;->onShutterProgressWheelAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
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

    return-void
.end method
