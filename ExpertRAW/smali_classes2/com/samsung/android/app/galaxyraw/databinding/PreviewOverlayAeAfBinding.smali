.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PreviewOverlayAeAfBinding.java"


# instance fields
.field public final aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

.field public final divideAeAfLockCircle:Landroid/widget/ImageView;

.field public final divideAeAfLockGroup:Landroid/widget/RelativeLayout;

.field public final divideAeAfLockText:Landroid/widget/TextView;

.field public final divideAeLockBtn:Landroid/widget/ImageView;

.field public final divideAeLockCircle:Landroid/widget/ImageView;

.field public final divideAeLockGroup:Landroid/widget/RelativeLayout;

.field public final divideAeLockText:Landroid/widget/TextView;

.field public final divideAfAeLockBtn:Landroid/widget/ImageView;

.field public final focusGuide:Landroid/widget/ImageView;

.field public final objectTrackingView:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
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
            "aeAfGroup",
            "divideAeAfLockCircle",
            "divideAeAfLockGroup",
            "divideAeAfLockText",
            "divideAeLockBtn",
            "divideAeLockCircle",
            "divideAeLockGroup",
            "divideAeLockText",
            "divideAfAeLockBtn",
            "focusGuide",
            "objectTrackingView"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->aeAfGroup:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockCircle:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockGroup:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeAfLockText:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockBtn:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockCircle:Landroid/widget/ImageView;

    iput-object p10, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockGroup:Landroid/widget/RelativeLayout;

    iput-object p11, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAeLockText:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->divideAfAeLockBtn:Landroid/widget/ImageView;

    iput-object p13, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->focusGuide:Landroid/widget/ImageView;

    iput-object p14, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->objectTrackingView:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;
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

    const v0, 0x7f0d0093

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;
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

    const v0, 0x7f0d0093

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;
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

    const v0, 0x7f0d0093

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayAeAfBinding;

    return-object p0
.end method
