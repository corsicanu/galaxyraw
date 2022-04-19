.class Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;
.super Ljava/lang/Object;
.source "FloatingShutterButtonView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLongPress$0$FloatingShutterButtonView$GestureListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;->hideButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;->floatingButton:Landroid/widget/ImageButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;->hideButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;->floatingButton:Landroid/widget/ImageButton;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;->hideButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/-$$Lambda$FloatingShutterButtonView$GestureListener$a_C2AnL_siWAHcaGXHz8Pfw9C40;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/-$$Lambda$FloatingShutterButtonView$GestureListener$a_C2AnL_siWAHcaGXHz8Pfw9C40;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b006c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->access$102(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;Z)Z

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;->hideButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView$GestureListener;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayFloatingShutterButtonBinding;->floatingButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
