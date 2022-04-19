.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZoomLensListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCommandArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/command/MenuCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDefaultValue:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V
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
            "context",
            "itemList",
            "zoomCategory",
            "commandArray",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/command/MenuCommand;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mCommandArray:Landroid/util/SparseArray;

    iput-object p5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mDefaultValue:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private isSelectedChild(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ZoomManager$ZoomCategory:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_0

    new-instance v0, Landroid/util/Range;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    add-int/2addr p1, v2

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mDefaultValue:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;->getLevelValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mDefaultValue:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;->getLevelValue()I

    move-result p0

    if-gt p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mDefaultValue:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;->getLensValue()I

    move-result p0

    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mDefaultValue:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;->getFovValue()I

    move-result p0

    if-ne p1, p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->ordinal()I

    move-result p0

    return p0
.end method

.method public getMenuCommand(I)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mCommandArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    return-object p0
.end method

.method public getValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewHolder",
            "position"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->onBindViewHolder(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mOrientation:I

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->setRotation(F)V

    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mDefaultValue:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->isSelectedChild(I)Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensButton;->initialize(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ILcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "position"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "position"
        }
    .end annotation

    sget-object p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ZoomManager$ZoomCategory:[I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00f3

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00f2

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00f1

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mClickListener:Landroid/view/View$OnClickListener;

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

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mOrientation:I

    return-void
.end method

.method setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public updateData(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/List;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zoomCategory",
            "itemList",
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

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mItemList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mZoomCategory:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mCommandArray:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;->mDefaultValue:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    return-void
.end method
