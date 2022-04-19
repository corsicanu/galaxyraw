.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$yFzzzemo9ZJZe6lSm0PTpKzeulk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$yFzzzemo9ZJZe6lSm0PTpKzeulk;->f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$yFzzzemo9ZJZe6lSm0PTpKzeulk;->f$0:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    check-cast p2, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->lambda$hideAllPopup$1$PopupLayerView(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;)V

    return-void
.end method
