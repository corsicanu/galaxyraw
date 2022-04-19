.class public abstract Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "KeyScreenZoomBinding.java"


# instance fields
.field public final bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

.field public final middleArea:Landroid/widget/RelativeLayout;

.field public final scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

.field public final shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

.field public final slider:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

.field public final sliderLayout:Landroid/widget/RelativeLayout;

.field public final zoomButtonX:Landroid/widget/ImageView;

.field public final zoomInMic:Landroid/widget/RelativeLayout;

.field public final zoomInMicCircle:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

.field public final zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

.field public final zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;Landroid/widget/RelativeLayout;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;)V
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
            "bottomGuideline",
            "lensButton",
            "middleArea",
            "scrollView",
            "shortcut",
            "slider",
            "sliderLayout",
            "zoomButtonX",
            "zoomInMic",
            "zoomInMicCircle",
            "zoomText",
            "zoomTextLayout"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    iput-object p6, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->middleArea:Landroid/widget/RelativeLayout;

    iput-object p7, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    iput-object p8, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    iput-object p9, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->slider:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    iput-object p10, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    iput-object p11, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomButtonX:Landroid/widget/ImageView;

    iput-object p12, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomInMic:Landroid/widget/RelativeLayout;

    iput-object p13, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomInMicCircle:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    iput-object p14, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    iput-object p15, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;
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

    const v0, 0x7f0d002f

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;
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

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;
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

    const v0, 0x7f0d002f

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;
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

    const v0, 0x7f0d002f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    return-object p0
.end method
