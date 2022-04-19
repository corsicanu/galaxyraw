.class public Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;
.super Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;
.source "ToastView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$View;"
    }
.end annotation


# static fields
.field private static final TOAST_LONG_TIMEOUT:I = 0xdac

.field private static final TOAST_TIMEOUT:I = 0x7d0


# instance fields
.field private mData:Ljava/lang/String;

.field private final mToastHideRunnable:Ljava/lang/Runnable;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupToastBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "popupId"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/-$$Lambda$ToastView$oP3Y5Cf-R3V1nQh_ZWY5G-Xcf6I;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/-$$Lambda$ToastView$oP3Y5Cf-R3V1nQh_ZWY5G-Xcf6I;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mToastHideRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->init()V

    return-void
.end method

.method private hideToastPopup()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$Presenter;->onPopupHideRequested()V

    return-void
.end method

.method private inflateLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/PopupToastBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PopupToastBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupToastBinding;

    return-void
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->loadStyleFromResource()V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic lambda$dMRTlqf6J3YXytY584nB98xbYFI(Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->updateToastLayout()V

    return-void
.end method

.method public static synthetic lambda$oP3Y5Cf-R3V1nQh_ZWY5G-Xcf6I(Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->hideToastPopup()V

    return-void
.end method

.method private loadStyleFromResource()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mStyleResourceId:I

    sget-object v2, Lcom/samsung/android/app/galaxyraw/R$styleable;->Popup:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPortraitVerticalBias:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPortraitBackground:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPortraitBottomMargin:F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private startHideToastPopupTimer()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mIsRefreshByOrientation:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mToastHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mToastHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->SHUTTER_SPEED_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mToastHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateToastLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupToastBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupToastBinding;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupToastBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupToastBinding;->description:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupToastBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupToastBinding;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPortraitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$Presenter;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$Presenter;->onUpdateLayout(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->startHideToastPopupTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$Presenter;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mIsRefreshByOrientation:Z

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastContract$Presenter;->onPopupShown(Z)V

    return-void
.end method


# virtual methods
.method public applyBias()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/16 v4, -0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->FOCUS_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mOrientation:I

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPortraitVerticalBias:F

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->SHUTTER_SPEED_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mOrientation:I

    if-ne v0, v4, :cond_3

    move v2, v3

    :cond_3
    iput v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mPortraitVerticalBias:F

    :cond_4
    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->applyBias()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mToastHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->loadStyleFromResource()V

    return-void
.end method

.method public onPreviewTouch(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setMargin(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "marginTop",
            "marginBottom",
            "marginLeft",
            "marginRight"
        }
    .end annotation

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->setTranslationY(F)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->mData:Ljava/lang/String;

    return-void
.end method

.method public showToastPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->removeAllViews()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->inflateLayout()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/-$$Lambda$ToastView$dMRTlqf6J3YXytY584nB98xbYFI;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/-$$Lambda$ToastView$dMRTlqf6J3YXytY584nB98xbYFI;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/toast/ToastView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
