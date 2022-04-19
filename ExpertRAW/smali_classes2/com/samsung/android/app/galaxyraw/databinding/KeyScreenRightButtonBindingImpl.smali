.class public Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;
.super Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;
.source "KeyScreenRightButtonBindingImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback4:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 5
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

    const/4 v0, 0x1

    aget-object v1, p3, v0

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;)V

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mDirtyFlags:J

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->lensButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    aget-object p1, p3, v2

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->setRootTag(Landroid/view/View;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->invalidateAll()V

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;->onLensButtonClick()V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->lensButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
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
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->requestRebind()V

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

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->notifyPropertyChanged(I)V

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBinding;->requestRebind()V

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
    .locals 1
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

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/databinding/KeyScreenRightButtonBindingImpl;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/rightbutton/RightButtonContract$Presenter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
