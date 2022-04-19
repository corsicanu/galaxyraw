.class public Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;
.super Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;
.source "TextBalloonView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/listener/PopupVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView<",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;",
        ">;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$View;",
        "Lcom/samsung/android/app/galaxyraw/layer/popup/listener/PopupVisibilityChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextBalloonView"


# instance fields
.field private final ARROW_DIRECTION_GROUP_BOTTOM:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

.field private final ARROW_DIRECTION_GROUP_TOP:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

.field private mArrowDirection:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

.field private final mBalloonViewHideRunnable:Ljava/lang/Runnable;

.field private mDescription:Ljava/lang/String;

.field private mHeight:F

.field private mLinkString:Ljava/lang/String;

.field private mRadioButton1:Ljava/lang/String;

.field private mRadioButton2:Ljava/lang/String;

.field private mTextColor:I

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 4
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

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/-$$Lambda$TextBalloonView$kKrkEfGbPhjoseBfjDKaw5M3VRk;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/-$$Lambda$TextBalloonView$kKrkEfGbPhjoseBfjDKaw5M3VRk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mBalloonViewHideRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x3

    new-array p2, p1, [Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->TOP:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->LEFT:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const/4 v2, 0x1

    aput-object v0, p2, v2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->RIGHT:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const/4 v3, 0x2

    aput-object v0, p2, v3

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->ARROW_DIRECTION_GROUP_TOP:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    new-array p1, p1, [Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->BOTTOM:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    aput-object p2, p1, v1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->RIGHT:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    aput-object p2, p1, v2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->LEFT:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    aput-object p2, p1, v3

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->ARROW_DIRECTION_GROUP_BOTTOM:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    return-void
.end method

.method private applyMargin(FFFF)V
    .locals 3
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

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mOrientation:I

    const/16 v1, -0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getHorizontalOffset(FF)F

    move-result p3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getVerticalOffset(FF)F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mArrowDirection:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const/4 p4, 0x0

    aget-object p2, p2, p4

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getVerticalOffset(FF)F

    move-result p1

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getHorizontalOffset(FF)F

    move-result p2

    neg-float p2, p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mArrowDirection:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const/4 p4, 0x1

    aget-object p3, p3, p4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getVerticalOffset(FF)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getHorizontalOffset(FF)F

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mArrowDirection:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    const/4 p4, 0x2

    aget-object p3, p3, p4

    :goto_0
    move-object v2, p3

    move p3, p1

    move p1, p2

    move-object p2, v2

    :goto_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->applyPickerMargin(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->setTranslationY(F)V

    return-void
.end method

.method private applyPickerMargin(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->textBalloonSubViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView$1;->$SwitchMap$com$samsung$android$app$galaxyraw$layer$popup$textballoon$TextBalloonContract$Direction:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->textBalloonSubViewGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private hideBalloonPopup()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;->onPopupHideRequested()V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic lambda$kKrkEfGbPhjoseBfjDKaw5M3VRk(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->hideBalloonPopup()V

    return-void
.end method

.method public static synthetic lambda$vRsp4xxC4bMsRFcaeL4Dy6QUYSc(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->updateTextBalloonPopupLayout()V

    return-void
.end method

.method private loadStyleFromResource()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mStyleResourceId:I

    sget-object v2, Lcom/samsung/android/app/galaxyraw/R$styleable;->Popup:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mWidth:F

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mHeight:F

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mLinkString:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mTextColor:I

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mRadioButton1:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mRadioButton2:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->setDescription(I)V

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPortraitTopMargin:F

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPortraitStartMargin:F

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPortraitBottomMargin:F

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPortraitEndMargin:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPortraitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mLandscapeBackground:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mReverseLandscapeBackground:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPortraitVerticalBias:F

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPortraitVerticalBias:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->ARROW_DIRECTION_GROUP_TOP:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mArrowDirection:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->ARROW_DIRECTION_GROUP_BOTTOM:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mArrowDirection:[Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Direction;

    :goto_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPortraitHorizontalBias:F

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setDescription(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mDescription:Ljava/lang/String;

    return-void
.end method

.method private updateTextBalloonPopupLayout()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mHeight:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    float-to-int v0, v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->textBalloonViewGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mWidth:F

    float-to-int v3, v3

    invoke-direct {v2, v3, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mLinkString:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->button:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mLinkString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->button:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->button:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/-$$Lambda$TextBalloonView$y-E4SAS2FG8aLe64LfvdePYrphQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/-$$Lambda$TextBalloonView$y-E4SAS2FG8aLe64LfvdePYrphQ;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mRadioButton1:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->radioButton1:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mRadioButton1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mRadioButton2:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->radioButton2:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mRadioButton2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->textBalloonViewGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mTextColor:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->button:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->radioButton1:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->radioButton2:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mOrientation:I

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mWidth:F

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;->onUpdateLayout(IF)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mIsRefreshByOrientation:Z

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;->onPopupShown(Z)V

    return-void
.end method


# virtual methods
.method public applyBias()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->applyRelativeBiasByOrientation()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mBalloonViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->loadStyleFromResource()V

    return-void
.end method

.method public synthetic lambda$updateTextBalloonPopupLayout$0$TextBalloonView(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;->onLinkClick()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;->onPopupHideRequested()V

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mBalloonViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->removeCallbacks(Ljava/lang/Runnable;)Z

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

.method public onVisibilityChanged(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popupId",
            "isVisible"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;->onPopupHideRequested()V

    :cond_0
    return-void
.end method

.method public setMargin(FFFF)V
    .locals 2
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMargin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextBalloonView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->applyMargin(FFFF)V

    return-void
.end method

.method public setSelectedRadioButton(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRadioButton1Selected"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->radioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->radioButton2:Landroid/widget/RadioButton;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public showTextBalloonPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->removeAllViews()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->initView()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/-$$Lambda$TextBalloonView$vRsp4xxC4bMsRFcaeL4Dy6QUYSc;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/-$$Lambda$TextBalloonView$vRsp4xxC4bMsRFcaeL4Dy6QUYSc;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
