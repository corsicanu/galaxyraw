.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ZoomLensListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;
    }
.end annotation


# static fields
.field private static final UNSET_VALUE:I = -0x1


# instance fields
.field private mContentsItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;

.field private mDarkMode:Z

.field private mInitialized:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

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

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic lambda$setButtonSelectionStatus$3(ILcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;)V
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->setText(I)V

    return-void
.end method

.method static synthetic lambda$updateData$6(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/List;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;)V
    .locals 0

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->updateData(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/List;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V

    invoke-virtual {p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$updateSelectedButtonText$7(ILcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;)V
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->setText(I)V

    return-void
.end method

.method private needItemDecoration(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomCategory"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->FOV:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->LENS:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    if-ne p1, p0, :cond_0

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

.method private updateContentDescription(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentTitleId"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTtsHelper;->getTtsString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCommandId(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTtsHelper;->getTtsString(Landroid/content/Context;ILcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeScroll()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->requestLayout()V

    return-void
.end method

.method public findNextButtonIndex(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne v0, p0, :cond_1

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public findNextButtonIndexUsingZoomValue(II)I
    .locals 5
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

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    const v4, 0x7fffffff

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildValue(Landroid/view/View;)I

    move-result v4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildValue(Landroid/view/View;)I

    move-result v1

    if-ge v1, p2, :cond_3

    if-ge p2, v4, :cond_3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v3

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result p0

    if-ge v0, p0, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    return v2
.end method

.method public getAnimationDuration(II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentZoomLevel",
            "targetZoomLevel"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    new-instance v0, Landroid/util/Range;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3e8

    if-ge p1, p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildValue(Landroid/view/View;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0052

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0053

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getChildCommandId(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p0

    return-object p0
.end method

.method public getChildMenuCommand(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->getMenuCommand(I)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object p0

    return-object p0
.end method

.method public getChildValue(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->getValue(I)I

    move-result p0

    return p0
.end method

.method public getLensButtonVisibleRect(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Landroid/graphics/Rect;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lensCommandId"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_ZOOM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    return-object v0
.end method

.method public getPrefixName(I)Ljava/lang/Integer;
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
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensNameButton;->getPrefixName()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mInitialized:Z

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public isDarkMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mDarkMode:Z

    return p0
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mInitialized:Z

    return p0
.end method

.method public synthetic lambda$makeAdapter$0$ZoomLensListView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$makeAdapter$1$ZoomLensListView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$makeAdapter$2$ZoomLensListView(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mContentsItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;

    return-void
.end method

.method public synthetic lambda$setOrientation$4$ZoomLensListView(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->setOrientation(I)V

    return-void
.end method

.method public synthetic lambda$updateData$5$ZoomLensListView(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mContentsItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;

    return-void
.end method

.method public makeAdapter(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/List;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "buttonList",
            "commandArray",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/command/MenuCommand;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;",
            ")V"
        }
    .end annotation

    new-instance v6, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V

    const/4 p2, 0x1

    invoke-virtual {v6, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->setHasStableIds(Z)V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$zJ7RULmIvVqwXoWczKh4dM2HhNM;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$zJ7RULmIvVqwXoWczKh4dM2HhNM;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;)V

    invoke-virtual {v6, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$yGiwpFKAOE2uSss6zLMv_GURa3o;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$yGiwpFKAOE2uSss6zLMv_GURa3o;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;)V

    invoke-virtual {v6, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mOrientation:I

    invoke-virtual {v6, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->setOrientation(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mContentsItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$A7CgeES-7tv955-qqTV7uFxiHO4;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$A7CgeES-7tv955-qqTV7uFxiHO4;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->needItemDecoration(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mContentsItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
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

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setButtonSelectionStatus(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildValue(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x1

    if-nez v4, :cond_2

    const v4, 0x7fffffff

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildValue(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v4, v6

    :goto_1
    if-gt v5, v4, :cond_5

    new-instance v7, Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v7, v8, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    instance-of v2, v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;

    if-eqz v2, :cond_3

    invoke-static {v3}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$gc2Gr2AstEQBHsU9_Knx1pKL-as;

    invoke-direct {v4, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$gc2Gr2AstEQBHsU9_Knx1pKL-as;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCommandId(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    instance-of v4, v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;->zoomButton:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;->setText(I)V

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLevelButtonSelectionStatus start value is bigger than end value. startValue: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", endValue: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-eqz v2, :cond_7

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->updateContentDescription(I)V

    :cond_7
    return-void
.end method

.method public setButtonTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setDarkMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "darkMode"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mDarkMode:Z

    return-void
.end method

.method public setLensNameAndLevelButtonSelectionStatus(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildValue(Landroid/view/View;)I

    move-result v4

    if-ne v4, p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCommandId(Landroid/view/View;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->updateContentDescription(I)V

    :cond_2
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$sUo8-6TB6h4ryjgMbtHdkMcXcTA;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$sUo8-6TB6h4ryjgMbtHdkMcXcTA;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateData(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/List;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "buttonList",
            "commandArray",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/command/MenuCommand;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mContentsItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$pLG7N_AyBEn9MxV2GpTnrWIHQIE;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$pLG7N_AyBEn9MxV2GpTnrWIHQIE;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->needItemDecoration(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->mContentsItemDecoration:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView$ContentsItemDecoration;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/List;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateSelectedButtonText(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensTextButton;

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/databinding/ZoomLensTextButtonBinding;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$6VlnKHBgfA6BANLRdh2YFG6NP0s;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$6VlnKHBgfA6BANLRdh2YFG6NP0s;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
