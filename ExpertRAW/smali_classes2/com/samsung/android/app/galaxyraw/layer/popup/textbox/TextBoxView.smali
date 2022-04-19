.class public Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;
.super Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;
.source "TextBoxView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$View;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextBoxView"


# instance fields
.field private final mTextBoxViewHideRunnable:Ljava/lang/Runnable;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;


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

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/-$$Lambda$TextBoxView$Pi_ve8Eo-uMIJZr8694Xq2Ywq18;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/-$$Lambda$TextBoxView$Pi_ve8Eo-uMIJZr8694Xq2Ywq18;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mTextBoxViewHideRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->inflateLayout()V

    return-void
.end method

.method private hideTextBoxPopup()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$Presenter;->onPopupHideRequested()V

    return-void
.end method

.method private inflateLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic lambda$Pi_ve8Eo-uMIJZr8694Xq2Ywq18(Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->hideTextBoxPopup()V

    return-void
.end method

.method private updateLayout()V
    .locals 4

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->textBoxViewGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->removeFromHorizontalChain(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->description:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->removeFromHorizontalChain(I)V

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mOrientation:I

    const/4 v2, 0x0

    const/16 v3, -0x5a

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->description:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->title:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->description:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->title:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->textBoxViewGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->setTranslation(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$Presenter;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mIsRefreshByOrientation:Z

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxContract$Presenter;->onPopupShown(Z)V

    return-void
.end method


# virtual methods
.method public applyBias()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->applyRelativeBiasByOrientation()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mTextBoxViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initialize()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mPortraitVerticalBias:F

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mPortraitHorizontalBias:F

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mPortraitEndMargin:F

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mPortraitBottomMargin:F

    return-void
.end method

.method public onPreviewTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mTextBoxViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->onPreviewTouch(Landroid/view/MotionEvent;)V

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

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBoxBinding;->description:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTextBoxPopup()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->updateLayout()V

    return-void
.end method

.method public startHideTextBoxTimer(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayMillis"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mIsRefreshByOrientation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mTextBoxViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->mTextBoxViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textbox/TextBoxView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
