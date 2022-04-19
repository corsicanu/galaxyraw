.class public Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;
.super Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;
.source "LayerKeyScreenBindingImpl.java"


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

    sput-object v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0301

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a008b

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0226

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a014a

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0333

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a027d

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01b3

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0273

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a027c

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0274

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0087

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00a2

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0161

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00a5

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0241

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0219

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0218

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0216

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0289

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    invoke-static {p1, p2, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 25
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

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0xb

    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const/4 v5, 0x2

    aget-object v5, p3, v5

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    const/16 v6, 0xc

    aget-object v6, p3, v6

    check-cast v6, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v7, 0xe

    aget-object v7, p3, v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;

    const/4 v8, 0x4

    aget-object v8, p3, v8

    check-cast v8, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;

    const/4 v9, 0x0

    aget-object v9, p3, v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v10, 0xd

    aget-object v10, p3, v10

    check-cast v10, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    const/4 v11, 0x7

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/TextView;

    const/16 v12, 0x12

    aget-object v12, p3, v12

    check-cast v12, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v13, 0x11

    aget-object v13, p3, v13

    check-cast v13, Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;

    const/16 v14, 0x10

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/ImageView;

    new-instance v15, Landroidx/databinding/ViewStubProxy;

    move-object/from16 p1, v15

    const/16 v16, 0x3

    aget-object v16, p3, v16

    move-object/from16 v3, v16

    check-cast v3, Landroid/view/ViewStub;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/FrameLayout;

    const/16 v0, 0x13

    aget-object v0, p3, v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object/from16 v22, v0

    check-cast v22, Landroidx/constraintlayout/widget/Guideline;

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v23, v0

    const/4 v3, 0x5

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v0, v24

    invoke-direct/range {v0 .. v23}, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/Guideline;Lcom/airbnb/lottie/LottieAnimationView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/centerbutton/CenterButtonView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/indicator/IndicatorView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;Lcom/samsung/android/app/galaxyraw/widget/ProgressCircle;Landroid/widget/ImageView;Landroidx/databinding/ViewStubProxy;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonView;Landroid/widget/ImageView;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeEditButton;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListView;Landroid/widget/FrameLayout;Lcom/samsung/android/app/galaxyraw/widget/ShutterProgressWheel;Landroidx/constraintlayout/widget/Guideline;Landroidx/databinding/ViewStubProxy;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->mDirtyFlags:J

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->keyScreenLayerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->quickSettingStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->zoomStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->setRootTag(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->quickSettingStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->quickSettingStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->zoomStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->zoomStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {p0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerKeyScreenBindingImpl;->requestRebind()V

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
