.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PreviewOverlayInclinometerBinding.java"


# instance fields
.field public final guideBar:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;

.field public final meterBar:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "guideBar",
            "meterBar"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;->guideBar:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;->meterBar:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/InclinometerBar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;
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

    const v0, 0x7f0d0094

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;
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

    const v0, 0x7f0d0094

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;
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

    const v0, 0x7f0d0094

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/PreviewOverlayInclinometerBinding;

    return-object p0
.end method
