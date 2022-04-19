.class public Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;
.super Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;
.source "LayerMainBindingImpl.java"


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

    sput-object v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a020a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a020b

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0279

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a027b

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0157

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a019b

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a027e

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0203

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0205

    const/16 v2, 0x9

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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15
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

    move-object v14, p0

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    new-instance v6, Landroidx/databinding/ViewStubProxy;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {v6, v0}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    new-instance v8, Landroidx/databinding/ViewStubProxy;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {v8, v0}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;

    new-instance v10, Landroidx/databinding/ViewStubProxy;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {v10, v0}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    new-instance v12, Landroidx/databinding/ViewStubProxy;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {v12, v0}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v13, Landroidx/databinding/ViewStubProxy;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {v13, v0}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/samsung/android/app/galaxyraw/layer/keyscreen/KeyScreenLayerView;Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;Landroidx/databinding/ViewStubProxy;Landroid/view/View;Landroidx/databinding/ViewStubProxy;Lcom/samsung/android/app/galaxyraw/layer/preview/PreviewAnimationLayerView;Landroidx/databinding/ViewStubProxy;Landroid/view/View;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;)V

    const-wide/16 v0, -0x1

    iput-wide v0, v14, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->mDirtyFlags:J

    iget-object v0, v14, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->layerManagerMain:Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/LayerManagerView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->menuLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, p0}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v0, v14, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->popupLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, p0}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v0, v14, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->previewOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, p0}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v0, v14, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->shootingModeLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, p0}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    iget-object v0, v14, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->shootingModeOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, p0}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->setRootTag(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->menuLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->menuLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->popupLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->popupLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->previewOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->previewOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->shootingModeLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->shootingModeLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->shootingModeOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->shootingModeOverlayLayerStub:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {p0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    :cond_4
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
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerMainBindingImpl;->requestRebind()V

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
