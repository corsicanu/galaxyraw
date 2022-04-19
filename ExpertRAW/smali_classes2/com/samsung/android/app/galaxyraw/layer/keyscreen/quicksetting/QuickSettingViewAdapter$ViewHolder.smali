.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QuickSettingViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mBadge:Landroid/widget/ImageView;

.field private mButton:Landroid/widget/ImageButton;

.field private mContainer:Landroid/view/View;

.field private final mDrawableCacheForOrientation:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawableId:I

.field private mImageLevel:I

.field private mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableCacheForOrientation:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mContainer:Landroid/view/View;

    const p1, 0x7f0a0223

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a0222

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mBadge:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;Landroid/view/View;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableId:I

    return p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableId:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mImageLevel:I

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mImageLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableCacheForOrientation:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->setImageResource(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->setFocusedByDefault(Z)V

    return-void
.end method

.method private setBadgeVisibility(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "badgeActivated"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mBadge:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->access$1000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->access$1000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    :goto_0
    return-void
.end method

.method private setFocusedByDefault(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFocusedByDefault"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setFocusedByDefault(Z)V

    return-void
.end method

.method private setImageLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mImageLevel:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageLevel(I)V

    return-void
.end method

.method private setImageResource(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resId",
            "isLandscapeDrawableSupported"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableId:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableCacheForOrientation:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableCacheForOrientation:Landroid/util/SparseArray;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->access$1100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;)I

    move-result p2

    add-int/lit16 p2, p2, 0xb4

    rem-int/lit16 p2, p2, 0xb4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method private updateAccessibilityNodeInfo(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "objectTagString"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private updateContentsDescription(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDescription"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->access$800(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;->onButtonClick(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)Z

    return-void
.end method

.method onOrientationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->isLandscapeDrawableSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableCacheForOrientation:Landroid/util/SparseArray;

    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v1, v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableCacheForOrientation:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mDrawableCacheForOrientation:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mContainer:Landroid/view/View;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

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
            "view",
            "event"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->access$900(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-interface {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;->onButtonTouch(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method setViewItem(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->setCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getDrawableResId()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->isLandscapeDrawableSupported()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->setImageResource(IZ)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getImageLevel()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->setImageLevel(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->access$1000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->updateContentsDescription(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;->access$1000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingActTagMap;->getActTag(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->updateAccessibilityNodeInfo(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->isBadgeActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingViewAdapter$ViewHolder;->setBadgeVisibility(Z)V

    return-void
.end method
