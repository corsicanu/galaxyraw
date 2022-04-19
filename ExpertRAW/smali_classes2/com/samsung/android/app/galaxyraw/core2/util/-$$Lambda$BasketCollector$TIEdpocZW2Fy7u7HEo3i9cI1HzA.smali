.class public final synthetic Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$TIEdpocZW2Fy7u7HEo3i9cI1HzA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$TIEdpocZW2Fy7u7HEo3i9cI1HzA;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/-$$Lambda$BasketCollector$TIEdpocZW2Fy7u7HEo3i9cI1HzA;->f$0:I

    check-cast p1, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/util/BasketCollector;->lambda$collectItem$3(ILcom/samsung/android/app/galaxyraw/core2/util/BasketCollector$Item;)Z

    move-result p0

    return p0
.end method
