.class public Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;
.super Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;
.source "ShootingModeProProSliderContainerBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0320

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0055

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root",
            "bindings"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    const/4 v0, 0x0

    aget-object v2, v14, v0

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    const/16 v1, 0xb

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    const/4 v1, 0x6

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Landroid/view/View;

    const/16 v1, 0x9

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/ImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;Landroid/widget/Button;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;Landroid/widget/Button;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;Landroid/widget/ImageView;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->mDirtyFlags:J

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->activeTextAreaGroup:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->activeTickMark:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->apertureButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->exposureSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->isoSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->manualAutoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->manualFocusSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->multiAfButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->shutterSpeedSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->wbSlider:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/widget/ProHorizontalScrollView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->setRootTag([Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/ShootingModeProProSliderContainerBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFieldId",
            "object",
            "fieldId"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variableId",
            "variable"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
