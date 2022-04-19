.class public Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;
.super Landroid/widget/FrameLayout;
.source "ShootingModeLayerView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager;
.implements Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$View;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShootingModeLayerView"


# instance fields
.field private mBackKeyEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;

.field private mLayerTouchEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

.field private mOrientation:I

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$Presenter;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeBinding;

.field private mViewOrientationEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

.field private mVolumeKeyEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : Start["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShootingModeLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mOrientation:I

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mVolumeKeyEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mBackKeyEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;

    return-object p0
.end method

.method static synthetic lambda$onOrientationChanged$0(ILcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;->onOrientationChanged(I)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeBinding;->shootingModeLayerMain:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->removeAllViews()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeBinding;->shootingModeLayerMain:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mViewOrientationEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mLayerTouchEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeBinding;->shootingModeLayerMain:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->removeAllViews()V

    return-void
.end method

.method public getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView$2;-><init>(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;)V

    return-object v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mLayerTouchEventListener:Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/listener/LayerTouchEventListener;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mOrientation:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mViewOrientationEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/-$$Lambda$ShootingModeLayerView$EVATElmqtNJRlmAi1ouggxMS0V8;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/-$$Lambda$ShootingModeLayerView$EVATElmqtNJRlmAi1ouggxMS0V8;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setBackKeyEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mBackKeyEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$BackKeyEventListener;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/BaseContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "presenter"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerContract$Presenter;

    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : End["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShootingModeLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerShootingModeBinding;

    return-void
.end method

.method public setVolumeKeyEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/shootingmode/ShootingModeLayerView;->mVolumeKeyEventListener:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;

    return-void
.end method
