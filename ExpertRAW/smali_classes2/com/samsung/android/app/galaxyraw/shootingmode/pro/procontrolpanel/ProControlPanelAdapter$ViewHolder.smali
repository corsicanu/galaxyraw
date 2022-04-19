.class public Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ProControlPanelAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mIsSelected:Z

.field private mIsSlideAnimationRunning:Z

.field private mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "viewBinding"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-string p1, "ProControlPanelAdapter"

    const-string v0, "ViewHolder"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p1, p2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->initialize(Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->updateText(Ljava/lang/String;)V

    return-void
.end method

.method private initialize(Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    const-string v0, "ProControlPanelAdapter"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->getEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->getResourceIdSet()Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->getButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)I

    move-result v3

    const v4, 0x7f070264

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    neg-float v3, v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->getButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600de

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f06002e

    invoke-virtual {v3, v7, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->isDefaultValueState()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->isDefaultValueState()Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_3

    move v7, v8

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemSubText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->isDefaultValueState()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->isDefaultValueState()Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v8

    :cond_5
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->getButtonText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)I

    move-result v3

    const v4, 0x7f07026c

    if-ne v3, v6, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    neg-float v3, v3

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setY(F)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->isSlideAnimationSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->getButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$500(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)I

    move-result v3

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :cond_8
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setY(F)V

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->isSubTextSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemSubText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->getButtonText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    return-void
.end method

.method private updateText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItem:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mIsSelected:Z

    return p0
.end method

.method public synthetic lambda$slideTextAnimation$0$ProControlPanelAdapter$ViewHolder()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mIsSlideAnimationRunning:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mIsSlideAnimationRunning:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ItemClickListener;->onItemClick(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItem:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemButton:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ee66666    # 0.45f

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600de

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06002e

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemSubText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->isDefaultValueState()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->isDefaultValueState()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemSubText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->isDefaultValueState()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->isDefaultValueState()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mIsSelected:Z

    return-void
.end method

.method setSubText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subText"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemSubText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemSubText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mItem:Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;->getResourceIdSet()Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "titleColor",
            "textColor"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemSubText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method slideTextAnimation(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    neg-float v0, v0

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mIsSlideAnimationRunning:Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->this$0:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;->access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b0023

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3f947ae1    # 1.16f

    const v6, 0x3ea3d70a    # 0.32f

    const v7, 0x3fd47ae1    # 1.66f

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    cmpg-float v8, v0, v1

    if-gez v8, :cond_1

    move v9, v0

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemTextWide:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v9, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-gez v8, :cond_2

    move v9, v1

    goto :goto_2

    :cond_2
    move v9, v0

    :goto_2
    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProControlPanelMainItemBinding;->proMainItemSubText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-gez v8, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelAdapter$ViewHolder$S4MzSOQjmDsygd7laWv6IG1nTb4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/-$$Lambda$ProControlPanelAdapter$ViewHolder$S4MzSOQjmDsygd7laWv6IG1nTb4;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
