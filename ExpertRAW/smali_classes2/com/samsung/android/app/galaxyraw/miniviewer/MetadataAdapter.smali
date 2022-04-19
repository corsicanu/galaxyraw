.class public Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MetadataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMetadataListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "metadataListItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;->mMetadataListItems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$0(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;->access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;->description1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;->access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;->description1:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$1(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;->access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;->description2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;->access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;->description2:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;->mMetadataListItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;->mMetadataListItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;->onBindViewHolder(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;I)V
    .locals 1
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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;->mMetadataListItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;->access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;->itemImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->getIcon()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;->access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;->heading:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->getHeading()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;->access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;->description1:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;->access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;->description2:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->getDescription1()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataAdapter$pV1ZBusRhubpiIFV3oUR6okfjuA;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataAdapter$pV1ZBusRhubpiIFV3oUR6okfjuA;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->getDescription2()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataAdapter$jVTCXFfO4niYlqgMu2r1CHjqGms;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$MetadataAdapter$jVTCXFfO4niYlqgMu2r1CHjqGms;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
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
            "parent",
            "viewType"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/galaxyraw/databinding/MetadataListItemBinding;)V

    return-object p1
.end method
