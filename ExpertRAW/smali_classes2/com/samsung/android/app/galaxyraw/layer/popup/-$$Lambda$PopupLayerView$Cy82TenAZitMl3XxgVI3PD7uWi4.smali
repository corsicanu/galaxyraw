.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$Cy82TenAZitMl3XxgVI3PD7uWi4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$Cy82TenAZitMl3XxgVI3PD7uWi4;->f$0:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupLayerView$Cy82TenAZitMl3XxgVI3PD7uWi4;->f$0:Landroid/view/MotionEvent;

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    check-cast p2, Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupLayerView;->lambda$onTouch$2(Landroid/view/MotionEvent;Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Lcom/samsung/android/app/galaxyraw/layer/popup/abstraction/AbstractPopupView;)V

    return-void
.end method
