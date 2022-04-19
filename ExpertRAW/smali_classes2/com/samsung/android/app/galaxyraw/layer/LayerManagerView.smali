.class public Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;
.super Landroid/widget/RelativeLayout;
.source "LayerManagerView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;
.implements Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$View;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayerManagerView"


# instance fields
.field private mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

.field private final mLayerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

.field private mOrientation:I

.field private mPostInitialized:Z

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

.field private mViewVisibilityEventManager:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mOrientation:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPostInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mOrientation:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPostInitialized:Z

    return-void
.end method

.method private applyBaseLine(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const p0, 0x7f0a0301

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    const p0, 0x7f0a008b

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private initializeKeyScreenLayer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->keyScreenLayer:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->getKeyScreenLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->applyBaseLine(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->initialize()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->KEY_SCREEN_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerFlingEventListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->setFlingEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerFlingEventListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScrollEventListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->setScrollEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScrollEventListener;)V

    return-void
.end method

.method private initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layerId"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : Start["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "LayerManagerView"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inflate"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$1;->$SwitchMap$com$samsung$android$app$galaxyraw$layer$LayerManagerView$LayerId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializePopupLayer()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeShootingModeOverlayLayer()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeMenuLayer()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeKeyScreenLayer()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeShootingModeLayer()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializePreviewOverlayLayer()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializePreviewLayer()V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "] ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeMenuLayer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->menuLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->menuLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->getMenuLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->initialize()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->MENU_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializePopupLayer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->popupLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->popupLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->getPopupLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->initialize()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->POPUP_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializePreviewLayer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->previewLayer:Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->getBackgroundLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;->initialize()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->PREVIEW_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializePreviewOverlayLayer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->previewOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->previewOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->getPreviewOverlayLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->applyBaseLine(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->initialize()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->PREVIEW_OVERLAY_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeShootingModeLayer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->getShootingModeLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->initialize()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->SHOOTING_MODE_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeShootingModeOverlayLayer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->getShootingModeOverlayLayerPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;)Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->initialize()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->SHOOTING_MODE_OVERLAY_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerKeyEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->registerKeyEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getMenuLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->registerKeyEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getShootingModeLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->registerKeyEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->registerKeyEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;)V

    return-void
.end method

.method private registerTouchEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getShootingModeLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V

    return-void
.end method

.method private unRegisterAllKeyEventListeners()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->unRegisterAllKeyEventListeners()V

    return-void
.end method

.method private unRegisterTouchEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->unRegisterTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getShootingModeLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->unRegisterTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->unRegisterTouchEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$View;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$u8vhTBFsowyG2llTTp_ayFfj9Qk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$u8vhTBFsowyG2llTTp_ayFfj9Qk;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$GFCqs6FG-JMZIxINwuazfwhFuDw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$GFCqs6FG-JMZIxINwuazfwhFuDw;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewVisibilityEventManager:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ac2hij0zuOZ0TTC9cN3XbaaIOe8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$ac2hij0zuOZ0TTC9cN3XbaaIOe8;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->isKeyDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->KEY_SCREEN_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->KEY_SCREEN_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->KEY_SCREEN_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    return-object p0
.end method

.method public getMenuLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->MENU_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->MENU_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->MENU_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mOrientation:I

    return p0
.end method

.method public getOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->SHOOTING_MODE_OVERLAY_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->SHOOTING_MODE_OVERLAY_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->SHOOTING_MODE_OVERLAY_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/OverlayLayerManager;

    return-object p0
.end method

.method public getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->POPUP_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->POPUP_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->POPUP_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    return-object p0
.end method

.method public getPreviewAnimationLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->PREVIEW_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->PREVIEW_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->PREVIEW_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager;

    return-object p0
.end method

.method public getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->PREVIEW_OVERLAY_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->PREVIEW_OVERLAY_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->PREVIEW_OVERLAY_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    return-object p0
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p0

    return-object p0
.end method

.method public getScaleUpDownGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->getScaleUpDownGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p0

    return-object p0
.end method

.method public getShootingModeLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->SHOOTING_MODE_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->SHOOTING_MODE_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->SHOOTING_MODE_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;

    return-object p0
.end method

.method public getViewVisibilityEventManager()Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewVisibilityEventManager:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    return-object p0
.end method

.method public hidePopupLayerBackground()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->popupLayerBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->popupLayerBackground:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideShootingModeLayerBackground()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeLayerBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeLayerBackground:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->getLayerGestureManager()Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$LayerManagerView$mAa1Wy8q3nJQKGXlUxK_bPt6vm0;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/-$$Lambda$LayerManagerView$mAa1Wy8q3nJQKGXlUxK_bPt6vm0;-><init>(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->getLayerKeyEventManager()Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/ViewVisibilityEventManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewVisibilityEventManager:Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch - InflatePreLoadingLayer : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->PREVIEW_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->KEY_SCREEN_LAYER:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch - InflatePreLoadingLayer : End["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "] ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$initialize$0$LayerManagerView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->clear()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/LayerKeyEventManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onLowMemory(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lowMemoryWarning"
        }
    .end annotation

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->setOrientation(I)V

    const v0, 0x7f0a015c

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;->onOrientationChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPostInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPostInitialized:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->unRegisterTouchEventListener()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->unRegisterAllKeyEventListeners()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->keyScreenLayer:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->requestCenterButtonAccessibilityFocus()V

    return-void
.end method

.method public postInitialize()V
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPostInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch - InflateLazyLoadingLayer : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GalaxyRaw/CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPostInitialized:Z

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;->values()[Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-direct {p0, v7}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->initializeLayer(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView$LayerId;)V

    iget v8, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mOrientation:I

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    iget v8, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mOrientation:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;->onOrientationChanged(I)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->keyScreenLayer:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->postInitialize()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launch - InflateLazyLoadingLayer : End["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;->start()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->registerTouchEventListener()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->registerKeyEventListener()V

    return-void
.end method

.method public setKeyScreenLayerVisibility(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyScreenLayerVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerManagerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->keyScreenLayer:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;->setVisibility(I)V

    return-void
.end method

.method public setLayerScaleEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerPreviewTouchEventManager;->setScaleEventListener(Lcom/samsung/android/app/galaxyraw/layer/listener/LayerScaleEventListener;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "presenter"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerContract$Presenter;

    return-void
.end method

.method public setPreviewOverlayLayerVisibility(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewOverlayLayerVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerManagerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getPreviewOverlayLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setShootingModeLayerVisibility(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShootingModeLayerVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerManagerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->getShootingModeLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    return-void
.end method

.method public showPopupLayerBackground(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundColor"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeLayerBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->hideShootingModeLayerBackground()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->popupLayerBackground:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->popupLayerBackground:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showShootingModeLayerBackground(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundColor"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->popupLayerBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->hidePopupLayerBackground()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeLayerBackground:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;->shootingModeLayerBackground:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
