.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "KeyScreenLeftButtonBinding.java"


# instance fields
.field public final button:Landroid/widget/ImageButton;

.field public final leftButtonLayout:Landroid/widget/FrameLayout;

.field protected mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mRecordSnapshotSupported:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final quickViewButton:Landroid/widget/ImageButton;

.field public final quickViewButtonLayout:Landroid/widget/FrameLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "button",
            "leftButtonLayout",
            "quickViewButton",
            "quickViewButtonLayout"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->button:Landroid/widget/ImageButton;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->leftButtonLayout:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->quickViewButton:Landroid/widget/ImageButton;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->quickViewButtonLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;
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

    const v0, 0x7f0d0028

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;
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

    const v0, 0x7f0d0028

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;
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

    const v0, 0x7f0d0028

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;

    return-object p0
.end method


# virtual methods
.method public getPresenter()Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    return-object p0
.end method

.method public getRecordSnapshotSupported()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->mRecordSnapshotSupported:Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation
.end method

.method public abstract setRecordSnapshotSupported(Ljava/lang/Boolean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordSnapshotSupported"
        }
    .end annotation
.end method
