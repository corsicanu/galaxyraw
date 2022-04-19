.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$PhKAJIbpl9j7OAnwkSRhkoxmVhk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$PhKAJIbpl9j7OAnwkSRhkoxmVhk;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$PhKAJIbpl9j7OAnwkSRhkoxmVhk;->f$0:Ljava/util/List;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->lambda$collectBasket$2(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)V

    return-void
.end method
