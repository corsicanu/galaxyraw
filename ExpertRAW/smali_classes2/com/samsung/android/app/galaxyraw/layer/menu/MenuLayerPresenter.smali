.class public Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;
.super Ljava/lang/Object;
.source "MenuLayerPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;,
        Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuLayerPresenter"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private final mMenuBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;",
            "Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;",
            "Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "engine",
            "view"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$1;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuBuilderMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    check-cast p3, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p0, p3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->makeLensTabMenu(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$clear$1(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->access$100(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->clear()V

    return-void
.end method

.method private makeLensTabMenu(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "menuId"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuPresenter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/lenstabmenu/LensTabMenuView;->setPresenter(Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuContract$Presenter;)V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$1;)V

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$C6Nw89Y5W_bPXhTyJQXOIwRKaVk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$C6Nw89Y5W_bPXhTyJQXOIwRKaVk;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$2Q4tK80xYq6ZNXtO3bTqCUmI3Oc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$2Q4tK80xYq6ZNXtO3bTqCUmI3Oc;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuBuilderMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearMenu : menuId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuLayerPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->access$100(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->access$200(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;->clear()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public createMenuView(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuBuilderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Builder;->build(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid menu ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->access$200(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$clear$0$MenuLayerPresenter(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onHideMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->access$100(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->stop()V

    return-void
.end method

.method public onShowMenu(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mMenuMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->access$100(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;->start()V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerContract$View;->hideVisibleMenu()V

    return-void
.end method
