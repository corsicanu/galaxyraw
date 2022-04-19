.class public Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;
.super Landroid/widget/RelativeLayout;
.source "AeAfGroup.java"


# instance fields
.field private final EV_SLIDER_MOVE_THRESHOLD:I

.field private final SLIDER_STEP_WIDTH:I

.field private mConsumeEvent:Z

.field private mInitialEvValue:I

.field private mIsAvailableMoveEvSlider:Z

.field private mOrientation:I

.field private mStartedEvDownPosition:I

.field private mSupportUiSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownPosition:I

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mIsAvailableMoveEvSlider:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704b5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->EV_SLIDER_MOVE_THRESHOLD:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704b6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    div-int/2addr p2, v0

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->SLIDER_STEP_WIDTH:I

    const-class p2, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mSupportUiSet:Ljava/util/EnumSet;

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mOrientation:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mIsAvailableMoveEvSlider:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0704b5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->EV_SLIDER_MOVE_THRESHOLD:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0704b6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0b00be

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    div-int/2addr p2, p3

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->SLIDER_STEP_WIDTH:I

    const-class p2, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mSupportUiSet:Ljava/util/EnumSet;

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mOrientation:I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->initView()V

    return-void
.end method

.method private handleEvSliderEvent(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPosition"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mStartedEvDownPosition:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->SLIDER_STEP_WIDTH:I

    div-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mOrientation:I

    const/16 v1, -0x5a

    if-ne v0, v1, :cond_0

    neg-int p1, p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->evSlider:Landroid/widget/SeekBar;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mInitialEvValue:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    return-void
.end method

.method private isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ui"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mSupportUiSet:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private refreshProperty()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->evSlider:Landroid/widget/SeekBar;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->EV_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeLockBtn:Landroid/widget/ImageView;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->LOCK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->touchAeAfText:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->LOCK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeBasicCircle:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeBasicCircle:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getAeAfFocusHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getAeAfFocusWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public hideCircle()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideLockButton()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeLockBtn:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onTouchSlider(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->EV_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mOrientation:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    return v1

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mIsAvailableMoveEvSlider:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mTouchDownPosition:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->EV_SLIDER_MOVE_THRESHOLD:I

    if-ge p1, v1, :cond_3

    return v2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setAlpha(F)V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mTouchDownPosition:I

    if-ge p1, v0, :cond_4

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->EV_SLIDER_MOVE_THRESHOLD:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mStartedEvDownPosition:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->EV_SLIDER_MOVE_THRESHOLD:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mStartedEvDownPosition:I

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mIsAvailableMoveEvSlider:Z

    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->handleEvSliderEvent(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mConsumeEvent:Z

    return p1

    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mIsAvailableMoveEvSlider:Z

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mConsumeEvent:Z

    return p0

    :cond_7
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mIsAvailableMoveEvSlider:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mConsumeEvent:Z

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mTouchDownPosition:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->evSlider:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mInitialEvValue:I

    return v2
.end method

.method public setEvSliderStep(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "step"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->EV_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->evSlider:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeLockBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->evSlider:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mOrientation:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeLockBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->evSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSelected(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->touchAeAfText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060059

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->touchAeAfText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005a

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    return-void
.end method

.method public setSupportUi(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportUiSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mSupportUiSet:Ljava/util/EnumSet;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->refreshProperty()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->TEXT:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->touchAeAfText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showAeAfGroup()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setAlpha(F)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->refreshProperty()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->setVisibility(I)V

    return-void
.end method

.method public showAeAfLockAnimation()V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->showAeAfGroup()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->LOCK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getScaleX()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    const v7, 0x3f666666    # 0.9f

    aput v7, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const v4, 0x3ea3d70a    # 0.32f

    const v8, 0x3f70a3d7    # 0.94f

    const v9, 0x3f19999a    # 0.6f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v8, v9, v10}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f0b0002

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v12, v2

    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v3, [F

    iget-object v14, v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v14, v14, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getScaleY()F

    move-result v14

    aput v14, v13, v6

    aput v7, v13, v5

    invoke-static {v2, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v7, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    invoke-direct {v7, v4, v8, v9, v10}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v7, v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v7, v7, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const v9, 0x3e2e147b    # 0.17f

    const v11, 0x3f63d70a    # 0.89f

    const/high16 v12, 0x3fa00000    # 1.25f

    invoke-direct {v8, v9, v11, v4, v12}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f0b0003

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v14, v8

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v14, 0x7f0b0004

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v14, v8

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v8, v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v8, v8, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v3, [F

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleY()F

    move-result v3

    aput v3, v15, v6

    aput v10, v15, v5

    invoke-static {v8, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v8, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    invoke-direct {v8, v9, v11, v4, v12}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0004

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v6

    aput-object v2, v4, v5

    const/4 v1, 0x2

    aput-object v7, v4, v1

    const/4 v1, 0x3

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showEvSlider()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->EV_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->evSlider:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    return-void
.end method

.method public translateEvPosition(Landroid/graphics/Rect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boundary"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->EV_SLIDER:Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->isSupportView(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getRotation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->evSlider:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setY(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->evSlider:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setY(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->evSlider:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfGroup;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/TouchAeAfBinding;->afAeCircle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setY(F)V

    :goto_0
    return-void
.end method
