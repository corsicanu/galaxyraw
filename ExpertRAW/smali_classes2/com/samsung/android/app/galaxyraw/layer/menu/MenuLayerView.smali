.class public Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;
.super Landroid/widget/FrameLayout;
.source "MenuLayerView.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager;
.implements Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuLayerView"


# instance fields
.field private mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

.field private mLastOrientation:I

.field private final mMenus:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;",
            "Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;


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

    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

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

    const-string p1, "MenuLayerView"

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

    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

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

    const-string p1, "MenuLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;)Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;)Ljava/util/EnumMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->handleHideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->handleShowMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method

.method private clearInvisibleMenus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$knpNcjtO3zIkvpPh3hvtGsTOCNU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$knpNcjtO3zIkvpPh3hvtGsTOCNU;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;)V

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private createMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;->createMenuView(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->initialize()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->clear()V

    :goto_0
    return-void
.end method

.method private handleHideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHideMenu : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is already hided."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MenuLayerView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;->hideFinished()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;->menuLayerMain:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;->hideFinished()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;->onHideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method

.method private handleShowMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->createMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;->menuLayerMain:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;->showFinished(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;->onShowMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$clear$0(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$5QEPYSTATG3tV9qQ9EJMuyAKuF4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$5QEPYSTATG3tV9qQ9EJMuyAKuF4;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public collapseMenu()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;->collapseMenu()V

    return-void
.end method

.method public getKeyEventListener()Lcom/samsung/android/app/galaxyraw/layer/listener/LayerKeyEventListenerAdapter;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;)V

    return-object v0
.end method

.method public hideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->hideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;Landroid/animation/Animator;)V

    return-void
.end method

.method public hideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menuId",
            "animation"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;->hideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method

.method public hideVisibleMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;->getCurrentShowingId()Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->handleHideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method

.method public initialize()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    return-void
.end method

.method public isActive(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;->exists(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$clearInvisibleMenus$1$MenuLayerView(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;->exists(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;->clearMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mLastOrientation:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;->menuLayerMain:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;->menuLayerMain:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager$ViewOrientationEventListener;->onOrientationChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->clearInvisibleMenus()V

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

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presenter"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;

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

    const-string v1, "MenuLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/LayerMenuBinding;

    return-void
.end method

.method public showMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->mHandler:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView$MenuHandler;->showMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method
