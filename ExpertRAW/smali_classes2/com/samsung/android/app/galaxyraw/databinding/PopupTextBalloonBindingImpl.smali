.class public Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;
.super Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;
.source "PopupTextBalloonBindingImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback1:Landroid/view/View$OnClickListener;

.field private final mCallback2:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a02e3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00d9

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0093

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a022e

    const/4 v2, 0x6

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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14
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

    move-object v11, p0

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v12, 0x1

    aget-object v0, p3, v12

    move-object v6, v0

    check-cast v6, Landroid/widget/RadioButton;

    const/4 v13, 0x2

    aget-object v0, p3, v13

    move-object v7, v0

    check-cast v7, Landroid/widget/RadioButton;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RadioGroup;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-wide/16 v0, -0x1

    iput-wide v0, v11, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mDirtyFlags:J

    iget-object v0, v11, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->radioButton1:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->radioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->textBalloonViewGroup:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->setRootTag(Landroid/view/View;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v12}, Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v11, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v13}, Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v11, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2
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

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    if-eqz p0, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_4

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;->onRadioButton2Click()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    if-eqz p0, :cond_3

    move p2, v0

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;->onRadioButton1Click()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->radioButton1:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->radioButton2:Landroid/widget/RadioButton;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->requestRebind()V

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

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->notifyPropertyChanged(I)V

    invoke-super {p0}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBinding;->requestRebind()V

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

    check-cast p2, Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/databinding/PopupTextBalloonBindingImpl;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/popup/textballoon/TextBalloonContract$Presenter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
