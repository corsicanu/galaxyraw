.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;
.super Landroid/widget/RelativeLayout;
.source "CenterButtonView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$View;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;


# static fields
.field private static final DAMPING_RATIO_SCALE_SHUTTER_BUTTON_SWIPE_DOWN:F = 0.8f

.field private static final DAMPING_RATIO_SCALE_SHUTTER_BUTTON_TOUCH_DOWN:F = 0.8f

.field private static final DAMPING_RATIO_SCALE_SHUTTER_BUTTON_TOUCH_UP:F = 0.3f

.field private static final DAMPING_RATIO_TRANSLATION_SHUTTER_BUTTON_SWIPE_DOWN:F = 0.66f

.field private static final DAMPING_RATIO_TRANSLATION_SHUTTER_BUTTON_SWIPE_UP:F = 0.7f

.field private static final INITIAL_SHUTTER_BUTTON_QUICK_TAKE_SCALE_RATIO:F = 0.64f

.field private static final MIN_SHUTTER_BUTTON_QUICK_TAKE_SCALE_RATIO:F = 0.85f

.field private static final MIN_SHUTTER_BUTTON_SCALE_RATIO:F = 0.95f

.field private static final STIFFNESS_SCALE_SHUTTER_BUTTON_SWIPE_DOWN:F = 50.0f

.field private static final STIFFNESS_SCALE_SHUTTER_BUTTON_TOUCH_DOWN:F = 180.0f

.field private static final STIFFNESS_SCALE_SHUTTER_BUTTON_TOUCH_UP:F = 130.0f

.field private static final STIFFNESS_TRANSLATION_SHUTTER_BUTTON_SWIPE_DOWN:F = 600.0f

.field private static final STIFFNESS_TRANSLATION_SHUTTER_BUTTON_SWIPE_UP:F = 200.0f

.field private static final TAG:Ljava/lang/String; = "CenterButtonView"


# instance fields
.field private mBurstCountTextTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mButtonActionManager:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;

.field private mCellDivisionAnimator:Landroid/animation/ValueAnimator;

.field private final mCellDivisionAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

.field private mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mCenterButtonTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mCenterImageAnimationResourceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAnimationCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private mIsBurstCountTextShowRequired:Z

.field private mIsBurstShutterButtonAnimationRequired:Z

.field private mIsCurrentRecordingMode:Z

.field private mIsSwipeDownReachMax:Z

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

.field private mQuickTakeButtonState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

.field private final mRewindCellDivisionAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mShutterColorAnimation:Landroid/animation/ValueAnimator;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;


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

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterImageAnimationResourceIdMap:Ljava/util/Map;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-direct {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCellDivisionAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$3;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mRewindCellDivisionAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->initView(Landroid/content/Context;)V

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

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterImageAnimationResourceIdMap:Ljava/util/Map;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-direct {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCellDivisionAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$3;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mRewindCellDivisionAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    return-object p0
.end method

.method private getCommandIdForAvd(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$6;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    return-object p1

    :pswitch_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleCenterButtonClick()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCenterButtonClick state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buttonResourceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CenterButtonView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRecordButtonClick()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRecordStopButtonClick()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onShutterButtonClick()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private handlePauseButtonClick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->PAUSING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onResumeButtonClick()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onPauseButtonClick()Z

    :goto_0
    return-void
.end method

.method private handleStopButtonClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRecordStopButtonClick()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onStopButtonClick()Z

    :goto_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
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

    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    return-void
.end method

.method public static synthetic lambda$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0(Landroid/animation/ValueAnimator;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onLongPress$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOrientationChanged$5(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$onOrientationChanged$6(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$onSwipeMove$7(FLandroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$onTouch$10(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43020000    # 130.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$onTouch$11(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43020000    # 130.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$onTouch$12(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$onTouch$13(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$refreshButton$14(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$refreshButton$15(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$resetView$16(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method static synthetic lambda$resetView$17(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$resetView$18(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$resetView$19(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$resetView$20(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$startCenterButtonSpringAnimation$21(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$startCenterButtonSpringAnimation$22(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$startCenterButtonSpringAnimation$23(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x44160000    # 600.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const v0, 0x3f28f5c3    # 0.66f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method static synthetic lambda$startCenterButtonSpringAnimation$24(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x44160000    # 600.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const v0, 0x3f28f5c3    # 0.66f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method static synthetic lambda$updateQuickTakeResource$27(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method static synthetic lambda$updateQuickTakeResource$28(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method private updateCustomResource(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$6;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->centerButtonContainer:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->centerButtonContainer:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateNormalResource(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method private updatePauseStopResource(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;Landroid/animation/ValueAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "cellDivisionAnimator"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCellDivisionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCellDivisionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCellDivisionAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$6;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    const/4 v1, 0x4

    if-eq p1, p2, :cond_3

    if-eq p1, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCellDivisionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCellDivisionAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->centerButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopPauseButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->pauseButtonIcon:Landroid/widget/ImageView;

    const p2, 0x7f0806a4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f1203ef

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCellDivisionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCellDivisionAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->centerButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopPauseButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->pauseButtonIcon:Landroid/widget/ImageView;

    const p2, 0x7f0806a3

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f12037e

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCellDivisionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mRewindCellDivisionAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->centerButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopPauseButtonArea:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateQuickTakeResource(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$6;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f0b000d

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->quickTakeAnimationImage:Landroid/widget/ImageView;

    const v0, 0x3f23d70a    # 0.64f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->quickTakeAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->quickTakeAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$_c_JjsPau1Lbon6-XwWCjlSDujE;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$_c_JjsPau1Lbon6-XwWCjlSDujE;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->quickTakeAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3f933333    # 1.15f

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v3, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v7, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$hoY3jcALvdLojICO4cCxwBEcwU8;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$hoY3jcALvdLojICO4cCxwBEcwU8;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060017

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v3, v8

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f060016

    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v0

    invoke-static {p1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v5, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$3d6W4ZnUMkUS4TfCtaoFEfRQnLw;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$3d6W4ZnUMkUS4TfCtaoFEfRQnLw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$5;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$HCrocrXnOmQntCUXZrqJQhvESR0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$HCrocrXnOmQntCUXZrqJQhvESR0;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$8navAB6PDzhtV4QoytvmMfbIyJo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$8navAB6PDzhtV4QoytvmMfbIyJo;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v8}, Landroid/widget/ImageButton;->setPressed(Z)V

    :goto_0
    return-void
.end method

.method private updateStopResource(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$6;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    const v0, 0x7f080698

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120450

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getNormalOverlapResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1203de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterImageAnimationResourceIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_3
    return-void
.end method

.method public enableLongPressAction()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->setLongPressListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonLongPressAction$LongPressListener;)V

    return-void
.end method

.method public enableSwipeDownAction()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->setSwipeDownListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeDownAction$SwipeDownListener;)V

    return-void
.end method

.method public enableSwipeUpAction()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->setSwipeUpListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonSwipeUpAction$SwipeUpListener;)V

    return-void
.end method

.method public getButtonProperty()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getNormalOverlapResourceId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getCenterButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p0

    return-object p0
.end method

.method public getQuickTakeButtonState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    return-object p0
.end method

.method public hideBurstShotCountNumber()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstCountTextShowRequired:Z

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstShutterButtonAnimationRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$YhSo5nNQ61JakIB-gqh0Ea9jBLs;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$YhSo5nNQ61JakIB-gqh0Ea9jBLs;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$mRFtqidaaRL4o-YRdGD9hMVgQXw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$mRFtqidaaRL4o-YRdGD9hMVgQXw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->pauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$iWWN_jhr5FS9dIhVIZH13a_RiGw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$iWWN_jhr5FS9dIhVIZH13a_RiGw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->centerButtonContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public isRecordingMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsCurrentRecordingMode:Z

    return p0
.end method

.method public synthetic lambda$initialize$0$CenterButtonView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->handleCenterButtonClick()V

    return-void
.end method

.method public synthetic lambda$initialize$1$CenterButtonView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->handleStopButtonClick()V

    return-void
.end method

.method public synthetic lambda$initialize$2$CenterButtonView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->handlePauseButtonClick()V

    return-void
.end method

.method public synthetic lambda$onLongPress$4$CenterButtonView(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->centerButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->quickTakeAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public synthetic lambda$onSwipeMove$8$CenterButtonView(FLandroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    sub-float/2addr p1, p0

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public synthetic lambda$onSwipeMove$9$CenterButtonView(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public synthetic lambda$updateQuickTakeResource$25$CenterButtonView()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->quickTakeAnimationImage:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$updateQuickTakeResource$26$CenterButtonView(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->quickTakeAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public synthetic lambda$updateQuickTakeResource$29$CenterButtonView()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->quickTakeAnimationImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onLongPress()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$8eCpWnRHO3y_s8m9iRdM9S-CNLw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$8eCpWnRHO3y_s8m9iRdM9S-CNLw;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060016

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060017

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$2SQZO8W9Wn1UTaKnE-TNhgvlPfw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$2SQZO8W9Wn1UTaKnE-TNhgvlPfw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onMoveAfterSwipeUp(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onFloatingShutterButtonMove(II)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->pauseButtonIcon:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopButtonIcon:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$dt4xWLAtMzPAFottBYygNT8tnA0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$dt4xWLAtMzPAFottBYygNT8tnA0;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$7M6vz93_vLZkOKT1XhaQg-cHvbw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$7M6vz93_vLZkOKT1XhaQg-cHvbw;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSwipeDownEnd(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posY"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onSwipeDownEnd()V

    return-void
.end method

.method public onSwipeDownReachMax()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onSwipeDownReachMax()V

    return-void
.end method

.method public onSwipeDownStart()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onSwipeDownStarted()Z

    move-result p0

    return p0
.end method

.method public onSwipeMove(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posY"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstCountTextShowRequired:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$-fSF1sU27w3FIxhl6FGQqBcU99g;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$-fSF1sU27w3FIxhl6FGQqBcU99g;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$xBQXyO8gEUQyTJrvNRZHY1TdvlQ;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$xBQXyO8gEUQyTJrvNRZHY1TdvlQ;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;F)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$5f3L5lTQsp0hT0qtUB6sSQlfBjc;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$5f3L5lTQsp0hT0qtUB6sSQlfBjc;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_1
    return-void
.end method

.method public onSwipeUp()Z
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onShutterButtonSwipeUp(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$_fs5rZBssMJSV2uS3wEe99nPrcw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$_fs5rZBssMJSV2uS3wEe99nPrcw;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$qo1ESnFa_H28CgT9uhiGhtQSb6s;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$qo1ESnFa_H28CgT9uhiGhtQSb6s;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$zOKtgw6TbsPTZbYdOeBtCqYaf6w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$zOKtgw6TbsPTZbYdOeBtCqYaf6w;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$zInGpASU0PxpFPeVGQj3AP4VyUQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$zInGpASU0PxpFPeVGQj3AP4VyUQ;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->shutterOutline:Landroid/widget/ImageView;

    const v1, 0x7f080962

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    sget-object v4, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    sget-object v4, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    sget-object v4, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    sget-object v4, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v5, 0x3f733333    # 0.95f

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%d"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->shutterOutline:Landroid/widget/ImageView;

    const v1, 0x7f080963

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsSwipeDownReachMax:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstCountTextShowRequired:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->PREPARING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->STARTING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v3, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    return v2

    :cond_6
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;->STOPPING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRecordStopButtonClick()Z

    move-result p0

    return p0
.end method

.method public refreshButton(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getCommandIdForAvd(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$hh5vz7R8X3XHUfTDosoVXyq3GU0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$hh5vz7R8X3XHUfTDosoVXyq3GU0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$3eVa9wzZVs5dBttFkIWlB9QT7zs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$3eVa9wzZVs5dBttFkIWlB9QT7zs;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCurrentAnimationCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterImageAnimationResourceIdMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getCommandIdForAvd(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCurrentAnimationCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$4;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalOverlapImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getNormalOverlapResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->refreshFloatingShutterButton(Z)V

    return-void
.end method

.method public refreshFloatingShutterButton(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCenterButtonVisible"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;->onRefreshFloatingShutterButton(Z)V

    return-void
.end method

.method public resetCenterButtonAction()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mButtonActionManager:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/ButtonActionManager;->resetCenterButtonAction()V

    return-void
.end method

.method public resetView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mShutterColorAnimation:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$cKiE6iaDNlZRaIuvtIZz2Y1Tjg0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$MwqCvDIsT1YQA__mwThru8NH6IE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$MwqCvDIsT1YQA__mwThru8NH6IE;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->quickTakeAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$Uu0_Yte45ck5ql5JejpSa-bgDYc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$Uu0_Yte45ck5ql5JejpSa-bgDYc;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$KSSBsVq2DmiH13tR8685LjIOuJ0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$KSSBsVq2DmiH13tR8685LjIOuJ0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$9uDAek09zNFHCKyBs7VMUa6FwNs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$9uDAek09zNFHCKyBs7VMUa6FwNs;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$CwugIMAkh8pbwjxm5IcNhJz7u7Y;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$CwugIMAkh8pbwjxm5IcNhJz7u7Y;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public semRequestAccessibilityFocus()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->PAUSE_STOP:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getState()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->semRequestAccessibilityFocus()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->semRequestAccessibilityFocus()Z

    move-result p0

    return p0
.end method

.method public setButtonProperty(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonProperty"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->setCapturingResourceType(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->setNormalOverlapResourceId(I)V

    return-void
.end method

.method public setCapturingProgress(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->stopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;

    return-void
.end method

.method public setQuickTakeButtonState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mQuickTakeButtonState:Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    return-void
.end method

.method public setRecordingMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRecordingMode"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsCurrentRecordingMode:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f1203de

    goto :goto_0

    :cond_0
    const p1, 0x7f120466

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->refreshFloatingShutterButton(Z)V

    return-void
.end method

.method public showBurstShotCountNumber(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAnimation"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstShutterButtonAnimationRequired:Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mIsBurstShutterButtonAnimationRequired:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->burstCountText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public startCenterButtonSpringAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$lP6ecQUylAbCeaqbYc0byQwOOEY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$lP6ecQUylAbCeaqbYc0byQwOOEY;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$Q7wuskizbwC1qCbqT-6_IHpxrSs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$Q7wuskizbwC1qCbqT-6_IHpxrSs;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$XQNT1ldhRs1TfP_74WCalhC2zGI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$XQNT1ldhRs1TfP_74WCalhC2zGI;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mBurstCountTextTranslationYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$wtXeNxOrxCW0NVi4nVHPnne4ivA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/-$$Lambda$CenterButtonView$wtXeNxOrxCW0NVi4nVHPnne4ivA;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenCenterButtonBinding;->normalCenterButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    return-void
.end method

.method public updateButton(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;Landroid/animation/ValueAnimator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "cellDivisionAnimator"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButton state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buttonResourceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->getCapturingResourceType()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CenterButtonView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->mCenterButtonInfo:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonInfo;->setState(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView$6;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$KeyScreenLayerManager$CenterButtonCapturingResourceType:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonCapturingResourceType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p2, 0x2

    if-eq v0, p2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    const/4 p2, 0x4

    if-eq v0, p2, :cond_1

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->updateQuickTakeResource(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->updateNormalResource(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->updateCustomResource(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->updateStopResource(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;->updatePauseStopResource(Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager$CenterButtonState;Landroid/animation/ValueAnimator;)V

    :goto_0
    return-void
.end method
