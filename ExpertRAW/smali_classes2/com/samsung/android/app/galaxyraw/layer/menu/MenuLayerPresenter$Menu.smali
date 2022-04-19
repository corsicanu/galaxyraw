.class Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;
.super Ljava/lang/Object;
.source "MenuLayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Menu"
.end annotation


# instance fields
.field private mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;

.field private mView:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "presenter"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->getPresenter()Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;)Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->getView()Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    move-result-object p0

    return-object p0
.end method

.method private getPresenter()Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->mPresenter:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuPresenter;

    return-object p0
.end method

.method private getView()Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;->mView:Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    return-object p0
.end method
