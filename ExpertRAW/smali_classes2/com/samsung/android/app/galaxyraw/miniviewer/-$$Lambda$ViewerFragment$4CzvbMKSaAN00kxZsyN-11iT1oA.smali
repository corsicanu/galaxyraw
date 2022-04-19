.class public final synthetic Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$4CzvbMKSaAN00kxZsyN-11iT1oA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$4CzvbMKSaAN00kxZsyN-11iT1oA;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$4CzvbMKSaAN00kxZsyN-11iT1oA;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    check-cast p1, Landroid/database/ContentObserver;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->lambda$enableContentObserver$8$ViewerFragment(Landroid/database/ContentObserver;)V

    return-void
.end method
