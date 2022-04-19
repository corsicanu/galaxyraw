.class public abstract Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AbstractPopupView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;",
        ">",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$View<",
        "TP;>;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractPopupView"


# instance fields
.field protected mIsRefreshByOrientation:Z

.field private mIsShowRequested:Z

.field protected mLandscapeBackground:Landroid/graphics/drawable/Drawable;

.field protected mOrientation:I

.field protected final mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

.field protected mPortraitBackground:Landroid/graphics/drawable/Drawable;

.field protected mPortraitBottomMargin:F

.field protected mPortraitEndMargin:F

.field protected mPortraitHorizontalBias:F

.field protected mPortraitStartMargin:F

.field protected mPortraitTopMargin:F

.field protected mPortraitVerticalBias:F

.field protected mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field protected mReverseLandscapeBackground:Landroid/graphics/drawable/Drawable;

.field protected mStyleResourceId:I

.field protected mStyledAttributes:Landroid/content/res/TypedArray;

.field protected mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 1
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

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitHorizontalBias:F

    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mIsRefreshByOrientation:Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mIsShowRequested:Z

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private applyBias(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "horizontalBias",
            "verticalBias"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public applyBias()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitHorizontalBias:F

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->applyBias(FF)V

    return-void
.end method

.method protected applyRelativeBiasByOrientation()V
    .locals 6

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitHorizontalBias:F

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    const/16 v3, -0x5a

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sub-float v0, v4, v0

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_1
    sub-float/2addr v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyRelativeBiasByOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractPopupView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->applyBias(FF)V

    return-void
.end method

.method protected getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getAttributeValue(I)Landroid/util/TypedValue;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    return-object v0
.end method

.method protected getBackgroundImage()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    const/16 v1, -0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mLandscapeBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mReverseLandscapeBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitBackground:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-object v0
.end method

.method protected getHorizontalOffset(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "marginLeft",
            "marginRight"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitHorizontalBias:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitStartMargin:F

    add-float/2addr p0, p1

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitEndMargin:F

    add-float/2addr p0, p2

    neg-float p0, p0

    return p0
.end method

.method protected getVerticalOffset(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "marginTop",
            "marginBottom"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitTopMargin:F

    add-float/2addr p0, p1

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPortraitBottomMargin:F

    add-float/2addr p0, p2

    neg-float p0, p0

    return p0
.end method

.method public isShowRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mIsShowRequested:Z

    return p0
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;->onPopupHideRequested()V

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

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;->onEmptyAreaTouchUp()Z

    move-result p0

    return p0

    :cond_1
    return p2
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onVisibilityAggregated(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;->onPopupVisibilityChanged(Z)V

    return-void
.end method

.method public refreshStyle()V
    .locals 0

    return-void
.end method

.method public setIsPopupRefreshingByOrientation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRefreshByOrientation"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mIsRefreshByOrientation:Z

    return-void
.end method

.method public setIsShowRequested(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requested"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mIsShowRequested:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractPopupView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    return-void
.end method

.method public setStyleResource(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mStyleResourceId:I

    return-void
.end method

.method public setSubPopupId(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subPopupId"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mSubPopupId:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    return-void
.end method

.method protected setTranslation(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAppliedRelativeBiasByOrientation"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    const/16 v1, -0x5a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getHorizontalOffset(FF)F

    move-result p1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getVerticalOffset(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getVerticalOffset(FF)F

    move-result p1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getHorizontalOffset(FF)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getVerticalOffset(FF)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getHorizontalOffset(FF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getHorizontalOffset(FF)F

    move-result p1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getVerticalOffset(FF)F

    move-result v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setTranslationY(F)V

    return-void
.end method
