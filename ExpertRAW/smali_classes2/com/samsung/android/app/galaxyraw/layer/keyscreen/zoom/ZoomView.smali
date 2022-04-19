.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ZoomView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$View;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ZoomShortcutClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnScrollChangeListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$AccessibilityScrollActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$ContentsItemDecoration;,
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomView"

.field private static final UNSET_VALUE:I = -0x1


# instance fields
.field private mActiveAnimationId:I

.field private mAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;

.field private mBarCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBeforeGuideLineUpdated:Z

.field private mCenterPosArray:Landroid/util/SparseIntArray;

.field private mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

.field private mDisableLevelChangeAnimation:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsAnimationFinished:Z

.field private mIsExtension:Z

.field private mIsScrolling:Z

.field private mOrientation:I

.field private mPositionAnimator:Landroid/animation/ValueAnimator;

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

.field private mShortcutData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportUiSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

.field private final mZoomAreaReductionRunnable:Ljava/lang/Runnable;

.field private mZoomConditionChecker:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;

.field private mZoomCurveDataHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;

.field private mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

.field private mZoomSliderMagneticScrollHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

.field private final mZoomTextHideRunnable:Ljava/lang/Runnable;

.field private mZoomValueAnimator:Landroid/animation/ValueAnimator;


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

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsAnimationFinished:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mBeforeGuideLineUpdated:Z

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$edMG2F8xbWYxlyHwxTO8n_beEQk;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$edMG2F8xbWYxlyHwxTO8n_beEQk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomAreaReductionRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$rcx1cDgAZR8tG4z0coQ9Os0fjQk;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$rcx1cDgAZR8tG4z0coQ9Os0fjQk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomTextHideRunnable:Ljava/lang/Runnable;

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

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsAnimationFinished:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mBeforeGuideLineUpdated:Z

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$edMG2F8xbWYxlyHwxTO8n_beEQk;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$edMG2F8xbWYxlyHwxTO8n_beEQk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomAreaReductionRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$rcx1cDgAZR8tG4z0coQ9Os0fjQk;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$rcx1cDgAZR8tG4z0coQ9Os0fjQk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomTextHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomSliderMagneticScrollHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    return p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->handleSingleTapUpEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->showLensButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->zoomLevelChangeAnimationFinished()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->zoomLevelChangeAnimationStarted()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeAreaReductionMessage()V

    return-void
.end method

.method private cancelValueAnimator(Landroid/animation/ValueAnimator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "valueAnimator",
            "needRunListener"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$744_mctWbxRUuDyOz-gufFD_nUw;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$744_mctWbxRUuDyOz-gufFD_nUw;-><init>(Z)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private changeZoomLevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsAnimationFinished:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onLevelButtonClick(ILcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setButtonSelectionStatus(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->updateZoomText(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->updateShortcutSelected(I)V

    :cond_1
    return-void
.end method

.method private changeZoomTextLensType()Z
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getTextType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setTextType(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070200

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setStroke(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060034

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070201

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomButtonX:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0807a1

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return v3
.end method

.method private changeZoomTextSliderType()Z
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setTextType(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080616

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070216

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setStroke(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06025b

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070217

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomButtonX:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f080684

    invoke-virtual {p0, v1, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return v2
.end method

.method private changeZoomTextType()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isZoomTextSliderTypeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->changeZoomTextSliderType()Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->changeZoomTextLensType()Z

    move-result p0

    return p0
.end method

.method private checkSliderShowing()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private convertZoomLevelToZoomRatio(I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    div-int/lit8 p1, p1, 0x64

    mul-int/lit8 p1, p1, 0x64

    int-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private extendArea(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomPositionType"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeZoomTextHideRunnable()V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->checkSliderShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onLensButtonToSliderChangeRequested()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isShortcutShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onShortcutShowRequested()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->refreshBackground()V

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onZoomAreaExtendRequested(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1204f3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private findNextButtonIndexUsingZoomValue(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "zoomValue"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->findNextButtonIndexUsingZoomValue(II)I

    move-result p0

    return p0
.end method

.method private getBaseLineByType()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getBaseLineByType(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)F

    move-result p0

    return p0
.end method

.method private getBaseLineByType(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomPositionType"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07044c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    add-float/2addr p1, v0

    return p1

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p0

    return p0
.end method

.method private getMaxZoomLevel(Landroid/util/SparseIntArray;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerArray"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method private getScrollCorrectionValue(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scroll"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    new-instance v2, Landroid/util/Range;

    add-int/lit8 v3, v1, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private getScrollValueByMotionEvent(Landroid/view/MotionEvent;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_0
    const/16 v2, -0x5a

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getScrollValueByZoomLevel(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-le v3, p1, :cond_1

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    sub-int v2, v3, v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    sub-int/2addr p0, v1

    sub-int/2addr p1, v0

    mul-int/2addr p1, p0

    div-int/2addr p1, v2

    add-int/2addr v1, p1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getSliderTopPosition()I
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    iget p0, v0, Landroid/graphics/Rect;->left:I

    return p0

    :cond_0
    const/16 v2, -0x5a

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v0

    return p0

    :cond_1
    iget p0, v0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private getZoomLevelByScrollValue(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scroll"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getScrollCorrectionValue(I)I

    move-result p1

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    if-le v2, p1, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    sub-int/2addr v1, v0

    sub-int/2addr v2, p0

    sub-int/2addr p1, p0

    mul-int/2addr p1, v1

    div-int/2addr p1, v2

    add-int/2addr v0, p1

    return v0

    :cond_2
    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getMaxZoomLevel(Landroid/util/SparseIntArray;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method private getZoomValueTtsString(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    mul-int/lit8 p1, p1, 0xa

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1204f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1204f1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v5, p1, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->isScrollLeftEnd()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1202ae

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->isScrollRightEnd()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1202ad

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleButtonTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isAnimationRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onTouchEventRequested()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->handleSliderTransferTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private handleSingleTapUpEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getScrollValueByMotionEvent(Landroid/view/MotionEvent;)I

    move-result p1

    add-int/2addr v0, p1

    if-gez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->changeZoomLevel(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getMaxZoomLevel(Landroid/util/SparseIntArray;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-le v0, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getMaxZoomLevel(Landroid/util/SparseIntArray;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->changeZoomLevel(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getZoomLevelByScrollValue(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->changeZoomLevel(I)V

    :goto_0
    return-void
.end method

.method private handleSliderTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onZoomLevelAnimationCanceled()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->stopFling()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomSliderMagneticScrollHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getWidth()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->initialize(Landroid/view/MotionEvent;II)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onScrollStart()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSliderShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSliderScrolling()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->SCREEN_TOUCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onSALogControlZoomRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->refreshShortcutSelect()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->restartZoomAutoHideMessage()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onScrollEnd()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomSliderMagneticScrollHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getWidth()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->getScrollValue(Landroid/view/MotionEvent;I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->scrollTo(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleSliderTransferTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onTouchEventRequested()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->cancelZoomLevelAnimation()V

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->handleSliderTouch(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->showZoomShortcut()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->refreshBackground()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->PRO:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->refreshExtendPosition()V

    :cond_5
    :goto_0
    return v1
.end method

.method private handleZoomLevelChangeAnimation(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zoomValue",
            "targetZoomValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->cancelValueAnimator(Landroid/animation/ValueAnimator;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getAnimationDuration(II)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$HrJKC1jBYuX6PJhKZR7Ohs5r5LE;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$HrJKC1jBYuX6PJhKZR7Ohs5r5LE;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$6;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$6;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private hideViewWithAlphaAnimation(Landroid/view/View;ILjava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "duration",
            "endAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$NueG3njv4V6--FgGJEcBIta2vmw;

    invoke-direct {p2, p3, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$NueG3njv4V6--FgGJEcBIta2vmw;-><init>(Ljava/util/function/Consumer;Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private hideZoomShortcut(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4RhcY-sPc9tODetyDEWTyixX6W4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4RhcY-sPc9tODetyDEWTyixX6W4;

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideViewWithAlphaAnimation(Landroid/view/View;ILjava/util/function/Consumer;)V

    return-void
.end method

.method private hideZoomSlider(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$nO31dgQanjOr0sRxdvn2sPrYPpg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$nO31dgQanjOr0sRxdvn2sPrYPpg;

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideViewWithAlphaAnimation(Landroid/view/View;ILjava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onZoomSliderHide(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V

    return-void
.end method

.method private isAnimationRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShortcutShowing()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ui"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mSupportUiSet:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isZoomTextSliderTypeAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS_NAME_AND_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isExtend()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0(Landroid/animation/ValueAnimator;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$cancelValueAnimator$8(ZLandroid/animation/ValueAnimator;)V
    .locals 0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method static synthetic lambda$hideLensButton$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$hideViewWithAlphaAnimation$10(Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$hideZoomShortcut$11(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$hideZoomSlider$12(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$lLyRaMCfil66Y_u4ZaM16C9fTnI(Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private needLensButtonBackground()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS_AND_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS_NAME_AND_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private onLensButtonClick(Landroid/view/View;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "commandId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildValue(Landroid/view/View;)I

    move-result v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideZoomText(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onLensButtonClick(ILcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->FOV:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f080994

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f08098d

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS_NAME_AND_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setLensNameAndLevelButtonSelectionStatus(I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setButtonSelectionStatus(I)V

    :goto_1
    return-void
.end method

.method private refreshBackground()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$aVTqRPx-EmBMDAUD2or0HCwYD-g;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$aVTqRPx-EmBMDAUD2or0HCwYD-g;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getSliderTopPosition()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onRefreshBackgroundRequested(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;I)V

    :goto_0
    return-void
.end method

.method private refreshShortcutSelect()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getScrollCorrectionValue(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$ZSaU0ltJywmLdH04XfwfifTRH0c;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$ZSaU0ltJywmLdH04XfwfifTRH0c;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeAreaReductionMessage()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomAreaReductionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomAreaReductionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeZoomTextHideRunnable()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomTextHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomTextHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private showLensButton()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->showViewWithAlphaAnimation(Landroid/view/View;)V

    return-void
.end method

.method private showViewWithAlphaAnimation(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->floatEquals(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private startBaseLineAnimation(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->startBaseLineAnimation(FFLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private startBaseLineAnimation(FFLandroid/animation/AnimatorListenerAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "animatorListener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPositionAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->cancelValueAnimator(Landroid/animation/ValueAnimator;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPositionAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/util/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$e6UYc13G08HNsbWJpurjbt0P3SQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$e6UYc13G08HNsbWJpurjbt0P3SQ;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startHandler(JLjava/util/ArrayList;Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "infoList",
            "currentInfo",
            "nextIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;",
            "I)V"
        }
    .end annotation

    new-instance v6, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$4qqNmB4G7NW5bL1h8ikMsJxWMEE;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;JLjava/util/ArrayList;I)V

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;->getNextStepDuration()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, v6, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateShortcutSelected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$Me4E0O3TZ-M8FUdbk6qybR1jFmI;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$Me4E0O3TZ-M8FUdbk6qybR1jFmI;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zoomLevelChangeAnimationFinished()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->restartZoomAutoHideMessage()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onZoomLevelChangeAnimationEnd()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setIgnoreScrollEvent(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->refreshShortcutSelect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsAnimationFinished:Z

    return-void
.end method

.method private zoomLevelChangeAnimationStarted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsAnimationFinished:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setIgnoreScrollEvent(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onZoomLevelChangeAnimationStart()V

    return-void
.end method


# virtual methods
.method public cancelZoomLevelAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mActiveAnimationId:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->zoomLevelChangeAnimationFinished()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onZoomLevelAnimationCanceled()V

    return-void
.end method

.method public changeLensButton(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "inputType",
            "zoomValue"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->BIXBY_COMMAND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    const/4 v2, -0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p2, v1, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->findNextButtonIndexUsingZoomValue(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->findNextButtonIndex(I)I

    move-result p2

    if-ne p2, v2, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    return p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPositionAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->cancelValueAnimator(Landroid/animation/ValueAnimator;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomValueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->cancelValueAnimator(Landroid/animation/ValueAnimator;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mShortcutData:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$TPffpDn-tWPIjZcxSYqj5EAuhwY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$TPffpDn-tWPIjZcxSYqj5EAuhwY;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mBarCountMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$G3VO6i5alrg7FiPAMM2r6cR9dDk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$G3VO6i5alrg7FiPAMM2r6cR9dDk;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$lLyRaMCfil66Y_u4ZaM16C9fTnI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$lLyRaMCfil66Y_u4ZaM16C9fTnI;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomCurveDataHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$OnYBY24wIBoOx5Odg1hTPCRuDno;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$OnYBY24wIBoOx5Odg1hTPCRuDno;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomSliderMagneticScrollHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$Wp4xoU17GgjCajAJ-IY6mrkrDnc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$Wp4xoU17GgjCajAJ-IY6mrkrDnc;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->slider:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomAreaReductionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomTextHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    return-void
.end method

.method public disableZoomLevelChangeAnimation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mDisableLevelChangeAnimation:Z

    return-void
.end method

.method public enableTouchEvent()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$GestureListener;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public extendArea()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->extendArea(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V

    return-void
.end method

.method public extendNormalPositionArea()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getBaseLineByType(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->startBaseLineAnimation(FF)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->extendArea(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V

    return-void
.end method

.method public getButtonAreaVisibleRect()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->middleArea:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    return-object v0
.end method

.method public getLensButtonVisibleRect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Landroid/graphics/Rect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensCommandId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getLensButtonVisibleRect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public handleGestureEvent(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "inputType"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomConditionChecker:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->isAngleAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onGestureEventRequested(ILcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public handleKeyDownEvent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomConditionChecker:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->isZoomAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSliderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onSALogControlZoomRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onSALogStartToZoomRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeAreaReductionMessage()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setIgnoreScrollEvent(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->extendNormalPositionArea()V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onZoomKeyDownRequested(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public handleKeyUpEvent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyCode"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomConditionChecker:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->isZoomAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->PRO:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->refreshExtendPosition()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setIgnoreScrollEvent(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->restartZoomAutoHideMessage()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onZoomKeyUpRequested(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideLensButton()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    const/16 v1, 0x64

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$E7XtfLou4f_JsNWrCQ6tSOPNvi4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$E7XtfLou4f_JsNWrCQ6tSOPNvi4;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideViewWithAlphaAnimation(Landroid/view/View;ILjava/util/function/Consumer;)V

    return-void
.end method

.method public hideZoomInMic()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomInMicCircle:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomInMic:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideZoomText(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$pw2LtYfIv9BrKoQEEEYsOjMupPA;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$pw2LtYfIv9BrKoQEEEYsOjMupPA;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public horizontalScrollSlider(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->scrollBy(II)V

    return-void
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomCurveDataHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomCurveDataHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomSliderMagneticScrollHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomSliderMagneticScrollHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    :cond_1
    return-void
.end method

.method public initializeLensButtonBackground(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blackAreaBottomPosition"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setLensButtonBackground(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public initializeShortcutBackground(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blackAreaBottomPosition"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setShortcutBackground(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public initializeShortcutList()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$ContentsItemDecoration;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$ContentsItemDecoration;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public initializeSlider()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->slider:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->clearBarRangeArray()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->slider:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->slider:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mShortcutData:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mBarCountMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->initialize(Ljava/util/List;Ljava/util/Map;)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onZoomShortcutDataPrepared(Landroid/util/SparseIntArray;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomSliderMagneticScrollHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->setAreaStartValueArray(Landroid/util/SparseIntArray;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$w3XU5tzGCUq7NxHNZYYBenXX3ek;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$w3XU5tzGCUq7NxHNZYYBenXX3ek;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$3;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->setScrollEventListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$ScrollEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->setAccessibilityScrollActionListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView$AccessibilityScrollActionListener;)V

    return-void
.end method

.method public isAnimationFinished()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsAnimationFinished:Z

    return p0
.end method

.method public isExtend()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    return p0
.end method

.method public isScaleZoomSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS_AND_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p0, v0, :cond_0

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

.method public isSliderScrolling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsScrolling:Z

    return p0
.end method

.method public isSliderShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomConditionChecker:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->isZoomAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomConditionChecker:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->isZoomSupported()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$handleZoomLevelChangeAnimation$9$ZoomView(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onAnimationValueChanged(I)V

    return-void
.end method

.method public synthetic lambda$hideZoomText$2$ZoomView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->changeZoomTextType()Z

    return-void
.end method

.method public synthetic lambda$initializeSlider$3$ZoomView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onTouchEventRequested()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->handleSliderTouch(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return v0
.end method

.method public synthetic lambda$new$0$ZoomView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideZoomText(I)V

    return-void
.end method

.method public synthetic lambda$onOrientationChanged$4$ZoomView(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->setOrientation(I)V

    return-void
.end method

.method public synthetic lambda$refreshBackground$13$ZoomView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getSliderTopPosition()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onRefreshBackgroundRequested(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;I)V

    return-void
.end method

.method public synthetic lambda$refreshLensButton$5$ZoomView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->handleButtonTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$refreshShortcutSelect$14$ZoomView(ILcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    iget-object v0, p2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->getValue()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v1, :cond_1

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showZoomText$6$ZoomView(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setScaleX(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setScaleY(F)V

    return-void
.end method

.method public synthetic lambda$startBaseLineAnimation$15$ZoomView(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    sub-float/2addr p2, p1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onBottomGuideLineChanged()V

    return-void
.end method

.method public synthetic lambda$startHandler$16$ZoomView(JLjava/util/ArrayList;I)V
    .locals 7

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mActiveAnimationId:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsAnimationFinished:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->zoomLevelChangeAnimationFinished()V

    return-void

    :cond_1
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;->getZoomRatio()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onAnimationValueChanged(I)V

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;->getNextStepDuration()I

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v6, p4, 0x1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge v6, p4, :cond_2

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->startHandler(JLjava/util/ArrayList;Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p1, p2, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->updateZoomValue(I)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->zoomLevelChangeAnimationFinished()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$updateShortcutSelected$17$ZoomView(ILcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;)V
    .locals 1

    iget-object v0, p2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomShortcutListItemBinding;->zoomItem:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->getValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->convertZoomLevelToZoomRatio(I)F

    move-result p2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->convertZoomLevelToZoomRatio(I)F

    move-result p0

    cmpl-float p0, p2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->setSelected(Z)V

    return-void
.end method

.method public synthetic lambda$updateZoomText$7$ZoomView(I)V
    .locals 7

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    div-int/lit8 v3, p1, 0x64

    mul-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%.1f"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getTextType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getPrefixName(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u200e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    const/16 v1, 0x12

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070215

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0701f4

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomText:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int p1, p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$5;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1204f2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public makeShortcutAdapter()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mShortcutData:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->setZoomShortcutButtonClickListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter$ZoomShortcutClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;->setOrientation(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildMenuCommand(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/galaxyraw/command/EmptyCommand;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCommandId(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->onLensButtonClick(Landroid/view/View;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    invoke-virtual {p1}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onSALogRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildValue(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onSALogLensTypeRequested(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->changeZoomLevel(I)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_2

    instance-of p0, p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->startBounceAnimation()V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onTouchEventRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
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

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomSliderMagneticScrollHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomSliderMagneticScrollHelper;->onOrientationChanged(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->onOrientationChanged(I)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutAdapter;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$Un7hMgXJEMFnwLn7zqsqsH_G7Tk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$Un7hMgXJEMFnwLn7zqsqsH_G7Tk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setRotation(F)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomInMic:Landroid/widget/RelativeLayout;

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onScrollBackward()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setIgnoreScrollEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onScrollBackwardRequested()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setIgnoreScrollEvent(Z)V

    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollX",
            "scrollY",
            "oldScrollX",
            "oldScrollY"
        }
    .end annotation

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->isIgnoreScrollEvent()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->slider:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCenterPosArray:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getMaxZoomLevel(Landroid/util/SparseIntArray;)I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getZoomLevelByScrollValue(I)I

    move-result p1

    :goto_0
    if-gez p1, :cond_4

    return-void

    :cond_4
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->slider:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->addBarRangeData()V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p3, p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onScrollChanged(II)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p3, p3, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->slider:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->getHapticPattern(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    const/4 p4, 0x0

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {p3, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onReachZoomBar(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->updateZoomText(I)V

    return-void
.end method

.method public onScrollForward()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setIgnoreScrollEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onScrollForwardRequested()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setIgnoreScrollEvent(Z)V

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

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onTouchEventRequested()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->handleButtonTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
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

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeAreaReductionMessage()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->reduceArea()V

    :cond_0
    return-void
.end method

.method public onZoomShortcutClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutButton;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->changeZoomLevel(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/galaxyraw/util/ViewPropertyAnimatorHelper;->startDefaultBounceAnimation(Landroid/content/Context;Landroid/view/View;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onSALogShortCutRequested(I)V

    :cond_1
    return-void
.end method

.method public reduceArea()V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideZoomText(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getBaseLineByType()F

    move-result v2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView$4;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->startBaseLineAnimation(FFLandroid/animation/AnimatorListenerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/16 v2, 0x64

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideZoomSlider(I)V

    if-eqz v0, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideZoomShortcut(I)V

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideZoomText(I)V

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    return-void
.end method

.method public refreshChildViewVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mSupportUiSet:Ljava/util/EnumSet;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public refreshExtendPosition()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->startBaseLineAnimation(FF)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->refreshBackground()V

    return-void
.end method

.method public refreshLensButton(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buttonList",
            "defaultValue",
            "commandArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/command/MenuCommand;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setOrientation(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    invoke-virtual {v0, v1, p1, p3, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->updateData(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/List;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->initialize()V

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setOrientation(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    invoke-virtual {v0, v1, p1, p3, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->makeAdapter(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/List;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setButtonTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$dh7mYiMIGU6Lsdi__56kdmdfouE;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$dh7mYiMIGU6Lsdi__56kdmdfouE;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->needLensButtonBackground()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f08098f

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_2
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public refreshProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "supportUiSet",
            "zoomPositionType",
            "buttonList",
            "zoomAvailabilityChecker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mBeforeGuideLineUpdated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getBaseLineByType(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mBeforeGuideLineUpdated:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomConditionChecker:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;

    invoke-virtual {v0, p5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->setZoomAvailabilityChecker(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomAvailabilityChecker;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onRefreshPropertyRequested(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;Ljava/util/List;)V

    return-void
.end method

.method public removeZoomAutoHideMessage()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeAreaReductionMessage()V

    return-void
.end method

.method public resetBaseLine()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getBaseLineByType()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->startBaseLineAnimation(FF)V

    return-void
.end method

.method public resetChildView()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideZoomSlider(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideZoomShortcut(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->hideZoomText(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->showLensButton()V

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    return-void
.end method

.method public resetLocalVariable()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsScrolling:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsAnimationFinished:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mDisableLevelChangeAnimation:Z

    return-void
.end method

.method public resetZoomPositionType()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getBaseLineByType()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->startBaseLineAnimation(FF)V

    return-void
.end method

.method public restartZoomAutoHideMessage()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeZoomTextHideRunnable()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomAreaReductionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomAreaReductionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomAreaReductionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public restartZoomTextHideRunnable()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomTextHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomTextHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomTextHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scrollSlider(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getScrollValueByZoomLevel(I)I

    move-result v0

    if-gez v0, :cond_2

    const-string p0, "ZoomView"

    const-string p1, "translateZoomSlider, scroll value is wrong."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->setScrollX(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->updateZoomText(I)V

    return-void
.end method

.method public setButtonSelectionStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS_NAME_AND_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS_AND_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->updateSelectedButtonText(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setButtonSelectionStatus(I)V

    :goto_0
    return-void
.end method

.method public setIgnoreScrollEvent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->setIgnoreScrollEvent(Z)V

    return-void
.end method

.method public setLensButtonBackground(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blackAreaBottomPosition"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->needLensButtonBackground()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setDarkMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f08098f

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setDarkMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f080990

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    return-void
.end method

.method public setShortcutBackground(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blackAreaBottomPosition"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->setDarkMode(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->updateChildBackground()V

    return-void
.end method

.method public setShortcutData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shortcutData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mShortcutData:Ljava/util/List;

    return-void
.end method

.method public setSliderPadding()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070214

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->slider:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->setPadding(IIII)V

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->reduceArea()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->resetBaseLine()V

    :goto_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method public setZoomBarMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "barCountMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mBarCountMap:Ljava/util/Map;

    return-void
.end method

.method public setZoomConditionChecker(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomConditionChecker"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomConditionChecker:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;

    return-void
.end method

.method public setZoomPositionType(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomPositionType"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getBaseLineByType()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->startBaseLineAnimation(FF)V

    return-void
.end method

.method public setZoomProperty(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "supportUiSet",
            "zoomPositionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mCurrentZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mSupportUiSet:Ljava/util/EnumSet;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    return-void
.end method

.method public showZoomInMic()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomInMic:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomInMic:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomInMic:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomInMicCircle:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setVisibility(I)V

    return-void
.end method

.method public showZoomNotSupportedToast(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showZoomShortcut()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SHORTCUT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->setAlpha(F)V

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->restartZoomAutoHideMessage()V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mIsExtension:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->showViewWithAlphaAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomPositionType:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;->RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomPositionType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->startBaseLineAnimation(FF)V

    :cond_2
    return-void
.end method

.method public showZoomSlider(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getScrollValueByZoomLevel(I)I

    move-result v0

    if-gez v0, :cond_2

    const-string p0, "ZoomView"

    const-string p1, "showZoomSlider, scroll value is wrong."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->setScrollX(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->sliderLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->showViewWithAlphaAnimation(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->updateShortcutSelected(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->refreshBackground()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getZoomValueTtsString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->scrollView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomHorizontalScrollView;->semRequestAccessibilityFocus()Z

    :cond_3
    return-void
.end method

.method public showZoomText()V
    .locals 6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->changeZoomTextType()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->getVisibility()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setAlpha(F)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomTextLayout:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTextView;->setRotation(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3f19999a    # 0.6f

    const v5, 0x3fcccccd    # 1.6f

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$xSMnLo0WwlSQCQvIGUZIJSTEaUA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$xSMnLo0WwlSQCQvIGUZIJSTEaUA;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public speakZoomTts(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getZoomValueTtsString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startZoomLevelChangeAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "zoomValue",
            "targetZoomValue"
        }
    .end annotation

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mDisableLevelChangeAnimation:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->zoomLevelChangeAnimationStarted()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;

    invoke-interface {p1, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomContract$Presenter;->onAnimationValueChanged(I)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->updateZoomValue(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->zoomLevelChangeAnimationFinished()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomCurveDataHelper:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomCurveDataHelper;->getZoomCurveDataList(II)Ljava/util/ArrayList;

    move-result-object v4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->FOV:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-eq p1, v0, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mZoomConditionChecker:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomConditionChecker;->isSmoothZoomSupported()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->zoomLevelChangeAnimationStarted()V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mActiveAnimationId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mActiveAnimationId:I

    int-to-long v2, p1

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->startHandler(JLjava/util/ArrayList;Lcom/samsung/android/app/galaxyraw/data/ZoomCurveItem;I)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->handleZoomLevelChangeAnimation(II)V

    :goto_1
    return-void
.end method

.method public updateLensButtonBackground(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blackAreaBottomPosition",
            "isExtend"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->needLensButtonBackground()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->isDarkMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setDarkMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f080990

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->isDarkMode()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getHeight()I

    move-result p2

    add-int/2addr v0, p2

    if-le v0, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setDarkMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->lensButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f08098f

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateShortcutBackground(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blackAreaBottomPosition",
            "isExtend"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->isDarkMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->setDarkMode(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->updateChildBackground()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->isDarkMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->getHeight()I

    move-result p2

    add-int/2addr v0, p2

    if-le v0, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->setDarkMode(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->shortcut:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomShortcutView;->updateChildBackground()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateZoomInMicProgress(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenZoomBinding;->zoomInMicCircle:Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;->setProgress(F)V

    return-void
.end method

.method public updateZoomText(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$u0SsGLZK4_qCGdgSP-QvqoxQsmc;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomView$u0SsGLZK4_qCGdgSP-QvqoxQsmc;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateZoomValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomLevel"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->updateZoomText(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->setButtonSelectionStatus(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomView;->updateShortcutSelected(I)V

    return-void
.end method
