.class public Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;
.super Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;
.source "PopupLayerView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;
.implements Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$View;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupLayerView"


# instance fields
.field private mIsReverseLandScape:Z

.field private mIsVisiblePopupsRefreshing:Z

.field private final mPopups:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;",
            "Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

.field private mVisiblePopups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;",
            ">;"
        }
    .end annotation
.end field


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

    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mVisiblePopups:Ljava/util/ArrayList;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : Start["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PopupLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mVisiblePopups:Ljava/util/ArrayList;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : Start["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PopupLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "PopupId",
            "subId",
            "data",
            "popupActionListener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->createPopupView(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->initialize()V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {p3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->clear()V

    :goto_0
    return-void
.end method

.method private inflateLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->refreshGuideLine()V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isLandScape()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->getRotation()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->getRotation()F

    move-result p0

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

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

.method private isPopupVisible(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$clear$0(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->clear()V

    return-void
.end method

.method static synthetic lambda$onTouch$2(Landroid/view/MotionEvent;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;)V
    .locals 0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->onPreviewTouch(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private refreshGuideLine()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mIsReverseLandScape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->topGuidelineVertical:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->bottomGuidelineVertical:Landroidx/constraintlayout/widget/Guideline;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v0

    sub-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->topGuidelineVertical:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->bottomGuidelineVertical:Landroidx/constraintlayout/widget/Guideline;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    :goto_0
    return-void
.end method

.method private sendVisibilityChangeEvent(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupId"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mIsVisiblePopupsRefreshing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->popupLayerMain:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->popupLayerMain:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/samsung/android/app/galaxyraw/layer/popup/listener/PopupVisibilityChangeListener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/popup/listener/PopupVisibilityChangeListener;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/listener/PopupVisibilityChangeListener;->onVisibilityChanged(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setLayoutParam(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->isLandScape()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->topGuidelineVertical:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->bottomGuidelineVertical:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result p0

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result p0

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->applyBias()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showPopupInternal(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "subId",
            "data",
            "popupActionListener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->createPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {p2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    if-eq p2, p4, :cond_1

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-interface {p4, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->updateSubId(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z

    :cond_1
    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->updatePopupData(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    const/4 p2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->popupLayerMain:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->getRotation()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setOrientation(I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->setLayoutParam(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setIsShowRequested(Z)V

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-interface {p4, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->onShowPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->sendVisibilityChangeEvent(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    return p3

    :cond_4
    return p2
.end method

.method private showVisiblePopups(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visiblePopups"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mIsVisiblePopupsRefreshing:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mIsVisiblePopupsRefreshing:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setIsPopupRefreshingByOrientation(Z)V

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->showPopupInternal(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mIsVisiblePopupsRefreshing:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->sendVisibilityChangeEvent(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$aRoB7vly6zabcmnD5tufQpBd3no;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$aRoB7vly6zabcmnD5tufQpBd3no;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public enableRotateAction(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->setRotateAction(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->measure(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->setRotateAction(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;)V

    return-object v0
.end method

.method public getPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->getPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)I

    move-result p0

    return p0
.end method

.method public hideAllPopup()V
    .locals 2

    const-string v0, "PopupLayerView"

    const-string v1, "hideAllPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mVisiblePopups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$yFzzzemo9ZJZe6lSm0PTpKzeulk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$yFzzzemo9ZJZe6lSm0PTpKzeulk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;)V

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public hidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->popupLayerMain:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mVisiblePopups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->onHidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    return-void
.end method

.method public varargs hideVisiblePopup([Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->isPopupVisible(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->hidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public isPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->isPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z

    move-result p0

    return p0
.end method

.method public isPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "subId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->isPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Z)Z

    move-result p0

    return p0
.end method

.method public varargs isPopupVisible([Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idList"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->isPopupVisible(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public synthetic lambda$hideAllPopup$1$PopupLayerView(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->popupLayerMain:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->onHidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$prepareRotation$3$PopupLayerView(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->isShowRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mVisiblePopups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;->popupLayerMain:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$refreshLayout$4$PopupLayerView(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->showVisiblePopups(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$Cy82TenAZitMl3XxgVI3PD7uWi4;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$Cy82TenAZitMl3XxgVI3PD7uWi4;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p0, 0x0

    return p0
.end method

.method public prepareRotation()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPopups:Ljava/util/EnumMap;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$bs-HX0oYQu7tItv1fVWoWsJV_GY;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$bs-HX0oYQu7tItv1fVWoWsJV_GY;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;)V

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public refreshLayout(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReverse"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mIsReverseLandScape:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->inflateLayout()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mVisiblePopups:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mVisiblePopups:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mVisiblePopups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$cOyUZsKWNmt5kGXgtyZkwno-eqo;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$cOyUZsKWNmt5kGXgtyZkwno-eqo;-><init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAllowToShowAgain(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "isAllow"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->setAllowToShowAgain(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V

    return-void
.end method

.method public setPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "count"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->setPopupCount(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;I)V

    return-void
.end method

.method public setPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "enabled"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;->setPopupEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Z)V

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerContract$Presenter;

    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : End["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerPopupBinding;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->refreshGuideLine()V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->setRotateAction(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->mIsVisiblePopupsRefreshing:Z

    return-void
.end method

.method public showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPopup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->showPopupInternal(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Z

    move-result p0

    return p0
.end method

.method public showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "subId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPopup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->showPopupInternal(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Z

    move-result p0

    return p0
.end method

.method public showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "subId",
            "data"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPopup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->showPopupInternal(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Z

    move-result p0

    return p0
.end method

.method public showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "data"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPopup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->showPopupInternal(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Z

    move-result p0

    return p0
.end method

.method public showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "data",
            "listener"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;->SUB_ID_NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->showPopupInternal(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$SubPopupId;Ljava/lang/String;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupActionListener;)Z

    move-result p0

    return p0
.end method
