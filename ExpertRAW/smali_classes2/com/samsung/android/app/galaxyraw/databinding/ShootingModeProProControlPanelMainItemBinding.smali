.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeProProControlPanelMainItemBinding.java"


# instance fields
.field public final proMainItem:Landroid/widget/FrameLayout;

.field public final proMainItemButton:Landroid/widget/Button;

.field public final proMainItemSubText:Landroid/widget/TextView;

.field public final proMainItemText:Landroid/widget/TextView;

.field public final proMainItemTextWide:Landroid/widget/TextView;

.field public final proMainItemTextWrapper:Landroid/widget/FrameLayout;

.field public final proMainItemTitle:Landroid/widget/TextView;

.field public final resetRotationAnimation:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "proMainItem",
            "proMainItemButton",
            "proMainItemSubText",
            "proMainItemText",
            "proMainItemTextWide",
            "proMainItemTextWrapper",
            "proMainItemTitle",
            "resetRotationAnimation"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItem:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemButton:Landroid/widget/Button;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemSubText:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWrapper:Landroid/widget/FrameLayout;

    iput-object p10, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTitle:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->resetRotationAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;
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

    const v0, 0x7f0d00d2

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;
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

    const v0, 0x7f0d00d2

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;
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

    const v0, 0x7f0d00d2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    return-object p0
.end method
