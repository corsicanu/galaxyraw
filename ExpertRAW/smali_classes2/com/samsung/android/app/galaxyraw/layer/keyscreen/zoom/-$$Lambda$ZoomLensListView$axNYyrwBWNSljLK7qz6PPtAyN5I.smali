.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/util/SparseArray;

.field public final synthetic f$3:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/List;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;->f$2:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;->f$3:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;->f$0:Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;->f$2:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomLensListView$axNYyrwBWNSljLK7qz6PPtAyN5I;->f$3:Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListView;->lambda$updateData$6(Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager$ZoomCategory;Ljava/util/List;Landroid/util/SparseArray;Lcom/samsung/android/app/galaxyraw/data/ZoomDefaultValue;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomLensListAdapter;)V

    return-void
.end method
