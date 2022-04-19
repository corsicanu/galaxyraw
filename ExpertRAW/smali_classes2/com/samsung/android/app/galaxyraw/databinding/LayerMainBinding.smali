.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayerMainBinding.java"


# instance fields
.field public final keyScreenLayer:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;

.field public final layerManagerMain:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

.field public final menuLayerStub:Landroidx/databinding/ViewStubProxy;

.field public final popupLayerBackground:Landroid/view/View;

.field public final popupLayerStub:Landroidx/databinding/ViewStubProxy;

.field public final previewLayer:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

.field public final previewOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

.field public final shootingModeLayerBackground:Landroid/view/View;

.field public final shootingModeLayerStub:Landroidx/databinding/ViewStubProxy;

.field public final shootingModeOverlayLayerStub:Landroidx/databinding/ViewStubProxy;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;Landroidx/databinding/ViewStubProxy;Landroid/view/View;Landroidx/databinding/ViewStubProxy;Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;Landroidx/databinding/ViewStubProxy;Landroid/view/View;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "keyScreenLayer",
            "layerManagerMain",
            "menuLayerStub",
            "popupLayerBackground",
            "popupLayerStub",
            "previewLayer",
            "previewOverlayLayerStub",
            "shootingModeLayerBackground",
            "shootingModeLayerStub",
            "shootingModeOverlayLayerStub"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->keyScreenLayer:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->layerManagerMain:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->menuLayerStub:Landroidx/databinding/ViewStubProxy;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->popupLayerBackground:Landroid/view/View;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->popupLayerStub:Landroidx/databinding/ViewStubProxy;

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->previewLayer:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    iput-object p10, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->previewOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    iput-object p11, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeLayerBackground:Landroid/view/View;

    iput-object p12, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeLayerStub:Landroidx/databinding/ViewStubProxy;

    iput-object p13, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;
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

    const v0, 0x7f0d0032

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;
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

    const v0, 0x7f0d0032

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;
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

    const v0, 0x7f0d0032

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    return-object p0
.end method
