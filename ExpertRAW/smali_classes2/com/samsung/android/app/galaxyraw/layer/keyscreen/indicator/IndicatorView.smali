.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;
.super Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;
.source "IndicatorView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$View;
.implements Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/IndicatorManager;


# instance fields
.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;


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

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->init(Landroid/content/Context;)V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public hideApertureIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->apertureIndicator:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideHdr10PlusIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->hdrPlusIndicator:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideRemainCountIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->remainCounterIndicator:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->setRotateAction(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;)V

    return-void
.end method

.method public prepareRotation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public refreshLayout(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReverse"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->remainCounterIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->hdrPlusIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->apertureIndicator:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->remainCounterIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->apertureIndicator:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->init(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->indicatorLayout:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->remainCounterIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->remainCounterIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {p1, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->remainCounterIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v7, v8, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->hdrPlusIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {p1, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->hdrPlusIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {p1, v5, v7, v8, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->apertureIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {p1, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->apertureIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {p1, v5, v7, v8, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->indicatorLayout:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->remainCounterIndicator:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->remainCounterIndicator:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->hdrPlusIndicator:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->apertureIndicator:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->apertureIndicator:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;

    return-void
.end method

.method public setRemainCountIndicator(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorContract$Presenter;->onSetRemainCountIndicatorRequested(I)V

    return-void
.end method

.method public showApertureIndicator(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apertureValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->apertureIndicator:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "F %.1f"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->apertureIndicator:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showHdr10PlusIndicator()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->hdrPlusIndicator:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showRemainCountIndicator(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->remainCounterIndicator:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%03d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenIndicatorBinding;->remainCounterIndicator:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
