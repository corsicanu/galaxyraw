.class public Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;
.super Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;
.source "KeyScreenLeftButtonBindingImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback3:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a022a

    const/4 v2, 0x3

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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9
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

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageButton;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageButton;

    const/4 v1, 0x3

    aget-object p3, p3, v1

    move-object v8, p3

    check-cast v8, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/FrameLayout;)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mDirtyFlags:J

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->button:Landroid/widget/ImageButton;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->leftButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->quickViewButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->setRootTag(Landroid/view/View;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceId",
            "callbackArg_0"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;->onQuickViewButtonClick()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mRecordSnapshotSupported:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    const-wide/16 v5, 0x5

    and-long v7, v0, v5

    cmp-long v7, v7, v2

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v7, :cond_1

    if-eqz v4, :cond_0

    const-wide/16 v7, 0x10

    or-long/2addr v0, v7

    const-wide/16 v7, 0x40

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x8

    or-long/2addr v0, v7

    const-wide/16 v7, 0x20

    :goto_0
    or-long/2addr v0, v7

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->button:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_2

    const v8, 0x7f12021b

    goto :goto_1

    :cond_2
    const v8, 0x7f12037e

    :goto_1
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f08069f

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f0806a0

    :goto_2
    invoke-static {v4, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v8

    :goto_3
    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->getBuildSdkInt()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_5

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->button:Landroid/widget/ImageButton;

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->button:Landroid/widget/ImageButton;

    invoke-static {v5, v4}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_6
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->quickViewButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
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
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->requestRebind()V

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

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->notifyPropertyChanged(I)V

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setRecordSnapshotSupported(Ljava/lang/Boolean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "RecordSnapshotSupported"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mRecordSnapshotSupported:Ljava/lang/Boolean;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->notifyPropertyChanged(I)V

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
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

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->setRecordSnapshotSupported(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    check-cast p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenLeftButtonBindingImpl;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonContract$Presenter;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
