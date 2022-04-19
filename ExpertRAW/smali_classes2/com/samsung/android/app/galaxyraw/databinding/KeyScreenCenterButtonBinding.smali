.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "KeyScreenCenterButtonBinding.java"


# instance fields
.field public final burstCountText:Landroid/widget/TextView;

.field public final centerButtonContainer:Landroid/widget/RelativeLayout;

.field public final normalCenterButton:Landroid/widget/ImageButton;

.field public final normalOverlapImage:Landroid/widget/ImageView;

.field public final pauseButton:Landroid/widget/ImageButton;

.field public final pauseButtonIcon:Landroid/widget/ImageView;

.field public final quickTakeAnimationImage:Landroid/widget/ImageView;

.field public final shutterOutline:Landroid/widget/ImageView;

.field public final stopButton:Landroid/widget/ImageButton;

.field public final stopButtonIcon:Landroid/widget/ImageView;

.field public final stopPauseButtonArea:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
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
            "burstCountText",
            "centerButtonContainer",
            "normalCenterButton",
            "normalOverlapImage",
            "pauseButton",
            "pauseButtonIcon",
            "quickTakeAnimationImage",
            "shutterOutline",
            "stopButton",
            "stopButtonIcon",
            "stopPauseButtonArea"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->centerButtonContainer:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->pauseButton:Landroid/widget/ImageButton;

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->pauseButtonIcon:Landroid/widget/ImageView;

    iput-object p10, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->quickTakeAnimationImage:Landroid/widget/ImageView;

    iput-object p11, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->shutterOutline:Landroid/widget/ImageView;

    iput-object p12, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopButton:Landroid/widget/ImageButton;

    iput-object p13, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopButtonIcon:Landroid/widget/ImageView;

    iput-object p14, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopPauseButtonArea:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;
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

    const v0, 0x7f0d0026

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;
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

    const v0, 0x7f0d0026

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;
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

    const v0, 0x7f0d0026

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    return-object p0
.end method
