.class public Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;
.super Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;
.source "LayerPreviewOverlayBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0301

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a008b

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0088

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0112

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01cd

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01f1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0221

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a012b

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0172

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0173

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0170

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0171

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0149

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0166

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a005c

    const/16 v2, 0xf

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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-static {p1, p2, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 20
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

    const/16 v4, 0xf

    aget-object v4, p3, v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    check-cast v5, Landroid/view/View;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/4 v7, 0x4

    aget-object v7, p3, v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;

    const/16 v8, 0x8

    aget-object v8, p3, v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v9, 0xd

    aget-object v9, p3, v9

    check-cast v9, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;

    const/16 v10, 0xe

    aget-object v10, p3, v10

    check-cast v10, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;

    const/16 v11, 0xb

    aget-object v11, p3, v11

    check-cast v11, Landroid/view/View;

    const/16 v12, 0xc

    aget-object v12, p3, v12

    check-cast v12, Landroid/view/View;

    const/16 v13, 0x9

    aget-object v13, p3, v13

    check-cast v13, Landroid/view/View;

    const/16 v14, 0xa

    aget-object v14, p3, v14

    check-cast v14, Landroid/view/View;

    const/4 v15, 0x5

    aget-object v15, p3, v15

    check-cast v15, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;

    const/16 v16, 0x6

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ImageView;

    const/16 v17, 0x7

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/ImageView;

    const/16 v18, 0x1

    aget-object v18, p3, v18

    check-cast v18, Landroidx/constraintlayout/widget/Guideline;

    const/16 v19, 0x0

    move/from16 v3, v19

    invoke-direct/range {v0 .. v18}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/AeAfView;Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/FaceRectView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/Inclinometer;Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/LevelMeter;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/MultiAfView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->mDirtyFlags:J

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

    iput-object v0, v2, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->mboundView0:Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/PreviewOverlayLayerView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->setRootTag(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->mDirtyFlags:J

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
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerPreviewOverlayBindingImpl;->requestRebind()V

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
