.class Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$1;
.super Ljava/util/EnumMap;
.source "MenuLayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;",
        "Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "keyType"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;->LENS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$1$bhxoszua9YY0e3cPiyg8j_hUeqY;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerPresenter$1$bhxoszua9YY0e3cPiyg8j_hUeqY;-><init>(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$MenuLayerPresenter$1(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/Engine;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$1;->this$0:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;

    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;->access$000(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;)Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerPresenter$Menu;

    move-result-object p0

    return-object p0
.end method
