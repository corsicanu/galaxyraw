.class Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DisplayCutoutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->showSwitchCameraAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView$3;->this$0:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;->access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayDisplayCutoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayDisplayCutoutBinding;->switchEffectView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    return-void
.end method
