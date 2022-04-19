.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$knpNcjtO3zIkvpPh3hvtGsTOCNU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$knpNcjtO3zIkvpPh3hvtGsTOCNU;->f$0:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/menu/-$$Lambda$MenuLayerView$knpNcjtO3zIkvpPh3hvtGsTOCNU;->f$0:Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;

    check-cast p2, Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/menu/MenuLayerView;->lambda$clearInvisibleMenus$1$MenuLayerView(Lcom/samsung/android/app/galaxyraw/interfaces/MenuLayerManager$MenuId;Lcom/samsung/android/app/galaxyraw/layer/menu/abstraction/AbstractMenuView;)V

    return-void
.end method
