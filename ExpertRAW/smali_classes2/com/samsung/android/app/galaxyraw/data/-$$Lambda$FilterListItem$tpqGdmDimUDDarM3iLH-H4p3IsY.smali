.class public final synthetic Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$tpqGdmDimUDDarM3iLH-H4p3IsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$tpqGdmDimUDDarM3iLH-H4p3IsY;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/data/-$$Lambda$FilterListItem$tpqGdmDimUDDarM3iLH-H4p3IsY;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/data/FilterListItem;->lambda$getName$4(Ljava/util/concurrent/atomic/AtomicReference;Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$FilterResourceIdSet;)V

    return-void
.end method
