.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayerShootingModeOverlayBinding.java"


# instance fields
.field public final backButton:Landroid/widget/Button;

.field public final bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final displayCutout:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;

.field public final floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

.field public final quickSettingGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final screenFlash:Landroid/widget/RelativeLayout;

.field public final screenFlashIcon:Landroid/widget/ImageView;

.field public final timer:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;

.field public final topGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final voiceControl:Lcom/airbnb/lottie/LottieAnimationView;

.field public final whiteOverlay:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroidx/constraintlayout/widget/Guideline;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;Landroidx/constraintlayout/widget/Guideline;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "backButton",
            "bottomGuideline",
            "displayCutout",
            "floatingShutterButtonGroup",
            "quickSettingGuideline",
            "screenFlash",
            "screenFlashIcon",
            "timer",
            "topGuideline",
            "voiceControl",
            "whiteOverlay"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->backButton:Landroid/widget/Button;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->displayCutout:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/displaycutout/DisplayCutoutView;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->floatingShutterButtonGroup:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/floatingshutterbutton/FloatingShutterButtonView;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->quickSettingGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->screenFlash:Landroid/widget/RelativeLayout;

    iput-object p10, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->screenFlashIcon:Landroid/widget/ImageView;

    iput-object p11, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->timer:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerView;

    iput-object p12, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p13, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->voiceControl:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p14, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->whiteOverlay:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0038

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0038

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0038

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayBinding;

    return-object p0
.end method
