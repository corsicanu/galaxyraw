.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;
.super Landroid/widget/FrameLayout;
.source "QuickSettingView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingMainListItemAnimator;,
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;,
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;
    }
.end annotation


# static fields
.field private static final HIDE_SUB_QUICK_SETTING_TIME_INTERVAL:J = 0xbb8L


# instance fields
.field private mButtonClickListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;

.field private mButtonTouchListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;

.field private final mHideSubQuickSettingRunnable:Ljava/lang/Runnable;

.field private mIsResizableMode:Z

.field private mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

.field private mMainItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;

.field private mOrientation:I

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;

.field private final mQuickSettingItemAlignMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;",
            ">;"
        }
    .end annotation
.end field

.field private mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$Tn3NAsj7ZclF-Sw-gY53_Zaca3A;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$Tn3NAsj7ZclF-Sw-gY53_Zaca3A;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mHideSubQuickSettingRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mOrientation:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mIsResizableMode:Z

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;

    const-class v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mQuickSettingItemAlignMap:Ljava/util/EnumMap;

    return-void
.end method

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

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$Tn3NAsj7ZclF-Sw-gY53_Zaca3A;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$Tn3NAsj7ZclF-Sw-gY53_Zaca3A;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mHideSubQuickSettingRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mOrientation:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mIsResizableMode:Z

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;

    const-class p2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mQuickSettingItemAlignMap:Ljava/util/EnumMap;

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$Tn3NAsj7ZclF-Sw-gY53_Zaca3A;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$Tn3NAsj7ZclF-Sw-gY53_Zaca3A;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mHideSubQuickSettingRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mOrientation:I

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mIsResizableMode:Z

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;

    const-class p2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mQuickSettingItemAlignMap:Ljava/util/EnumMap;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->restartSubQuickSettingTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)Ljava/util/EnumMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mQuickSettingItemAlignMap:Ljava/util/EnumMap;

    return-object p0
.end method

.method private calculateVisibleRect(Landroid/graphics/Rect;IILcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "position",
            "numOfItems",
            "quickSettingItemAlign"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->getWidth()I

    move-result v4

    invoke-static {v3, v4, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->access$400(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;II)I

    move-result v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->END:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    const/16 v5, 0x5a

    if-ne p4, v4, :cond_1

    iget p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mOrientation:I

    if-eq p4, v5, :cond_1

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object p4, p4, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->getWidth()I

    move-result p4

    mul-int v4, v1, p3

    sub-int/2addr p4, v4

    add-int/lit8 v4, p3, -0x1

    mul-int/2addr v4, v3

    sub-int/2addr p4, v4

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mOrientation:I

    const/16 v4, -0x5a

    if-eq p0, v4, :cond_4

    if-eqz p0, :cond_3

    if-eq p0, v5, :cond_2

    goto :goto_1

    :cond_2
    iget p0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v2

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iget p0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p4

    add-int/2addr v3, v1

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr v3, p3

    add-int/2addr p0, v3

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->right:I

    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    iget p0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p4

    add-int/2addr v3, v1

    mul-int/2addr v3, p2

    add-int/2addr p0, v3

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iget p0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v2

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->right:I

    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_4
    iget p0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v2

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iget p0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p4

    add-int/2addr v3, v1

    mul-int/2addr v3, p2

    add-int/2addr p0, v3

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->right:I

    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    return-void
.end method

.method static synthetic lambda$onOrientationChanged$1(ILcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic lambda$onOrientationChanged$2(ILcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->onOrientationChanged(I)V

    return-void
.end method

.method private restartSubQuickSettingTimer()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mHideSubQuickSettingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mHideSubQuickSettingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopSubQuickSettingTimer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mHideSubQuickSettingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    return-void
.end method

.method public getQuickSettingItemVisibleRect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Landroid/graphics/Rect;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->getItemPositionByCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mQuickSettingItemAlignMap:Ljava/util/EnumMap;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;->END:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    invoke-virtual {v3, p1, v4}, Ljava/util/EnumMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->calculateVisibleRect(Landroid/graphics/Rect;IILcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingItemAlign;)V

    return-object v1
.end method

.method public hideSubQuickSetting()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->stopSubQuickSettingTimer()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0041

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingView$vcyNxMt0RoYGqVdJpf1kuKHruh8;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingView$vcyNxMt0RoYGqVdJpf1kuKHruh8;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;->onHideSubQuickSettingRequested()V

    return-void
.end method

.method public initialize()V
    .locals 13

    new-instance v6, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$AdapterType;->MAIN:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$AdapterType;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, v6

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$AdapterType;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;)V

    iput-object v6, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->setHasStableIds(Z)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$AdapterType;->SUB:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$AdapterType;

    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v7, v1

    move-object v11, p0

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$AdapterType;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;IZ)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingMainListItemAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingMainListItemAnimator;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$3;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$3;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$4;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v1, p0, v2, v4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$5;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public isSubQuickSettingActive()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$hideSubQuickSetting$0$QuickSettingView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    return-void
.end method

.method public onButtonClick(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mButtonClickListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;->onButtonClick(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)Z

    move-result p0

    return p0
.end method

.method public onButtonTouch(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "event"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mButtonTouchListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;->onButtonTouch(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
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
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mIsResizableMode:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->setOrientation(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v2, v2, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingView$5ZyD-NJwUJTYNG3huRQK9fBOCgM;

    invoke-direct {v3, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingView$5ZyD-NJwUJTYNG3huRQK9fBOCgM;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingView$u-hNfs4k2BfhEHJ0d2kJMdwIBUA;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingView$u-hNfs4k2BfhEHJ0d2kJMdwIBUA;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public refreshItem(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->refreshItem(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->hideSubQuickSetting()V

    :cond_0
    return-void
.end method

.method public refreshItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->refreshItemList(Ljava/util/List;)V

    return-void
.end method

.method public refreshQuickSetting(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandIdList"
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;->access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView$QuickSettingButtonDecoration;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->hideSubQuickSetting()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;->onRefresh(Ljava/util/List;)V

    return-void
.end method

.method public setButtonClickListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonClickListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mButtonClickListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;

    return-void
.end method

.method public setButtonTouchListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonTouchListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mButtonTouchListener:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;

    return-void
.end method

.method public setResizableMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isResizableMode"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mIsResizableMode:Z

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    return-void
.end method

.method public showSubQuickSetting(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemList",
            "selectedItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->refreshItemList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    move v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0702a4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mSubAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->getItemCount()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0702a6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingMainList:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingMainList;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->restartSubQuickSettingTimer()V

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-le p2, v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenQuickSettingBinding;->quickSettingSubList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2
    return-void
.end method

.method public startQuickSettingItemIntroduceAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingView;->mMainAdapter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->startQuickSettingItemIntroduceAnimation(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method
