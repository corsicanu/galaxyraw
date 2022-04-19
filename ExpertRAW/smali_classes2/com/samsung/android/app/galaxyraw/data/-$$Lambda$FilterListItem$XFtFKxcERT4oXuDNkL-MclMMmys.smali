.class public final synthetic Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$XFtFKxcERT4oXuDNkL-MclMMmys;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$XFtFKxcERT4oXuDNkL-MclMMmys;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$XFtFKxcERT4oXuDNkL-MclMMmys;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->lambda$getFilterDBId$1(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V

    return-void
.end method
