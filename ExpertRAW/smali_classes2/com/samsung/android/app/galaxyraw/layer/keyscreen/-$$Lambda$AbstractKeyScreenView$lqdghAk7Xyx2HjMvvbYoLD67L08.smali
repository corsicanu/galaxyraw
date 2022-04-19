.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$lqdghAk7Xyx2HjMvvbYoLD67L08;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$lqdghAk7Xyx2HjMvvbYoLD67L08;->f$0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/-$$Lambda$AbstractKeyScreenView$lqdghAk7Xyx2HjMvvbYoLD67L08;->f$0:Landroid/graphics/Rect;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/AbstractKeyScreenView;->lambda$getViewVisibleRect$2(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method
