.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$2Q4tK80xYq6ZNXtO3bTqCUmI3Oc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$2Q4tK80xYq6ZNXtO3bTqCUmI3Oc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$2Q4tK80xYq6ZNXtO3bTqCUmI3Oc;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$2Q4tK80xYq6ZNXtO3bTqCUmI3Oc;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$2Q4tK80xYq6ZNXtO3bTqCUmI3Oc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$2Q4tK80xYq6ZNXtO3bTqCUmI3Oc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

    check-cast p2, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->lambda$clear$1(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;)V

    return-void
.end method
