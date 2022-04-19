.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$cOyUZsKWNmt5kGXgtyZkwno-eqo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$cOyUZsKWNmt5kGXgtyZkwno-eqo;->f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$cOyUZsKWNmt5kGXgtyZkwno-eqo;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$cOyUZsKWNmt5kGXgtyZkwno-eqo;->f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$cOyUZsKWNmt5kGXgtyZkwno-eqo;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->lambda$refreshLayout$4$PopupLayerView(Ljava/util/ArrayList;)V

    return-void
.end method
