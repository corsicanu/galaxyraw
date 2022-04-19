.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeProProSliderContainerBinding.java"


# instance fields
.field public final activeTextAreaGroup:Landroid/widget/LinearLayout;

.field public final activeTextView:Landroid/widget/TextView;

.field public final activeTickMark:Landroid/view/View;

.field public final apertureButton:Landroid/widget/Button;

.field public final exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

.field public final isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

.field public final manualAutoButton:Landroid/widget/Button;

.field public final manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

.field public final multiAfButton:Landroid/widget/Button;

.field public final shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

.field public final wbIconImage:Landroid/widget/ImageView;

.field public final wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;Landroid/widget/Button;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;Landroid/widget/Button;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;Landroid/widget/ImageView;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V
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
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "activeTextAreaGroup",
            "activeTextView",
            "activeTickMark",
            "apertureButton",
            "exposureSlider",
            "isoSlider",
            "manualAutoButton",
            "manualFocusSlider",
            "multiAfButton",
            "shutterSpeedSlider",
            "wbIconImage",
            "wbSlider"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->activeTextAreaGroup:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->activeTextView:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->activeTickMark:Landroid/view/View;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->apertureButton:Landroid/widget/Button;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    iput-object p10, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualAutoButton:Landroid/widget/Button;

    iput-object p11, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    iput-object p12, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->multiAfButton:Landroid/widget/Button;

    iput-object p13, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    iput-object p14, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbIconImage:Landroid/widget/ImageView;

    iput-object p15, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;
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

    const v0, 0x7f0d00d4

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;
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

    const v0, 0x7f0d00d4

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;
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

    const v0, 0x7f0d00d4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;

    return-object p0
.end method
