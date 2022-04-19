.class public Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;
.super Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;
.source "LayerShootingModeOverlayTimerBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    sget-object v0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
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

    const/4 v0, 0x0

    aget-object v3, p2, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x3

    aget-object p3, p3, v0

    move-object v8, p3

    check-cast v8, Landroid/widget/ImageSwitcher;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/airbnb/lottie/LottieAnimationView;Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageSwitcher;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->mDirtyFlags:J

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->progressPie:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->progressWheel:Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/layer/shootingmodeoverlay/timer/TimerProgressWheel;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->progressWheelGuideLine:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/Guideline;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->timerNumber:Landroid/widget/ImageSwitcher;

    invoke-virtual {p1, p3}, Landroid/widget/ImageSwitcher;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->setRootTag([Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->mDirtyFlags:J

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
    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeOverlayTimerBindingImpl;->requestRebind()V

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
