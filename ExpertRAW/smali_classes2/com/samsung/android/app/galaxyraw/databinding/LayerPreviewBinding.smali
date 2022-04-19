.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayerPreviewBinding.java"


# instance fields
.field public final blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

.field public final blackBg:Landroid/view/View;

.field public final blurImage:Landroid/widget/ImageView;

.field public final normalImage:Landroid/widget/ImageView;

.field public final shutterBg:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "blackArea",
            "blackBg",
            "blurImage",
            "normalImage",
            "shutterBg"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackArea:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewBlackArea;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blackBg:Landroid/view/View;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->blurImage:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->normalImage:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->shutterBg:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;
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

    const v0, 0x7f0d0035

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;
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

    const v0, 0x7f0d0035

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;
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

    const v0, 0x7f0d0035

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewBinding;

    return-object p0
.end method
